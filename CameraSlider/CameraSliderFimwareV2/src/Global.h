#ifndef GLOBAL_H
#define GLOBAL_H

// Global Variables
/******************************************************************************/

//
extern volatile long step_count;
extern volatile int actual_speed;
extern volatile int ticks;
extern volatile unsigned int tick_count;
extern volatile unsigned long DEBUG_TICKS;
extern volatile bool running;
extern volatile bool MAX_FLAG;
extern volatile bool MIN_FLAG;
extern volatile int status;
extern volatile int actual_direction;

//Encoder vars
extern volatile byte encoderPos;
extern volatile byte oldEncPos;


// Global Functions
/******************************************************************************/
//void print_global_x();

#endif
