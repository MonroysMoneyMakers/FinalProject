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

  for (int i=0;i<car.length;i++) {
    car[i]=new Car();
  }
}

void draw() {
  background(0);
  sec=currtime-oldtime;
  if (millis()-oldtime>=limit) {
    oldtime=millis();
    index+=1;
    for (int i=0;i<car.length;i++) {  
      car[i].display();
      car[i].drive();
      car[i].wraparound();
    }
  }
}

