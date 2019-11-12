import processing.sound.*;

//SoundFile file;

//void playTest() {
//  file = new SoundFile(this, "./data/01.wav");
//  file.play();
//}

class Player {

  SoundFile _file;
  PApplet _thePApplet;
  Player(PApplet thePApplet) {
    this._thePApplet = thePApplet;
  }

  void playSong(String path) {
    //"./data/01.wav"
    this.stopSong();// stops previous songs
    String basePath = "./data/"; 
    this._file = new SoundFile(this._thePApplet, basePath + path);
    this._file.play();
  }
  void pauseSong() {
    if (this._file != null) {
      if (this._file.isPlaying()) {
        this._file.pause();
      }else{
        this._file.play();
      }
    }
  }
  void stopSong() {
    if (this._file != null) {
      if (this._file.isPlaying()) {
        this._file.stop();
      }
    }
  }
}
