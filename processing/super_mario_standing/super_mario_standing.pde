// Processing example sketch for the Adafruit RGB LED Matrix Display Driver project
// Copyright (c) 2012 Brian Nezvadovitz <http://nezzen.net>
// This software is distributed under the terms of the MIT License.

// Constants
static final int panelsWide = 1, // How many panels wide is your display?
                 panelsTall = 1, // How many panels tall is your display?
                 imgScale   = 10; // Scale factor for displayed preview

// Global variables
int xPos = 0, yPos = 0, frameNum = 0;

final int imgWidth = pixelsWide*panelsWide;
final int imgHeight = pixelsTall*panelsTall;

void setup() {
  // Try to establish connection
  if(!vjtag_client_connect()) return;
  
  // Erase the display before starting
  blank_leds();
  
  // Setup the window
  size(imgWidth * imgScale, imgHeight * imgScale);
  frameRate(7); // max FPS
}

void draw() {
  PImage img;
//println(dataPath(""));
// put images into ./super_mario_standing/data
  img=loadImage("SuperMarioStanding_02.png");
//   Preview image data on computer display
  image(img, 0, 0, imgWidth*imgScale, imgHeight*imgScale);
 // image(img, 0, 0);
  
  // Issue pixel data to the FPGA
  refresh(img);
  exit();
}

