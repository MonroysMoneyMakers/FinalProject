int backX = 270;
int backY = 760;
int backW = 160;
int backH = 70;

void instructions() {
  background(0);
  image(keys, width/2 +50, height - 450, 160, 145);
  textSize(40);
  fill(255);
  text("INSTRUCTIONS", 15, 60);
  textSize(20);
  String q = "Move the frogger using the arrow keys." ;
  String r = "Avoid moving cars." ;
  String s = "Also avoid moving boats." ;
  String t = "Make it to the boxes at the top of the screen." ;
  String a = "Fill up all five of the spaces." ;
  String u = "You have five lives." ;
  String v = "Good Luck!" ; 
  text(q, 0 + 50, 150);
  text(r, 0 +50, 225);
  text(s, 0 + 50, 300); 
  text(t, 0 + 50, 375); 
  text(a, 0 + 50, 450);
  text(u, 0 + 50, 525);
  text(v, 0 + 50, 600);
  fill(255, 0, 0);
  rect(backX, backY, backW, backH);
  textSize(35);
  fill(0);
  text("BACK", width/2-30, 808);
  if (mouseX > backX && mouseX < backW + backX && mouseY > backY && mouseY < backH + backY && mousePressed) {
    back = true;
  }
}

