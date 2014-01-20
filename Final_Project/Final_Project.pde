ArrayList<Car> cars = new ArrayList<Car>();
ArrayList<Boat> boats = new ArrayList<Boat>();
Frog frog;

PImage background;
int x, y;
int oldtime;
int newtime;

boolean instructions;
boolean start;
//boolean back;

void setup() {
  background=loadImage("RightBackground.png");
  size(background.width, background.height);
  cars.add(new YellowCar(width/2, height/2+50));
  boats.add(new BoatTwo(0, height/4+43));
  frog = new Frog();
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

void mousePressed() {
  start = !start;
  instructions = !instructions;
  //back = !back;
}

