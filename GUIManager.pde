import controlP5.*;
class GUI {
  ControlP5 cp5;
  Slider _slider;
  Button _nextBtn;
  Button _prevBtn;
  GUI(PApplet thePApplet) {
    cp5 = new ControlP5(thePApplet);
    this._slider = cp5.addSlider("B_COLOR", 0, 255, 100, 10, 10, 100, 10);
    this._nextBtn = cp5.addButton("Next");
    this._prevBtn = cp5.addButton("Prev");
  }
}
