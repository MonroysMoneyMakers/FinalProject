ArrayList<Car> cars = new ArrayList<Car>();
ArrayList<Boat> boats = new ArrayList<Boat>();
Frog frog;

PImage background;
int x, y;
int oldtime;
int newtime;
int lives;

boolean instructions;
boolean start;
//boolean back;

void setup() {
  background=loadImage("RightBackground.png");
  size(background.width, background.height);
  cars.add(new YellowCar(width/2, height/2+50));
  boats.add(new BoatTwo(0, height/4+43));
  frog = new Frog();
<<<<<<< HEAD
  cars.add(new RedCar (0, height - 290));
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
=======
  //REGULATION OF FUNCTIONS
  instructions = false;
  start = false;
  //back = false;
}

void draw() {   
  start();
  //First draw start screen

  if ( start == true) {
    //if start button pressed, run game screen
    if (mouseX>startX && mouseX <startX+startW && mouseY>startY && mouseY <startY+startH) {
      //Original Code for running game
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
  }
  if (instructions == true) {
    //if instructions button pressed, run instructions screen
    if (mouseX>insX && mouseX <insX+insW && mouseY>insY && mouseY <insY+insH) {
      instructions();
    }
>>>>>>> d5f5c083a3442eef302401a3bdf161f5cad30d9b
  }
//  if (back == true) {
//    //and then within instructions screen, if back button pressed, run start screen
//    if (mousePressed) {
//      if (mouseX>backX && mouseX < backW && mouseY>backY && mouseY < backY + backH) {
//        start();
//      }
//    }
//  }
}

<<<<<<< HEAD
void respawn() {
  if (oldtime<=millis()) {
    oldtime+=5000;
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
=======
void mousePressed() {
  start = !start;
  instructions = !instructions;
  //back = !back;
>>>>>>> d5f5c083a3442eef302401a3bdf161f5cad30d9b
}

