#ifndef GLOBAL_H
#define GLOBAL_H

// Global Variables
/******************************************************************************/
extern volatile long step_count;
extern volatile int actual_speed;
extern volatile int ticks;
extern volatile unsigned int tick_count;
extern volatile unsigned long debug_ticker;
extern volatile unsigned long DEBUG_TICKS;

// Global Functions
/******************************************************************************/
void print_global_x();

#endif
