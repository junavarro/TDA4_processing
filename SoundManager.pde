import processing.sound.*;

SoundFile file;

void playTest() {
  file = new SoundFile(this, "./data/01.wav");
  file.play();
}

class Player {
  
  SoundFile _file;
  PApplet _thePApplet;
  Player(PApplet thePApplet){
    this._thePApplet = thePApplet;
  }
  
  void playSong(String path){
    //"./data/01.wav"
     this._file = new SoundFile(this._thePApplet, path);
     this._file.play();
  }
  void pauseSong(){
    this._file.pause();
  }
  void stopSong(){
     this._file.stop();
  }
}
