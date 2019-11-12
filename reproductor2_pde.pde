import controlP5.*;
GUI gui;
//ControlP5 jControl;
void setup () {
  size(600, 400);
  background(0);
  gui = new GUI(this);
  List playList = getFileNames();
  playTest();
  gui.setPlayList(playList);
}
void draw() {

}
