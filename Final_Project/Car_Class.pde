class Car {
  PVector loc, vel;
  int d;
  PImage car;
  int left;

  Car(float x, float y){
    d = 100;
    loc = new PVector(x, y);
  }
  void display() {
    image(car, loc.x, loc.y,d,d/2);
  }
  void move() {
    loc.add(vel);
  }
}
class YellowCar extends Car {
  YellowCar(float x, float y) {
    super(x, y );
    vel=new PVector(2.75, 0);
    car = loadImage("ShortCar.png");
  }
  void move() {
    super.move();
    if (loc.x > width) {
      loc.x = width*5;
      vel.set(0,0);
    }
  }
}
class GreenCar extends Car {
  GreenCar(float x, float y) {
    super(x, y);
    vel = new PVector(-2, 0);
    car = loadImage("Reversegreencar.png");
  }

  void move() {
    super.move();
    if (loc.x > width) {
      loc.x = width*5;
      vel.set(0,0);
    }
  }
}
class BlueCar extends Car {
  BlueCar(float x, float y){
    super(x,y);
    vel = new PVector(2,0);
    car = loadImage("bluecar.png");
  }
  void move(){
    super.move();
    if (loc.x > width){
      loc.x = width*5;
      vel.set(0,0);
    }
  }
}
class Truck extends Car {
  Truck(float x, float y){
    super(x,y);
    vel= new PVector (-1.25,0);
    car = loadImage("Reversewhitetruck.png");
  }
  void move(){
    super.move();
    if(loc.x > width){
      loc.x = width* 5 ;
      vel.set(0,0);
    }
  }
}
class RedCar extends Car{
  RedCar(float x, float y){
    super(x,y);
    vel = new PVector (4.5,0);
    car = loadImage("RedCar.png");
  }
  void move (){
    super.move();
    if (loc.x > width){
      loc.x = 0;
    }
  }
}

