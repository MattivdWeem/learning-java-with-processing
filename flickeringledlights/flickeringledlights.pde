Boolean lightsActive = false;
Boolean lightsOff = true;
int alpha;
String text;

void setup(){
  frameRate(5);
  size(800, 400);
}

void draw(){
  background(255);
  noStroke();
  fill(255,255,0);
  textAlign(CENTER, CENTER);
  rect(20, height/4*3, width - 40, height/4);
  
  text = "zet aan";
  if (lightsActive){
    text = "zet uit";
  }
  if (lightsActive && lightsOff){
    lightsOff = false;
    alpha = 50;
  } else {
    lightsOff = true;
    alpha = 100;
  }
  
  fill(0);
  textSize(40);
  text(text, width/2, height/4*3+40);
  
  fill(255,0,0, alpha);
  ellipse(width/4*1, height/4, width/5, width/5);
  fill(0,255,0, alpha);
  ellipse(width/4*2, height/4, width/5, width/5);
  fill(0,0,255, alpha);
  ellipse(width/4*3, height/4, width/5, width/5);
  
  
}

void mouseClicked(){

  if (mouseX < 20 || mouseX > width-20 || mouseY < height/4*3 || mouseY > height) {
    return;
  }
  
  lightsActive = !lightsActive;  
  
}
