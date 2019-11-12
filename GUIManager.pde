import controlP5.*;
import java.util.*;

class MyControlListener implements ControlListener {
  ControlP5 _cp5;
  Player _player;
  GUI _gui;

  MyControlListener(PApplet thePApplet, ControlP5 cp5,GUI gui) {
    this._cp5 = cp5;
    this._player = new Player(thePApplet);
    this._gui = gui;
  }
  public void controlEvent(ControlEvent theEvent) {
    switch(theEvent.getId()) {
      case(11):  // controls the playList from the dropdown
      int index = (int)theEvent.getController().getValue();
      String songName = this._gui.getSongName(index); 
      //this._cp5.get(ScrollableList.class, "dropdown").getItem(index).get("name").toString();
      this.playSong(songName);
      this._gui.setIndex(index);
      println(songName);
      break;
      case(22):
      println("NEXT");
      gui.nextSong();
      break;
      case(23):
      println("PREV");
      gui.prevSong();
      break;
      case(24):
      println("PLAY/PAUSE");
      this.pauseSong();
      break;
    }
  }
  /*
  
   */
  void applySong() {
  }

  /** Plays a song */
  void playSong(String song) {
    this._player.playSong(song);
  }
  void pauseSong() {
    this._player.pauseSong();
  }
  void stopSong() {
    this._player.stopSong();
  }
}
class GUI {
  ControlP5 cp5;
  Slider _slider;
  Button _nextBtn;//id:22
  Button _prevBtn;//id:23
  Button _playBtn;//id:24
  Textlabel _myTextlabel;
  ScrollableList _scrollableList;
  MyControlListener _listener;
  int _index = -1;
  int _optionsCount = 0;



  GUI(PApplet thePApplet) {
    cp5 = new ControlP5(thePApplet);
    this._slider = cp5.addSlider("Time", 0, 255, 100, 40, 300, 530, 10);

    this._nextBtn = cp5.addButton("Next").setId(22);
    this._nextBtn.setPosition(480, 255);
    this._prevBtn = cp5.addButton("Prev").setId(23);
    this._prevBtn.setPosition(320, 255);
    this._playBtn = cp5.addButton("Play/Pause").setId(24);
    this._playBtn.setPosition(400, 255);



    this._myTextlabel =new Textlabel(cp5, "Name: ", 280, 100);
    this._myTextlabel.setColorValue(0xcaffbf00);
    this._myTextlabel.draw(thePApplet); 



    this._scrollableList = cp5.addScrollableList("dropdown")
      .setPosition(50, 100)
      .setSize(200, 160)
      .setBarHeight(20)
      .setItemHeight(20)
      .setType(ScrollableList.LIST)
      .setId(11);
    _listener = new MyControlListener(thePApplet, cp5,this);
    cp5.addListener(_listener);

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
    this._optionsCount = playList.size();
  }

  /*
  Next song
   */
  void nextSong() {
    if (this._index == -1) {
      this._index = 0;
    } else {
      if (this._index+1 < this._optionsCount) {
        this._index += 1;
      } else {
        this._index = 0;
      }
    }
    this.cp5.get(ScrollableList.class, "dropdown").setValue(this._index);
  }
  /*Prev song*/
  void prevSong() {
    if (this._index == -1) {
      this._index = 0;
    } else {
      if (this._index -1 < 0 ) {
        this._index = this._optionsCount-1;
      } else {
        this._index -=1;
      }
    }
    this.cp5.get(ScrollableList.class, "dropdown").setValue(this._index);
  }
  
  /* get the name of the song
  */
  String getSongName(int index){
    return this.cp5.get(ScrollableList.class, "dropdown").getItem(index).get("name").toString();
  }
  
  /*Sets the index*/
  void setIndex(int index){
    this._index = index;
  }
}
