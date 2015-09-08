Truck Truck;
Object Object;

int speed = 10;
boolean AutoPickup = true;
int wWidth = 800;
int wHeight = int(wWidth/1.5);
color background = color(04, 102, 0);
color truckColor = color(64, 20, 40);
color objectColor = color(224, 220, 80);

void setup() {
  size(wWidth, wHeight);
  ellipseMode(LEFT);
  background(background);
  
  Object = new Object();
  Object.setObjectWidth(40);
  Object.setObjectHeight(40);
  Object.setLocationY(int(random(height - Object.getObjectHeight())));
  Object.setLocationX(int(random(width - Object.getObjectWidth())));
  Object.setObjectColor(objectColor);
  Object.drawObject();

  Truck = new Truck();
  Truck.setAutopick(AutoPickup);
  Truck.setTruckHeight(40);
  Truck.setTruckWidth(40);
  Truck.setLocationX(int(random(width - Truck.getTruckWidth())));
  Truck.setLocationY(int(random(height - Truck.getTruckHeight())));
  Truck.setTruckColor(truckColor);

  Truck.drawTruck();
}

void draw() {
}

void keyPressed() {
  fill(background);
  rect(Truck.getLocationX(), Truck.getLocationY(), Truck.getTruckWidth(), Truck.getTruckHeight());

  switch (keyCode) {
  case 40:  
    Truck.setLocationY(Truck.getLocationY() + speed);
    break;
  case 39:  
    Truck.setLocationX(Truck.getLocationX() + speed);
    break;
  case 38:  
    Truck.setLocationY(Truck.getLocationY() - speed);
    break;
  case 37:  
    Truck.setLocationX(Truck.getLocationX() - speed);
    break;
  case 10:  
    pickup(true);
  }

  if (Truck.getAutopick()) {
    pickup(false);
  }

  if (Object.getPickedUp()) {
    rect(Object.getLocationX(), Object.getLocationY(), Object.getObjectWidth(), Object.getObjectHeight());
    Object.setLocationY(Truck.getLocationY() + ((Truck.getTruckHeight() - Object.getObjectHeight()) /2));
    Object.setLocationX(Truck.getLocationX() + ((Truck.getTruckWidth() - Object.getObjectWidth()) /2));
  }
  Truck.drawTruck();
  Object.drawObject();
}

void pickup(boolean keyPress) {
  if (Object.getPickedUp() && keyPress) {
    Object.setPickedUp(false);
    if (Truck.autopick) {
      Object.setDropped(true);
    }
    return;
  }
  if (Truck.pickUp(Object)) {
    if (!Object.getDropped()) {
      Object.setPickedUp(true);
    }
  };
}


