
class Truck {

  int locationX;
  int truckWidth;
  int truckHeight;
  int locationY;
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

  Boolean pickUp(Object object) {

    int oLocX = object.getLocationX();
    int oLocY = object.getLocationY();

    boolean acceptWidth = false;
    boolean acceptHeight = false;

    if (!(getLocationX() + getTruckWidth() >= oLocX)  || !(getLocationX() <= (oLocX + object.getObjectWidth()))) {
      object.setDropped(false);
      return false;
    }

    if (!(getLocationY() + getTruckHeight() >= oLocY)  || !(getLocationY() <= (oLocY + object.getObjectHeight()))) {
      object.setDropped(false);
      return false;
    }
    return true;
  }

  void setLocationX(int newPos) {
    this.locationX = newPos;
  } 
  void setLocationY(int newPos) {
    this.locationY = newPos;
  }
}
