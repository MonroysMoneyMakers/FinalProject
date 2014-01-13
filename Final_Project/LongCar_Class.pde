class LongCar {
  PVector loc, vel;
  int d;

  LongCar() {
    d = 20;
    loc = new PVector (width, height-height/2+40);
    vel = new PVector (1.5, 0);
  }
  void display() {
    fill(255);
    ellipse(loc.x, loc.y, d+10, d);
  }
  void move() {
    loc.sub(vel);
    if (loc.x <= 0) {
      loc.set(width, height-height/2+40);
    }
  }
}
