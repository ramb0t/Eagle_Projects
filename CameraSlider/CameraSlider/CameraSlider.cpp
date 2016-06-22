/*

 */

#include <Arduino.h>
//#include "A4988.h"
#include <TimerOne.h>
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <Fonts/FreeMono9pt7b.h>

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
#define MICROSTEPS 16

// 2-wire basic config, microstepping is hardwired on the driver
//A4988 stepper(MOTOR_STEPS, DIR, STEP);

bool dirFlag;
bool ledFlag;

byte oldPos = 0;
bool menuSelect = false;
bool speedSelect = false;

const unsigned char PROGMEM logo [] = {
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x6,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x14,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x2e,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x36,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x16,0x7e,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x16,0x7e,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x16,0x42,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x16,0x42,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x16,0x42,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x16,0x66,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x16,0x6c,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x12,0x1a,0x80,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x12,0x1b,0x80,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0xd2,0x6,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x7f,0xf2,0x6c,0x0,0x6,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x60,0xd2,0x69,0x98,0x36,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x60,0x32,0x69,0x98,0x34,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x6f,0xf2,0x68,0xd8,0x34,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x6c,0x2,0x68,0x58,0x34,0x0,0x10,0x0,0x0,0x18,0x0,0x0,0x0,0x10,0x0,0x0,
0x6c,0x2,0x68,0x58,0x34,0x0,0x10,0x0,0x0,0x18,0x0,0x0,0x0,0x10,0x0,0x0,
0x6c,0x2,0x68,0x58,0x34,0x0,0x10,0x0,0x0,0x18,0x0,0x0,0x0,0x0,0x0,0x0,
0x6c,0x2,0x68,0x58,0x34,0x0,0x10,0x0,0x0,0x18,0x0,0x0,0x0,0x0,0x0,0x0,
0x6c,0x2,0x6c,0x58,0x34,0x7f,0x11,0xf8,0x0,0x7e,0x0,0xfe,0x3f,0x10,0x0,0xfc,
0x6c,0x2,0x6c,0x58,0x34,0x7f,0x13,0xfc,0xfe,0x7e,0x7c,0xfe,0x7f,0x93,0xfd,0xfe,
0x6c,0x2,0x6c,0x58,0x34,0x61,0x13,0xc,0x80,0x18,0x40,0x82,0x61,0x93,0x1,0x80,
0x6c,0x2,0x6c,0x58,0x34,0x61,0x13,0xc,0x80,0x18,0x40,0x82,0x61,0x93,0x1,0x80,
0x6c,0x6,0x6c,0x58,0x34,0x7f,0x13,0xfc,0x80,0x18,0x40,0x82,0x61,0x93,0x1,0xfe,
0x6f,0xcc,0x6c,0x48,0x34,0x7f,0x13,0xf8,0x80,0x18,0x40,0x82,0x61,0x93,0x0,0xfe,
0x67,0xdc,0x6c,0x6f,0xf4,0x60,0x13,0x0,0x80,0x18,0x40,0x82,0x61,0x93,0x0,0x6,
0x60,0x18,0x6c,0x30,0x4,0x60,0x13,0x0,0x80,0x18,0x40,0x82,0x61,0x93,0x0,0x6,
0x7f,0xf0,0x7c,0x3f,0xe4,0x7e,0x13,0xf0,0xfe,0x18,0x40,0xfe,0x61,0x93,0xfc,0x7e,
0x3f,0xe0,0x60,0x0,0x24,0x7e,0x13,0xf0,0xfe,0x18,0x40,0xfe,0x61,0x13,0xfc,0x7e,
0x0,0x0,0x0,0x0,0x24,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x24,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x24,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x24,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x24,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x24,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x24,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x24,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0xff,0xe4,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0xff,0xe4,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x4,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x1f,0xfc,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x3f,0xfc,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x70,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x60,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0
};

