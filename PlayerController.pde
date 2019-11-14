import processing.serial.*;

class PlayerController {
  String _message = "";
  GUI _gui;
  Serial _myport;  // Create object from Serial class
  PlayerController(GUI gui, PApplet thePApplet) {
    String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
    this._myport = new Serial(thePApplet, portName, 9600);
    this._gui = gui;
  }

  void readMessages() {
    if ( this._myport.available() > 0) 
    {  // If data is available,
      this._message = this._myport.readStringUntil('\n');         // read it and store it in val
    } 
    if (this._message != null) {
      print("Reading..."); println(this._message);
      if (this._message.indexOf("anterior") >= 0) {
        print("prev");
        this._gui.prevSong();
      } else if (this._message.indexOf("siguiente") >= 0) {
        print("next");
        this._gui.nextSong();
      } else if (this._message.indexOf("pausa") >= 0) {
        print("pause");
        this._gui.pauseSong();
      }
    }
  }
}
