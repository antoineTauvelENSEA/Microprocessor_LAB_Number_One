/*
 * button.c
 *
 *  Created on: Apr 23, 2024
 *      Author: antotauv
 */
#include "main.h"
#include "button.h"
static BUTTON joystick[5]={{0,0,BTN_TOP_GPIO_Port,BTN_TOP_Pin},{0,0,BTN_TOPB11_GPIO_Port,BTN_TOPB11_Pin},
		{0,0,BTN_LEFT_GPIO_Port,BTN_LEFT_Pin},{0,0,BTN_RIGHT_GPIO_Port,BTN_RIGHT_Pin},
		{0,0,BTN_CENTER_GPIO_Port,BTN_CENTER_Pin}};

// Ordre à revoir

int BUTTON_Get_Value(DIRECTION direction){
	return joystick[direction].isOn;
}

int BUTTON_Get_Pressed(DIRECTION direction){
	return joystick[direction].hasBeenPressed;
}

void BUTTON_Update(){
	for (int i=0;i<5;i++){
		int newVal = 1-HAL_GPIO_ReadPin(joystick[i].port,joystick[i].pinNumber);
		joystick[i].hasBeenPressed=(1-joystick[i].isOn) * newVal;
		joystick[i].isOn = newVal;
	}
}