const int speed_ticks[] = {
-1, 600, 300, 200, 150, 120, 100, 86, 75, 67, 60, 55, 50, 46, 43};

// directions
#define FORWARD   HIGH
#define BACKWARD  LOW

// buttons code
#define btnRIGHT  0
#define btnUP     1
#define btnDOWN   2
#define btnLEFT   3
#define btnSELECT 4
#define btnNONE   5

// debounce time (milliseconds)
#define DEBOUNCE_TIME  200

int actual_speed;
int actual_direction;

int ticks;
int tick_count;

int button;
boolean debounce;
int previous_time;

void PinA();
void PinB();
int read_buttons();
void increase_speed();
void decrease_speed();
void change_direction(int new_direction);
void emergency_stop();
void updateLCD();
void timerIsr() ;

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
  pinMode(ENCS, INPUT_PULLUP);

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
  //stepper.setRPM(120);
  //stepper.setMicrostep(MICROSTEPS);


  // OLED Display setup
  // by default, we'll generate the high voltage from the 3.3v line internally! (neat!)
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3D (for the 128x64)
  // init done

  //Set the font
  //display.setFont(&FreeMono9pt7b);

  // Show image buffer on the display hardware.
  // Since the buffer is intialized with an Adafruit splashscreen
  // internally, this will display the splashscreen.
  // Clear the buffer.
  display.clearDisplay();
  display.drawBitmap(0,0,logo,128,64,WHITE);
  display.display();
  delay(2000);

  // Clear the buffer.
  display.clearDisplay();

  // draw a single pixel
  display.drawPixel(10, 10, WHITE);
  // Show the display buffer on the hardware.
  // NOTE: You _must_ call display after making any drawing commands
  // to make them visible on the display hardware!
  display.display();
  delay(2000);
  display.clearDisplay();

    // text display tests
  display.setTextSize(2);
  display.setTextColor(WHITE);
  display.setCursor(0,12);
  display.println("Hello, world!");
  display.display();


  // Tiimer stuffs http://www.lucadentella.it/en/2013/05/30/allegro-a4988-e-arduino-3/
  Timer1.initialize(100);
  Timer1.attachInterrupt(timerIsr);

   // initial values
  actual_speed = 0;
  actual_direction = FORWARD;
  tick_count = 0;
  ticks = -1;
  debounce = false;

  digitalWrite(SDIR, actual_direction);
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

  // check if debounce active
  if(debounce) {
    button = btnNONE;
    if(millis() > previous_time + DEBOUNCE_TIME) debounce = false;
  } else button = read_buttons();

  // if a button is pressed, start debounce time
  if(button != btnNONE) {

    previous_time = millis();
    debounce = true;
  }

  if(button != btnNONE){
    if(menuSelect) menuSelect = false;
    else menuSelect = true;
  }

  if(menuSelect){
    if(speedSelect){
      if(encoderPos - oldPos >0) increase_speed();
      else if(encoderPos - oldPos <0) decrease_speed();
      oldPos = encoderPos;
    }else{
      if(encoderPos%2 == 0)change_direction(FORWARD);
      else change_direction(BACKWARD);
    }
  }else{
    if(encoderPos%2 == 0) speedSelect = true;
    else speedSelect = false;
  }


  // finally update the LCD
  updateLCD();




  //digitalWrite(SSTP, HIGH);
  //delay(1);
  //digitalWrite(SSTP, LOW);
  //delay(1);

//  display.clearDisplay();
//  display.setTextSize(1);
//  display.setCursor(0,12);
//  display.println("Encoder Pos: ");
//  display.setTextSize(2);
//  display.setCursor(0,63);
//  display.println(encoderPos);
//
//  if(digitalRead(ENCS) == 0){
//    display.fillCircle(16, 20, 4, WHITE);
//  }
//  if(digitalRead(BTN1) == 0){
//    display.fillCircle(32, 20, 4, WHITE);
//  }
//
//  display.display();

  /*
   * Moving motor one full revolution using the degree notation
   */
