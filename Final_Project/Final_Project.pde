ArrayList<Car> cars = new ArrayList<Car>();
Frog frog;

PImage background;
int x, y;
int oldtime;
int newtime;

void setup() {
  background=loadImage("Background.png");
  size(background.width, background.height);
  cars.add(new YellowCar(width/2, height/2));
  frog = new Frog();
}

void draw() {
  background(background);
  for (Car c : cars) {
    c.display();
    c.move();
  }
  frog.display();
  frog.update();
  respawn();
}
void respawn() {
  if (oldtime<=millis()){
  oldtime+=2000;
 
    cars.add(new YellowCar(width, random(500,1000)));
  
  
    cars.add(new GreenCar(width, random(500,1000)));
  }
}

