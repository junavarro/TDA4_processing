import controlP5.*;
GUI gui;
//ControlP5 jControl;
void setup () {
  size(600, 600);
  background(0);
    
  //jControl = new ControlP5(this);
  //Slider slider  = jControl.addSlider("B_COLOR", 0, 255, 100, 10, 10, 100, 10);
  //jControl.addButton("Next");
  //jControl.addButton("Prev");
  
  gui = new GUI(this);
  
  getFileNames();
  playTest();
}
void draw() {

}
