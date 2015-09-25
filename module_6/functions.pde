void doGeneration(int i,PImage male, PImage female){
    int gen = int(random(2));
    int x = 0;
    while (boolean (gen)) {
      image(female, x*30+10, i*60+10);
      gen = int(random(2));
      x++;
    }
    image(male, x*30+10, i*60 + 15);
}

void createImages(int rows) {
  for (int i = 0; i < rows; i++) {
    doGeneration(i, male, female);
  }
}
