Boolean lightsActive = false;
Boolean lightsOff = true;

void setup(){
  frameRate(5);
  size(800, 400);
  noStroke();
}

void draw(){
  background(255);
  drawButton("zet aan");
  if (lightsActive){
    drawButton("zet uit");
  }
  drawLights(getAlpha());
}

/*
 * calculates the apha of the lights
 */
int getAlpha(){
  lightsOff = !lightsOff;
  if (lightsActive && !lightsOff){
      return 50;
  }
  return 100;
}

/*
 *  Draws the 3 lights
 *  @param alpha, defines the alpha with which the button should be drawn
 *
 */
void drawLights(int alpha){
  fill(255,0,0, alpha);
  ellipse(width/4*1, height/4, width/5, width/5);
  fill(0,255,0, alpha);
  ellipse(width/4*2, height/4, width/5, width/5);
  fill(0,0,255, alpha);
  ellipse(width/4*3, height/4, width/5, width/5);
}

/*
 *  Draws the button
 *
 */
void drawButton(String text){
  fill(255,255,0);
  textAlign(CENTER, CENTER);
  rect(20, height/4*3, width - 40, height/4);
  fill(0);
  textSize(40);
  text(text, width/2, height/4*3+40);
}


/*
 * handle mouse event
 *
 */
void mouseClicked(){
  if (mouseX >= 20
   && mouseX <= width-20
   && mouseY >= height/4*3 
   && mouseY <= height) {
    lightsActive = !lightsActive; 
  }  
}
