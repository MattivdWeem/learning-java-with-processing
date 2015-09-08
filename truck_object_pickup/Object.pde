class Object {
  int locationX;
  int objectWidth;
  int objectHeight;
  color objectColor;
  int locationY;
  boolean dropped = false;
  boolean pickedUp = false;

  void setObjectColor(color Color){
    this.objectColor = Color;
  }
  
  color getObjectColor(){
    return this.objectColor;
  }

  boolean getPickedUp() {
    return this.pickedUp;
  }

  void setPickedUp(boolean picked) {
    this.pickedUp = picked;
  }

  boolean getDropped() {
    return this.dropped;
  }

  void setDropped(boolean dropped) {
    this.dropped = dropped;
  }
  int getLocationX() {
    return this.locationX;
  }
  int getLocationY() {
    return this.locationY;
  }
  int getObjectWidth() {
    return this.objectWidth;
  }
  int getObjectHeight() {
    return this.objectHeight;
  }

  void setLocationX(int newValue) {
    this.locationX = newValue;
  }
  void setLocationY(int newValue) {
    this.locationY = newValue;
  }
  void setObjectWidth(int newValue) {
    this.objectWidth = newValue;
  }

  void setObjectHeight(int newValue) {
    this.objectHeight = newValue;
  }

  void drawObject() {
    fill(getObjectColor());
    noStroke();


    ellipse(getLocationX(), getLocationY(), getObjectWidth(), getObjectHeight());
  }
}



