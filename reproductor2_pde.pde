import processing.serial.*;

import controlP5.*;
//Serial myPort;  // Create object from Serial class
//String val;     // Data received from the serial port
GUI gui;
PlayerController playerController;
//Player player;
//ControlP5 jControl;
void setup () {
  size(600, 400);
  background(0);
  gui = new GUI(this);
  List playList = getFileNames();
  //playTest();
  gui.setPlayList(playList);
  playerController = new PlayerController(gui, this);
  //player = new Player(this);
  //String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  //myPort = new Serial(this, portName, 9600);
}
void draw() {
  playerController.readMessages();
  
}
