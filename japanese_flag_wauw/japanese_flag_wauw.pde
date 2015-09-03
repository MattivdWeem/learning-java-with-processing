/**
  Matti van de Weem 
  MIT
**/

int windowWidth = 700;
int windowHeight = windowWidth/2;


size(windowWidth, windowHeight);
background(#ffffff);
rect(0,0,windowWidth-1,windowHeight-1);
fill(#FF0000);
stroke(#000000);

float calcHeight = windowHeight/2;
float calcWidth = windowWidth/2;

ellipse(calcWidth, calcHeight, calcHeight, calcHeight);
fill(#ffffff);
textSize(40);
textAlign(CENTER, CENTER);
text("wauw", calcWidth, calcHeight-5);

