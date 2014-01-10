class Car {
  PVector loc, vel, acc;
  int d;
  PImage car;

  Car() {
    d= 60;
    car=loadImage("car.jpg");
    loc= new PVector (0, height/2);
    vel= new PVector (10, 10);
    acc = new PVector (2, 0);
  }

  void display() {
    image(car, loc.x, loc.y, d, d);
  }

  void drive() {
    loc.add(vel);
  }

  void wraparound() {
    if (loc.x>= width) {
      loc.x=0;
    }
  }
}
