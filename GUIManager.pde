import controlP5.*;
import java.util.*;
class GUI {
  ControlP5 cp5;
  Slider _slider;
  Button _nextBtn;
  Button _prevBtn;
  Button _playBtn;
  Textlabel _myTextlabel;
  ScrollableList _scrollableList;


  GUI(PApplet thePApplet) {
    cp5 = new ControlP5(thePApplet);
    this._slider = cp5.addSlider("Time", 0, 255, 100, 40, 300, 530, 10);

    this._nextBtn = cp5.addButton("Next");
    this._nextBtn.setPosition(480, 255);
    this._playBtn = cp5.addButton("Play");
    this._playBtn.setPosition(400, 255);
    this._prevBtn = cp5.addButton("Prev");
    this._prevBtn.setPosition(320, 255);


    this._myTextlabel =new Textlabel(cp5, "Name: ", 280, 100);
    this._myTextlabel.setColorValue(0xcaffbf00);
    this._myTextlabel.draw(thePApplet); 



    this._scrollableList = cp5.addScrollableList("dropdown")
      .setPosition(50, 100)
      .setSize(200, 160)
      .setBarHeight(20)
      .setItemHeight(20)
      .setType(ScrollableList.LIST);

    fill(0, 0, 0, 1);
    stroke(204, 102, 0);
    rect(40, 90, 220, 200);
    
    fill(0, 0, 0, 1);
    stroke(204, 102, 0);
    rect(270, 90, 320, 140);
    
    fill(0, 0, 0, 1);
    stroke(204, 102, 0);
    rect(270, 240, 320, 50);
  }


  /**
   Sets the items
   **/
  void setPlayList( List playList) {
    this._scrollableList.setItems(playList);
  }

  
  
}
