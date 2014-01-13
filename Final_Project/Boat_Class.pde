class Boat {
  PVector loc, vel;
  int d;

  Boat() {
    d = 20;
    loc = new PVector (0, 155);
    vel = new PVector (1.25, 0);
  }
  void display() {
    fill(255);
    ellipse(loc.x, loc.y, d+10, d);
    ellipse(loc.x + 100, loc.y, d+10, d);
  }
  void move() {
    loc.add(vel);
    if (loc.x >= width) {
      loc.set(0, 155);
    }
  }
}
