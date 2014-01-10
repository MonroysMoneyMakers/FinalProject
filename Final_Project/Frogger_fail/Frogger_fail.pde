int x;
PImage car;
void setup(){
  size(displayWidth,displayHeight);
  car = loadImage("YellowCar.png");
  
}
void draw(){
  background(0);
  fill(200,90,180);
  rectMode(CENTER);
  image(car,x,height/2,100,100);
  x+=8;
  if(x>=width){
    x=0;
  }

  }
