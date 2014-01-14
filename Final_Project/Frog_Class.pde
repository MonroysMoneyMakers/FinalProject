class Frog {
  PVector loc, UD, LR;
  int d; 
  Frog() {
    d = 20;
    loc = new PVector (width/2, height-50);
    UD = new PVector (0, 10);
    LR = new PVector (10, 0);
  }
  void display() {
    fill(5, 175, 6);
    ellipse(loc.x, loc.y, d, d);
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
    else {
      loc = loc;
    }
  }
}

