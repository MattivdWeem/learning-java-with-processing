void setup() {
size(800, 200);
}

int columnHeight = 20;
boolean reverse = false;


void draw(){
  
  background(#cceecc);
  fill(#ffeeff);
  rect(width-600, height - columnHeight, 400, columnHeight);
  if (reverse){
    columnHeight--;
  } else {
    columnHeight++;
  }
  if (!reverse && height == columnHeight){
    reverse = true;
  }
  if (reverse && columnHeight == 0){
    reverse = false;
  }
  
  
}


