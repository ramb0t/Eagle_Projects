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
#include "logo.h"
#include "pinDefines.h"
#include "Timer1.h"
#include "Global.h"
#include "Encoder.h"

// Defines
/*****************************************************************************/

// Motor steps per revolution. Most steppers are 200 steps or 1.8 degrees/step
#define MOTOR_STEPS 200

// Since microstepping is set externally, make sure this matches the selected mode
// 1=full step, 2=half step etc.
#define MICROSTEPS 16

// steps / rev
#define STEPS_REV MOTOR_STEPS * MICROSTEPS

// Motor max speed
#define MAX_SPEED  75

//interrupt period in uS
#define INT_PERIOD  10

// Menu states
#define SPEEDMENU 0
#define DIRMENU   1
#define STARTMENU 2
#define MENUEND   2

// Calibration states
#define C_UDEFF   0
#define C_INIT    1
#define C_HMIN    2
#define C_GMAX    3
#define C_HMAX    4
#define C_GMIN    5
#define C_FIN     6
#define C_DONE    7

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
#define DEBOUNCE_TIME 200

#define tickerMax 125

// Class defines
/******************************************************************************/
Adafruit_SSD1306 display(OLED_RESET);

// Variable declarations
/******************************************************************************/

// motor speed -> ticks mapping
const int speed_ticks[] = {
-1, 375, 188, 125, 94, 75, 63, 54, 47, 42, 38, 34, 31, 29, 27, 6};

bool dirFlag;
bool ledFlag;

byte oldPos = 0;
bool menuSelect = false;

// State machine vars
int menu = 0;
volatile int status;

// motor parameters
volatile int actual_speed;
volatile int actual_direction;

// interrupt vars
volatile int ticks;
volatile unsigned long DEBUG_TICKS;
volatile bool running = false;

int button;
bool debounce;
unsigned long previous_time;

volatile bool MAX_FLAG;
volatile bool MIN_FLAG;
volatile long step_count;
long calibration_steps;

int ticker = 0;
int encoder_result = 0;

// Function prototypes
/******************************************************************************/
int read_buttons();
void calibrate();
void increase_speed();
void decrease_speed();
void set_speed(int speed);
void change_direction(int new_direction);
void emergency_stop();
void updateLCD();
void pciSetup(byte pin);

// Functions
/******************************************************************************/

// the setup function runs once when you press reset or power the board
void setup() {
  // initialize LEDS
  pinMode(LEDR, OUTPUT);
  pinMode(LEDG, OUTPUT);
  pinMode(LEDB, OUTPUT);

  // Encoder setup
  Encoder_Init();

  // Initialize Button
  pinMode(BTN1, INPUT_PULLUP);
  pinMode(ENCS, INPUT_PULLUP);

  // Initialize Endstops
  pinMode(EMAX, INPUT_PULLUP);
  pinMode(EMIN, INPUT_PULLUP);

  // Init Endstop interrupts http://playground.arduino.cc/Main/PinChangeInterrupt
  pciSetup(EMAX);
  pciSetup(EMIN);

  // Initialize Stepper
  pinMode(SDIR, OUTPUT);
  pinMode(SSTP, OUTPUT);
  pinMode(SEN, OUTPUT);

  digitalWrite(SEN, LOW); // motor on
  digitalWrite(SDIR, LOW);
  digitalWrite(LEDR, HIGH);
  digitalWrite(LEDB, LOW);
  dirFlag = false;


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

  // // draw a single pixel
  // display.drawPixel(10, 10, WHITE);
  // // Show the display buffer on the hardware.
  // // NOTE: You _must_ call display after making any drawing commands
  // // to make them visible on the display hardware!
  // display.display();
  // delay(2000);
  // display.clearDisplay();

  // text display tests
  display.setTextSize(2);
  display.setTextColor(WHITE);
  display.setCursor(0,12);
  display.println("Hello, world!");
  display.display();


  // Timer stuffs http://www.lucadentella.it/en/2013/05/30/allegro-a4988-e-arduino-3/
  Timer1.initialize(INT_PERIOD); // setup for 10uS interrupts
  Timer1.attachInterrupt(timerIsr); // attach isr function

   // initial values
  actual_speed = 0;
  actual_direction = FORWARD;
  tick_count = 0;
  ticks = -1;
  debounce = false;
  running = false;
  MAX_FLAG = false;
  MIN_FLAG = false;

  digitalWrite(SDIR, actual_direction);

  DEBUG_TICKS = 100000;
  Serial.begin(9600);
  Serial.println("Debug Started:");
  status = C_UDEFF;
  calibrate();
}

