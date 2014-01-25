ArrayList<Car> cars = new ArrayList<Car>();
ArrayList<Boat> boats = new ArrayList<Boat>();
Frog frog;

PImage background;
int x, y;
int oldtime;
int newtime;
int lives;
PImage keys;
PImage StartFrog;
boolean instructions;
boolean start;
boolean back;
boolean stop;

void setup() {
  keys = loadImage("arrowkeys.jpg");
  StartFrog = loadImage ("frog.jpg");
  background=loadImage("RightBackground.png");
  size(background.width, background.height);
  cars.add(new YellowCar(width/2, height/2+50));
  boats.add(new BoatTwo(0, height/4+43));
  frog = new Frog();
  cars.add(new RedCar (0, height - 290));
  start = false;
  back = false;
  instructions = false;
  stop=false;
  lives=5;
}
void draw() {   
  Start();
  if (start == true && stop == false) {
    background(background);
    textSize(60);
    text(lives, 100, 100);
    for (Car c : cars) {
      c.display();
      c.move();
    }
    for (Boat b : boats) {
      b.display();
      b.move();
    }
    for (int i = 0; i < cars.size(); i++) {
      Car c = cars.get(i);
      if (frog.Interact(c) == true) {
        lives--;
        frog.restart();
      }
    } 
//    for (int i = 0; i < boats.size (); i++) {
//      Boat b = boats.get(i);
//      if (frog.loc.y < 10 && frog.loc.y > height/2 - 65) {
//        if (frog.BoatInteract(b) == false && frog.loc.y < 10 && frog.loc.y > height/2 - 65) {
//          lives--;
//          frog.restart();
//        }
//      }
//    }
    frog.display();
    frog.move();
    respawn();
    if (instructions == true) {
      instructions();
    }
    if (back == true) {
      Start();
    }
    if (lives == 0) {
      start = false;
      stop = true;
    }
  }
}
void mousePressed() {
  if (mouseX > backX && mouseX < backW + backX && mouseY > backY && mouseY < backH + backY) {
    back = !back;
    start = false;
    instructions = false;
  }
  if (mouseX>startX && mouseX <startX+startW && mouseY>startY && mouseY <startY+startH) {
    start = !start;
    instructions = false;
    back = false;
  }
  if (mouseX>insX && mouseX <insX+insW && mouseY>insY && mouseY <insY+insH) {
    instructions = !instructions;
    start = false;
    back = false;
  }
}

void respawn() {
  if (oldtime<=millis()) {
    oldtime+=5500;
    cars.add(new YellowCar(0, height/2+50));
    cars.add(new GreenCar(width, height-230));
    cars.add(new BlueCar(0, height-175));
    cars.add(new Truck(width, height - 345));
    boats.add(new BoatThree(width, (height/2 - height/6+25)));
    boats.add(new BoatTwo(0, height/4 +43));
    boats.add(new BoatFour(0, height/8+100));
    boats.add(new Log(width, height/2-65));
    boats.add(new SLog(0, height/6+10));
  }
}

