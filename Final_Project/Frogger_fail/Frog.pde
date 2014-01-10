class Frog {
  PVector loc;
  int d;
  Frog() {
    loc=new PVector(mouseX, height-d);
    d=50;
  }
  void display(){
    ellipse(loc.x,loc.y,d,d);
  }
  void update(){
    loc.set(mouseX, height-d);
  }
  void Froggerdie(){
} 
}
