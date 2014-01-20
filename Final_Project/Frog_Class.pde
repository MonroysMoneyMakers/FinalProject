class Frog {
  PVector loc, UD, LR;
  int d; 
  PImage f;
  Frog() {
    d = 20;
    loc = new PVector (width/2, height-50);
    UD = new PVector (0, 15);
    LR = new PVector (15, 0);
    f = loadImage("Frog.png");
  }
  void display() {
    image(loadImage("Frog.png"), loc.x, loc.y, 50, 50);
  }
  void move() {
    if (keyPressed && key == CODED) {
      if (keyCode == LEFT) {
        loc.sub(LR);
      }
      else if (keyCode == RIGHT ) {
        loc.add(LR);
      }
      else if (keyCode == UP) {
        loc.sub(UD);
      }
      else if (keyCode == DOWN) {
        loc.add(UD);
      }
    }
  }
}

void respawn() {
  if (oldtime<=millis()) {
    oldtime+=5000;
    cars.add(new YellowCar(0, height/2+50));
    cars.add(new GreenCar(width, height-230));
    cars.add(new BlueCar(0, height-175));
    cars.add(new Truck(width, height - 345));
    cars.add(new RedCar(0, height - 290));
    boats.add(new BoatThree(width, (height/2 - height/6+25)));
    boats.add(new BoatTwo(0, height/4 +43));
    boats.add(new BoatFour(0, height/8+100));
    boats.add(new Log(width, height/2-65));
    boats.add(new SLog(0, height/6+10));
  }
}

