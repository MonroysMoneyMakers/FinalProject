ShortCar SC;
LongCar LC;
Boat Bo;
Frog frog;
PImage Background;

void setup() {
  Background = loadImage("RightBackground.png");
  size(Background.width, Background.height);
  SC = new ShortCar();
  LC = new LongCar();
  Bo = new Boat();
  frog = new Frog();
}
void draw() {
  background(Background);
  SC.display();
  SC.move();
  LC.display();
  LC.move();
  Bo.display();
  Bo.move();
  frog.display();
  frog.keyPressed();
}

