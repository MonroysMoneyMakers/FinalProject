class ShortCar {
  PVector loc, vel;
  int d;

  ShortCar() {
    d = 20;
    loc = new PVector (width, height-height/4+8);
    vel = new PVector (1, 0);
  }
  void display() {
    fill(255);
    ellipse(loc.x, loc.y, d, d);
  }
  void move() {
    loc.sub(vel);
    if (loc.x <= 0) {
      loc.set(width, height-height/4+8);
    }
  }
}