// Install Pin change interrupt for a pin, can be called multiple times
void pciSetup(byte pin)
{
    *digitalPinToPCMSK(pin) |= bit (digitalPinToPCMSKbit(pin));  // enable pin
    PCIFR  |= bit (digitalPinToPCICRbit(pin)); // clear any outstanding interrupt
    PCICR  |= bit (digitalPinToPCICRbit(pin)); // enable interrupt for the group
}

// the loop function runs over and over again forever
void loop() {

  // calculate the current encoder move
  if(encoderPos - oldPos >0) encoder_result = 1;
  else if(encoderPos - oldPos <0) encoder_result = -1;
  else encoder_result = 0;
  oldPos = encoderPos;  // reset the relative pos value

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

  // switch menu selected active mode
  if(button != btnNONE){
    if(menuSelect) menuSelect = false;
    else{
      menuSelect = true;
      encoder_result = 0; // reset the encoder result
    }
  }

  if(!menuSelect){// selecting menu
    menu = menu + encoder_result;
    // loop menu around
    if(menu > MENUEND) menu = 0;
    else if(menu < 0) menu = MENUEND;
  }
  else{ // in menu selected mode
    if(menu == SPEEDMENU){ // in speed mode
      if(encoder_result == 1) increase_speed();
      else if(encoder_result == -1) decrease_speed();
    }else if(menu == DIRMENU){ // in direction mode
      if(encoder_result == 1) change_direction(FORWARD);
      else if(encoder_result == -1) change_direction(BACKWARD);
    }else if(menu == STARTMENU){ // start your engines!
      if(!running) running = true;
      else running = false;
      menuSelect = false; // get out the menu
    }
  }


  // finally update the LCD
  updateLCD();
}

//calibrate the extents
void calibrate(){
  // Tell the user what we are doing
  display.clearDisplay();
  display.setTextSize(1);
  display.setCursor(0,1);
  display.print("Calibrating... ");
  display.setTextSize(2);
  display.display();

  // move to min endstop first
  change_direction(BACKWARD);
  set_speed(15);
  running = true;
  status = C_INIT;

  while(!MIN_FLAG){
    // wait
    // TODO: endstop error checking
    set_speed(15);
  }
  status = C_HMIN;
  change_direction(FORWARD);
  while(digitalRead(EMIN)){
    // make a step
    digitalWrite(SSTP, HIGH);
    digitalWrite(SSTP, LOW);
    delay(50);
  }
  delay(1000);

  MAX_FLAG = false;
  MIN_FLAG = false;

  // move to max Endstop
  change_direction(FORWARD);
  set_speed(15);
  running = true;
  status = C_GMAX;

  while(!MAX_FLAG){
    // wait
    // TODO: endstop error checking
    set_speed(15);
  }
  status = C_HMAX;
  display.setCursor(0,21);
  display.print("Max Hit... ");
  display.display();
  // endstop retract:
  change_direction(BACKWARD);
  while(digitalRead(EMAX)){
    // make a step
    digitalWrite(SSTP, HIGH);
    digitalWrite(SSTP, LOW);
    delay(50);
  }
  delay(1000);
  MAX_FLAG = false;
  MIN_FLAG = false;
  status = C_GMIN;
  delay(2000);

  // reset step counter
  step_count = 0;

  // move to minimum Endstop
  change_direction(BACKWARD);
  set_speed(15);
  running = true;

  while(!MIN_FLAG){
    // wait
    // TODO: endstop error checking
  }
  MAX_FLAG = false;
  MIN_FLAG = false;
  change_direction(FORWARD);
  running = false;
  status = C_FIN;
  display.setCursor(0,41);
  display.print("Min Hit... ");
  display.display();

  delay(2000);

  // store steps counted
  calibration_steps = step_count;
  display.clearDisplay();
  display.setCursor(0,1);
  display.print("Steps: ");
  display.setCursor(0,21);
  display.print(calibration_steps);
  display.display();
  status = C_DONE;

  delay(10000);
}

