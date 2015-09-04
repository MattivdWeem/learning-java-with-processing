import controlP5.*;
ControlP5 theControl;

void setup() {
  size(400, 350);
  theControl = new ControlP5(this);
  createNumberBoxes(theControl);
}

void draw() {
  
}

void drawLine(){
  redraw();
  int bmi = calculateBMI(leesLengte(), leesGewicht());
  stroke(0);
  line(0, height-bmi, width, height-bmi);
}


float calculateBMI(float iLength, float iWeight){
  float lengthFin = iLength/100;
  return (iWeight/(lengthFin*lengthFin));
}
