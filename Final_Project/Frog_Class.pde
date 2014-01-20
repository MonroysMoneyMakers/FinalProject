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

