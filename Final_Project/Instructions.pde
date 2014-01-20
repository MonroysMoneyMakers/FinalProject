int backX = 270;
int backY = 760;
int backW = 160;
int backH = 70;

void instructions() {
  //image(arrows, width/2, height/2-160, 160, 145);
  textSize(40);
  fill(255);
//  text("INSTRUCTIONS", 15, 60);
  textSize(25);
  String s = "Move the frogger using the arrow keys. Avoid all moving objects. Make it to the end of the screen and gain 360 points.  Fill up the spaces to win. You have three lives."; 
  text(s, width/2-70, 234, 200, 600);
  fill(255,0,0);
  //HERE IS THE BACK BUTTON
//  rect(backX, backY, backW, backH);
//  textSize(35);
//  fill(0);
//  text("BACK", width/2-30, 808);
}