// read buttons connected to a single analog pin
int read_buttons() {
 if(digitalRead(ENCS) == 1) return btnNONE;
 else return btnSELECT;
}

// increase speed if it's below the max (70)
void increase_speed() {

  if(actual_speed < MAX_SPEED) {
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

// Sets speed to a particular value
void set_speed(int speed) {

  if(speed > 0 && speed < MAX_SPEED) {
    actual_speed = speed;
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
  display.setTextSize(2);

  // print first line:
  // Speed: xxxRPM
  display.setCursor(0,1);
  display.print("Speed: ");
  if(menuSelect == true && menu == SPEEDMENU){ // draw filled rect if selected
    display.fillRect(74,0,35,16,WHITE);
    display.setTextColor(BLACK);
    display.println(actual_speed);
    display.setTextColor(WHITE);
  }else if(menu == SPEEDMENU){ // draw rect if in correct menu
    display.drawRect(74,0,35,16,WHITE);
    display.println(actual_speed);
  }else{ // just draw speed
    display.println(actual_speed);
  }

  // print second line:
  // Direction: <-->
  display.setCursor(0,21);
  display.print("Direction: ");

  if(menuSelect == true && menu == DIRMENU){ // draw filled rect if selected
    display.fillRect(5,36,45,16,WHITE);
    display.setTextColor(BLACK);
    if(actual_direction == FORWARD) display.print("-->");
    else display.print("<--");
    display.setTextColor(WHITE);
  }else if(menu == DIRMENU){ // draw rect if in correct menu
    display.drawRect(5,36,45,16,WHITE);
    if(actual_direction == FORWARD) display.print("-->");
    else display.print("<--");
  }else{ // just draw direction
    if(actual_direction == FORWARD) display.print("-->");
    else display.print("<--");
  }

  // print third line:
  // Start
  display.setCursor(60,40);
  if(running){ // draw filled rect if running
    display.fillRect(59,39,61,17,WHITE);
    display.setTextColor(BLACK);
    display.print("Start");
    display.setTextColor(WHITE);
  }else{
    display.print("Start");
  }
  if(menu == STARTMENU){ // draw rect if in correct menu
    display.drawRect(58,38,62,18,WHITE);
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

  //small little debug icon
  if(digitalRead(ENCS) == 0){
    display.fillCircle(119,2,2,WHITE);
  }
  if(running){
    display.fillCircle(122,2,2,WHITE);
  }
  // debug encoder pos
  display.setTextSize(1);
  display.setCursor(0,55);
  display.print(encoderPos);
  display.print(" ");
  display.print(ticks);
  display.print(" ");
  display.print(tick_count);
  display.print(" ");
  display.print(actual_direction);
  display.print(" ");
  if (digitalRead(EMAX)) {
    display.print("1");
  }else{
    display.print("0");
  }
  display.print(" ");
  if (digitalRead(EMIN)) {
    display.print("1");
  }else{
    display.print("0");
  }

  // write out to the display
  display.display();
}


ISR (PCINT2_vect) // handle pin change interrupt for D0 to D7 here
 {
     if(digitalRead(EMAX)){ // MAX hit
       MAX_FLAG = true;
       emergency_stop();
     }
     if(digitalRead(EMIN)){ // Min hit
       MIN_FLAG = true;
       emergency_stop();
     }
 }
