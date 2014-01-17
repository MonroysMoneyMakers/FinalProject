class Boat {
  PVector loc, vel;
  int d;
  PImage boat;
  int left;
  Boat(float x, float y)
  {
    loc = new PVector(x, y);
  }
  void display() {
    image(boat, loc.x, loc.y, 100, 50);
  }

  void move() {
    loc.add(vel);
  }
}

class BoatTwo extends Boat {
  BoatTwo(float x, float y) {
    super(x, y);
    vel = new PVector(3, 0);
    boat = loadImage("boat2.png");
  }

  void move() {
    super.move();
    if (loc.x > width) {
      loc.x = width*5;
      vel.set(0,0);
    }
  }
}

class BoatThree extends Boat {
  BoatThree(float x, float y) {
    super(x, y);
    vel = new PVector(-2, 0);
    boat = loadImage("ReverseBoat16.png");
  }

  void move() {
    super.move();
    if (loc.x > width) {
      loc.x = width*5;
      vel.set(0,0);
    }
  }
}
class BoatFour extends Boat {
  BoatFour(float x, float y){
    super(x,y);
    vel = new PVector (2, 0);
    boat = loadImage("Boat.png");
  }
  void move(){
    super.move();
    if (loc.x > width) {
      loc.x = width*5;
      vel.set(0,0);
    }
  }
}
class Log extends Boat {
  Log(float x, float y ) {
    super(x, y);
    vel = new PVector (-3, 0);
    boat = loadImage("longlog.png");
  }
  void move(){
    super.move();
    if (loc.x > width){
      loc.x = width * 5;
      vel.set(0,0);
    }
  }
}
class SLog extends Boat {
  SLog (float x, float y ){
    super(x,y);
    vel = new PVector (3.5, 0 );
    boat = loadImage("shortlog.png");
  }
  void move(){
    super.move();
    if (loc.x > width){
      loc.x = width * 5;
      vel.set(0,0);
    }
  }
}
