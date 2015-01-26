int x;
int y;
boolean sketchFullScreen() {
  return true;
}
float weight;
void setup() {
  size(displayWidth,displayHeight);
  background(0);
  stroke(255);
  colorMode(HSB);
  frameRate(50);
}
void draw() {
  if (mousePressed == true && mouseButton == LEFT) {
    flower();
  }
  if (mousePressed == true && mouseButton == RIGHT) {
    strokeWeight(50);
    stroke(0);
    point(mouseX,mouseY);
  }
}
void flower() {
  weight = random(1,20);
  strokeWeight(weight);
  stroke(random(255),255,255);
  x = mouseX;
  y = mouseY;
  point(x,y);
  point(x+weight,y);
  point(x-weight,y);
  point(x,y+weight);
  point(x,y-weight);
}
