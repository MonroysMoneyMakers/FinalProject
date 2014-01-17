ArrayList<Car> cars = new ArrayList<Car>();
ArrayList<Boat> boats = new ArrayList<Boat>();
Frog frog;

PImage background;
int x, y;
int oldtime;
int newtime;

void setup() {
  background=loadImage("RightBackground.png");
  size(background.width, background.height);
  cars.add(new YellowCar(width/2, height/2+50));
  boats.add(new BoatTwo(0,height/4+43));
  frog = new Frog();
}

void draw() {
  background(background);
  for (Car c : cars) {
    c.display();
    c.move();
  }
  for (Boat b : boats) {
    b.display();
    b.move();
  }
  frog.display();
  frog.move();
  respawn();
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
