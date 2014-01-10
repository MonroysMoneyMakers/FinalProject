Car[]car = new Car[3];

boolean start= false;
boolean end=false;
int index=1;
int sec=0;
int currtime=0;
int oldtime=0;
int limit=1000;

void setup() {
  size(displayWidth, displayHeight);

  for (int i=0;i<drizzle.length;i++) {
    drizzle[i]=new Raindrops();
  }
}

void draw() {
  background(0);
  sec=currtime-oldtime;
  if (millis()-oldtime>=limit) {
    oldtime=millis();
    index+=1;
  }
}


car.display();
car.drive();
car.wraparound();

