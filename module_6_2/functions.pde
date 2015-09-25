int doGeneration(int i,PImage male, PImage female){
    int gen = int(random(2));
    int x = 0;
    while (boolean (gen)) {
      gen = int(random(2));
      x++;
    }
    return x;
}

void createImages(int rows) {
  int maleCount = 0;
  int femaleCount = 0;
  for (int i = 0; i < rows; i++) {
    femaleCount += doGeneration(i, male, female);
    maleCount++;
  }
  
  fill(0);
  text(maleCount, 0,0);
  println(maleCount);
}
