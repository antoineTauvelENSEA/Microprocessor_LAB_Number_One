/*
 * task.c
 *
 *  Created on: Apr 23, 2024
 *      Author: antotauv
 */

#include "main.h"
#include "led.h"
#include "button.h"
#include "ssd1315.h"
#include "fonts.h"
#include <stdio.h>
static int globalDelayInMs=200;
static int needDisplayRefresh = 1;

#define MAX_SIZE 24

typedef struct motif_type{
	int size;
	int  * motif;
	char * name;
}MOTIF_TYPE;

int upDownMotif[]={0,128,192,224,240,248,252,254,255,254,252,248,240,224,192,128};
int chenillardUpMotif[]={1,2,4,8,16,32,64,128};
int chenillardDownMotif[]={128,64,32,16,8,4,2,1};

const MOTIF_TYPE upDown={16,upDownMotif,"Up Down"};
const MOTIF_TYPE chenillardUp={8,chenillardUpMotif,"K 2000"};
const MOTIF_TYPE chenillardDown={8,chenillardDownMotif,"K -2000"};

const MOTIF_TYPE* tableau_motif[3]={&upDown, &chenillardUp, &chenillardDown};

static int index_tableau_motif=0;

void taskLED(){
	int numero_motif=(HAL_GetTick()/globalDelayInMs)%(tableau_motif[index_tableau_motif]->size);
	LED_Set_Value_With_Int(tableau_motif[index_tableau_motif]->motif[numero_motif]);
	LED_Update();
}
void taskButton(){
	BUTTON_Update();
	/*printf("direction : U=%d\tD=%d\tL=%d\tR=%d\tC=%d\r\n",BUTTON_Get_Value(UP),BUTTON_Get_Value(DOWN),
			BUTTON_Get_Value(LEFT),BUTTON_Get_Value(RIGHT),BUTTON_Get_Value(CENTER));*/
	if(BUTTON_Get_Pressed(UP)==1){
		printf("Going up \r\n");
		globalDelayInMs+=50;
		needDisplayRefresh=1;
	}
	if(BUTTON_Get_Pressed(DOWN)==1){
			printf("Going down \r\n");
			globalDelayInMs-=50;
			needDisplayRefresh=1;
	}

	if(BUTTON_Get_Pressed(CENTER)==1){
			printf("Change motif\r\n");
			index_tableau_motif=(index_tableau_motif+1)%3;
			needDisplayRefresh=1;
		}
}
void taskScreen(){
	char buffer[16]={0};
	if (needDisplayRefresh==1){
		// snprintf plutot
		sprintf(buffer,"Speed= %d   ",globalDelayInMs);
		ssd1315_Draw_String(0,16,buffer,&Font_7x10);
		sprintf(buffer,"%s      ",tableau_motif[index_tableau_motif]->name);
		ssd1315_Draw_String(0,32,buffer,&Font_7x10);
		ssd1315_Refresh();
	}
	needDisplayRefresh=0;

}
