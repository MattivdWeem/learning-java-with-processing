
class Truck {

  int locationX;
  int truckWidth;
  int truckHeight;
  int locationY;
  int speed;
  color truckColor;
  boolean autopick = false;

  void drawTruck() {
    fill(getTruckColor());
    noStroke();
    rect(getLocationX(), getLocationY(), getTruckWidth(), getTruckHeight());
  }

  void setAutopick(boolean newAuto) {
    this.autopick = newAuto;
  }
  
  void setTruckColor(color Color){
    this.truckColor = Color;
  }
  
  void setSpeed(int speed){
    this.speed = speed;
  }
  
  int getSpeed(){
    return this.speed;
  }
  
  color getTruckColor(){
    return this.truckColor;
  }

  boolean getAutopick() {
    return this.autopick;
  }

  int getTruckWidth() {
    return this.truckWidth;
  }
  int getTruckHeight() {
    return this.truckHeight;
  }
  void setTruckWidth(int newWidth) {
    this.truckWidth = newWidth;
  }
  void setTruckHeight(int newHeight) {
    this.truckHeight = newHeight;
  }
  int getLocationX() {
    return this.locationX;
  } 
  int getLocationY() {
    return this.locationY;
  }

  Boolean pickUp(Object object, boolean hardMode) {

    int oLocX = object.getLocationX();
    int oLocY = object.getLocationY();

    boolean acceptWidth = false;
    boolean acceptHeight = false;

    
    if (!hardMode) {
        
        if (!(getLocationX() + getTruckWidth() >= oLocX)  || !(getLocationX() <= (oLocX + object.getObjectWidth()))) {
          object.setDropped(false);
          return false;
        }
    
        if (!(getLocationY() + getTruckHeight() >= oLocY)  || !(getLocationY() <= (oLocY + object.getObjectHeight()))) {
          object.setDropped(false);
          return false;
        }
        
    } else {
      if (getLocationY() != object.getLocationY() || getLocationX() != object.getLocationX()) {
        return false;
      }
    }
    return true;
  }

  void setLocationX(int newPos) {
    this.locationX = newPos;
  } 
  void setLocationY(int newPos) {
    this.locationY = newPos;
  }
  
  void moveDown(){
      this.setLocationY(this.getLocationY() + speed);
      if (this.getLocationY() + this.getTruckHeight() >= height) {
        this.setLocationY(height - this.getTruckHeight());
      }
  }
  
  void moveUp(){
      this.setLocationY(this.getLocationY() - speed);
      if (this.getLocationY() <= 0) {
        this.setLocationY(0);
      }
  }
  
  void moveLeft(){
      this.setLocationX(this.getLocationX() - speed);
      if (this.getLocationX() <= 0) {
        this.setLocationX(0);
      }
  }
  
  void moveRight(){
    this.setLocationX(this.getLocationX() + speed);
    if (this.getLocationX() + this.getTruckWidth() >= width) {
      this.setLocationX(width - this.getTruckWidth());
    }
  }
}
