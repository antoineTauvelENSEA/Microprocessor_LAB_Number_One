/*
 * RotaryEncoder.h
 *
 *  Created on: Apr 15, 2024
 *      Author: antotauv
 */

#ifndef INC_ROTARYENCODER_H_
#define INC_ROTARYENCODER_H_

typedef enum {IDLE,LEFT,RIGHT,WAITING}ROTARY_FSM_STATE;

typedef struct rotary{
	ROTARY_FSM_STATE fsm_state;
	int callbackNeedExecution;
	void * callback;
}ROTARY;

#endif /* INC_ROTARYENCODER_H_ */
