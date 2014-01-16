class Car {
  PVector loc, vel;
  int d;
  PImage car;
  int left;

  Car(float x, float y)
  {
    loc = new PVector(x, y);
  }
  void display() {
    image(car, loc.x, loc.y,50,50);
  }

  void move() {
    loc.add(vel);
  }
}
class YellowCar extends Car {
  YellowCar(float x, float y) {
    super(x, y );
    vel=new PVector(3, 0);
    car = loadImage("car.png");
  }

  void move() {
    super.move();
    if (loc.x > width) {
      loc.x = -car.width;
    }
  }
}
class GreenCar extends Car {
  GreenCar(float x, float y) {
    super(x, y);
    vel = new PVector(-2, 0);
    car = loadImage("GreenCar.png");
  }

  void move() {
    super.move();
    if (loc.x < -car.width) {
      loc.x = width;
    }
  }
}