//  stepper.rotate(encoderPos);
//  delay(500);
//
//      if(ledFlag){
//        digitalWrite(LEDG, HIGH);
//        ledFlag = !ledFlag;
//    }else{
//        digitalWrite(LEDG, LOW);
//        ledFlag = !ledFlag;
//    }


  /*
   * Moving motor to original position using steps
   */
  //stepper.move(-200*MICROSTEPS);
//  stepper.rotate(-encoderPos);
//
//  delay(500);
//
////  ticker++;
////  if(ticker > tickerMax){
////    ticker = 0;
//    if(ledFlag){
//        digitalWrite(LEDG, HIGH);
//        ledFlag = !ledFlag;
//    }else{
//        digitalWrite(LEDG, LOW);
//        ledFlag = !ledFlag;
//    }
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

// read buttons connected to a single analog pin
int read_buttons() {
 if(digitalRead(ENCS) == 1) return btnNONE;
 else return btnSELECT;
}

// increase speed if it's below the max (70)
void increase_speed() {

  if(actual_speed < 70) {
    actual_speed += 5;
    tick_count = 0;
    ticks = speed_ticks[actual_speed / 5];
  }
}

// decrease speed if it's above the min (0)
void decrease_speed() {

  if(actual_speed > 0) {
    actual_speed -= 5;
    tick_count = 0;
    ticks = speed_ticks[actual_speed / 5];
  }
}

// change direction if needed
void change_direction(int new_direction) {

  if(actual_direction != new_direction) {
    actual_direction = new_direction;
    digitalWrite(SDIR, actual_direction);
  }
}

// emergency stop: speed 0
void emergency_stop() {
  actual_speed = 0;
  tick_count = 0;
  ticks = speed_ticks[actual_speed / 5];
}

// update LCD
void updateLCD() {
  display.clearDisplay();
  // print first line:
  // Speed: xxxRPM
  display.setCursor(0,1);
  display.print("Speed: ");
  if(menuSelect == false && speedSelect == true){
    display.drawRect(74,0,35,16,WHITE);
    display.println(actual_speed);
  }else if(menuSelect == true && speedSelect == true){
    display.fillRect(74,0,35,16,WHITE);
    display.setTextColor(BLACK);
    display.println(actual_speed);
    display.setTextColor(WHITE);
  }else{
    display.println(actual_speed);
  }



  display.setCursor(0,31);
  display.print("Direction: ");

  if(menuSelect == false && speedSelect == false){
    display.drawRect(5,46,45,16,WHITE);
    if(actual_direction == FORWARD) display.print("-->");
    else display.print("<--");
  }
  else if(menuSelect == true && speedSelect == false){
    display.fillRect(5,46,45,16,WHITE);
    display.setTextColor(BLACK);
    if(actual_direction == FORWARD) display.print("-->");
    else display.print("<--");
    display.setTextColor(WHITE);
  }else{
    if(actual_direction == FORWARD) display.print("-->");
    else display.print("<--");
  }


  // print second line:
  // progress bar [#####         ]
  // 15 speed steps: 0 - 5 - 10 - ... - 70
//  lcd.setCursor(0,1);
//  lcd.print("[");
//
//  for(int i = 1; i <= 14; i++) {
//
//    if(actual_speed > (5 * i) - 1) lcd.write(byte(0));
//    else lcd.print(" ");
//  }
//
//  lcd.print("]");

  if(digitalRead(ENCS) == 0){
    display.fillCircle(119,2,2,WHITE);
  }
  display.print(encoderPos);
  display.display();
}



void timerIsr() {

  if(actual_speed == 0) return;

  tick_count++;

  if(tick_count == ticks) {

    // make a step
    digitalWrite(SSTP, HIGH);
    digitalWrite(SSTP, LOW);

    tick_count = 0;
  }
}
