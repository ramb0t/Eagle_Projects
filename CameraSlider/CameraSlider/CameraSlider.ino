/*

 */

#include <Arduino.h>
#include "A4988.h"
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define LEDR A1 //AVR 24 PC1
#define LEDG A2 //AVR 25 PC2 
#define LEDB A3 //AVR 26 PC3 

#define ENCA 2  //AVR 32 PD2
#define ENCB 3  //AVR 1  PD3
#define ENCS 4  //AVR 2  PD4

#define BTN1 5  //AVR 9  PD5

#define EMAX 6  //AVR 10 PD6
#define EMIN 7  //AVR 11 PD7

#define SDIR 8  //AVR 12 PB0
#define SSTP 9  //AVR 13 PB1
#define SEN 10  //AVR 14 PB2

#define OLED_RESET A0 //AVR 23 PC0
#define SDA A4  //AVR 27 PC4
#define SCL A5  //AVR 28 PC5
Adafruit_SSD1306 display(OLED_RESET);

// http://www.instructables.com/id/Improved-Arduino-Rotary-Encoder-Reading/?ALLSTEPS
static int pinA = ENCA; // Our first hardware interrupt pin is digital pin 2
static int pinB = ENCB; // Our second hardware interrupt pin is digital pin 3
volatile byte aFlag = 0; // let's us know when we're expecting a rising edge on pinA to signal that the encoder has arrived at a detent
volatile byte bFlag = 0; // let's us know when we're expecting a rising edge on pinB to signal that the encoder has arrived at a detent (opposite direction to when aFlag is set)
volatile byte encoderPos = 0; //this variable stores our current value of encoder position. Change to int or uin16_t instead of byte if you want to record a larger range than 0-255
volatile byte oldEncPos = 0; //stores the last encoder position value so we can compare to the current reading and see if it has changed (so we know when to print to the serial monitor)
volatile byte reading = 0; //somewhere to store the direct values we read from our interrupt pins before checking to see if we have moved a whole detent

// Motor steps per revolution. Most steppers are 200 steps or 1.8 degrees/step
#define MOTOR_STEPS 200

// All the wires needed for full functionality
#define DIR SDIR
#define STEP SSTP

// Since microstepping is set externally, make sure this matches the selected mode
// 1=full step, 2=half step etc.
#define MICROSTEPS 8

// 2-wire basic config, microstepping is hardwired on the driver
A4988 stepper(MOTOR_STEPS, DIR, STEP);

bool dirFlag;
bool ledFlag; 

// the setup function runs once when you press reset or power the board
void setup() {
  // initialize LEDS
  pinMode(LEDR, OUTPUT);
  pinMode(LEDG, OUTPUT);
  pinMode(LEDB, OUTPUT);

  // Initialize Encoder
  pinMode(pinA, INPUT_PULLUP); // set pinA as an input, pulled HIGH to the logic voltage (5V or 3.3V for most cases)
  pinMode(pinB, INPUT_PULLUP); // set pinB as an input, pulled HIGH to the logic voltage (5V or 3.3V for most cases)
  attachInterrupt(0,PinA,RISING); // set an interrupt on PinA, looking for a rising edge signal and executing the "PinA" Interrupt Service Routine (below)
  attachInterrupt(1,PinB,RISING); // set an interrupt on PinB, looking for a rising edge signal and executing the "PinB" Interrupt Service Routine (below)

  // Initialize Button
  pinMode(BTN1, INPUT_PULLUP);

  // Initialize Endstops
  pinMode(EMAX, INPUT_PULLUP);
  pinMode(EMIN, INPUT_PULLUP);

  // Initialize Stepper
  pinMode(SDIR, OUTPUT);
  pinMode(SSTP, OUTPUT);
  pinMode(SEN, OUTPUT);

  digitalWrite(SEN, LOW); // motor on 
  digitalWrite(SDIR, LOW); 
  digitalWrite(LEDR, HIGH);
  digitalWrite(LEDB, LOW); 
  dirFlag = false; 


  /*
   * Set target motor RPM.
   * These motors can do up to about 200rpm.
   * Too high will result in a high pitched whine and the motor does not move.
   */
  stepper.setRPM(120);
  stepper.setMicrostep(MICROSTEPS); 
}

void PinA(){
  cli(); //stop interrupts happening before we read pin values
  reading = PIND & 0xC; // read all eight pin values then strip away all but pinA and pinB's values
  if(reading == B00001100 && aFlag) { //check that we have both pins at detent (HIGH) and that we are expecting detent on this pin's rising edge
    encoderPos --; //decrement the encoder's position count
    bFlag = 0; //reset flags for the next turn
    aFlag = 0; //reset flags for the next turn
  }
  else if (reading == B00000100) bFlag = 1; //signal that we're expecting pinB to signal the transition to detent from free rotation
  sei(); //restart interrupts
}

void PinB(){
  cli(); //stop interrupts happening before we read pin values
  reading = PIND & 0xC; //read all eight pin values then strip away all but pinA and pinB's values
  if (reading == B00001100 && bFlag) { //check that we have both pins at detent (HIGH) and that we are expecting detent on this pin's rising edge
    encoderPos ++; //increment the encoder's position count
    bFlag = 0; //reset flags for the next turn
    aFlag = 0; //reset flags for the next turn
  }
  else if (reading == B00001000) aFlag = 1; //signal that we're expecting pinA to signal the transition to detent from free rotation
  sei(); //restart interrupts
}

int ticker = 0; 
#define tickerMax 125

// the loop function runs over and over again forever
void loop() {
  //digitalWrite(SSTP, HIGH);
  //delay(1);             
  //digitalWrite(SSTP, LOW);
  //delay(1); 

  /*
   * Moving motor one full revolution using the degree notation
   */
  stepper.rotate(encoderPos);
  delay(500);

      if(ledFlag){
        digitalWrite(LEDG, HIGH);   
        ledFlag = !ledFlag; 
    }else{
        digitalWrite(LEDG, LOW);   
        ledFlag = !ledFlag;
    }

    
  /*
   * Moving motor to original position using steps
   */
  //stepper.move(-200*MICROSTEPS);
  stepper.rotate(-encoderPos);

  delay(500);
  
//  ticker++; 
//  if(ticker > tickerMax){
//    ticker = 0; 
    if(ledFlag){
        digitalWrite(LEDG, HIGH);   
        ledFlag = !ledFlag; 
    }else{
        digitalWrite(LEDG, LOW);   
        ledFlag = !ledFlag;
    }
  //}
  

//    if(!digitalRead(BTN1)){
//    dirFlag = !dirFlag; // flip 
//    if(dirFlag){
//      digitalWrite(SDIR, HIGH);
//      digitalWrite(LEDR, LOW);
//      digitalWrite(LEDB, HIGH); 
//    }else{
//      digitalWrite(SDIR, LOW);
//      digitalWrite(LEDR, HIGH);
//      digitalWrite(LEDB, LOW); 
//    }
//  }
  
}
