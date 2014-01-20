int insX = 110;
int insY = 600;
int insW = 300;
int insH = 125;
int startX = 85;
int startY = 235;
int startW = 180;
int startH = 135;

void Start(){
  background(255);
  image(StartFrog, -50, 30, 800, 800);
  fill(2,198,79);
  textSize(80);
  text("Frogger", 25, 125);
  fill(255, 0, 0);
  //Instructions Rectangle
  rect(insX, insY, insW, insH);
  //Start Rectangle
  rect(startX, startY, startW, startH);
  fill(0);
  textSize(40);
  text("Start", 130, 310);
  text("Instructions", 148, 675);
  if (mouseX>startX && mouseX <startX+startW && mouseY>startY && mouseY <startY+startH && mousePressed){
    start = true;
  }
  if (mouseX>insX && mouseX <insX+insW && mouseY>insY && mouseY <insY+insH && mousePressed){
  instructions = true;
  }
}
