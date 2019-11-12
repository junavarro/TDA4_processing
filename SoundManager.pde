import processing.sound.*;

SoundFile file;

void playTest() {
  file = new SoundFile(this, "./data/01.wav");
  file.play();
}
