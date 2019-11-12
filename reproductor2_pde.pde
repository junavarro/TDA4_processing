import controlP5.*;
GUI gui;
Player player;
//ControlP5 jControl;
void setup () {
  size(600, 400);
  background(0);
  gui = new GUI(this);
  List playList = getFileNames();
  //playTest();
  gui.setPlayList(playList);
  player = new Player(this);
}
void draw() {

}
