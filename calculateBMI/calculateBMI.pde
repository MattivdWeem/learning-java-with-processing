import controlP5.*;
ControlP5 theControl;

int windowHeight = 700;
int cellWidth = 100;
int bmiBoxHeight = windowHeight/3;
int []bmis = {18, 25, 30, 40};
int textSize = 14;
String []bmiTexts = {"ondergewicht", "gezond", "overgewicht","obees"};

int rand1 = int(random(255));
int rand2 = int(random(255));
int rand3 = int(random(255));

void setup() {
  textSize(textSize);
  size(400, int(windowHeight/1.5));
  theControl = new ControlP5(this);
  createNumberBoxes(theControl);
}

void draw() {
  drawLine();
}
  

void drawLine(){
  int   max = max(bmis);
  float bmi = calculateBMI(leesLengte(), leesGewicht());  
  float multiplier = bmiBoxHeight/max;
  
  background(54);
  textAlign(LEFT,CENTER);
  fill(rand1,rand2,rand3);
  stroke(rand1,rand2,rand3);
  
  for (int i = 0; i < bmis.length; i++) {

    text(bmiTexts[i], 20,  height-bmis[i] *multiplier - textSize);
    line(0, height-bmis[i] *multiplier, width, height-bmis[i] *multiplier);
  }
  
  fill(rand2,rand3,rand1);
  rect((width/2)-(cellWidth/2), height-bmi*multiplier, cellWidth, bmi*multiplier);
  textAlign(CENTER,CENTER);
  text("BMI: "+ nf(bmi,2,2), (width/2), height-bmi*multiplier - textSize-2);
}


float calculateBMI(float iLength, float iWeight){
  float lengthFin = iLength/100;
  return (iWeight/(lengthFin*lengthFin));
}

