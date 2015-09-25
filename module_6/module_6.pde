PImage female, male;

void setup() {
  int rows = 12;
  size(300, rows*60+20);
  
  // load images
  female = loadImage("peach.png");
  male = loadImage("mario.png");
  
  // creat list, based on how many rows you want
  createImages(rows);
}

