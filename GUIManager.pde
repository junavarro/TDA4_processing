import controlP5.*;
import java.util.*;
class GUI {
  ControlP5 cp5;
  Slider _slider;
  Button _nextBtn;
  Button _prevBtn;
  Button _playBtn;
  Textlabel _myTextlabel;

  List l = Arrays.asList("a", "b", "c", "d", "e", "f", "g", "h");
  GUI(PApplet thePApplet) {
    cp5 = new ControlP5(thePApplet);
    this._slider = cp5.addSlider("Time", 0, 255, 100, 50, 300, 500, 10);

    this._nextBtn = cp5.addButton("Next");
    this._nextBtn.setPosition(500, 261);
    this._playBtn = cp5.addButton("Play");
    this._playBtn.setPosition(420, 261);
    this._prevBtn = cp5.addButton("Prev");
    this._prevBtn.setPosition(340, 261);

    
    this._myTextlabel =new Textlabel(cp5,"Name: ",280,100);
    this._myTextlabel.setColorValue(0xcaffbf00);
    this._myTextlabel.draw(thePApplet); 



    cp5.addScrollableList("dropdown")
      .setPosition(50, 100)
      .setSize(200, 500)
      .setBarHeight(20)
      .setItemHeight(20)
      .addItems(l)
      .setType(ScrollableList.LIST);
  }
}
