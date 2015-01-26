int r;
int g;
int b;
int r1;
int g1;
int b1;
int x = 100;
int y = 100;
boolean xdown = true;
boolean yright = true;
boolean sketchFullScreen() {
  return true;
}
void setup() {
  size(displayWidth, displayHeight);
  stroke(0);
  frameRate(500);
}
void draw() {
  r = (int) random(256);
  g = (int) random(256);
  b = (int) random(256);
  background(r, g, b);
  stroke(r,g,b);
  r1 = ((r - 128) * -1) + 128;
  g1 = ((g - 128) * -1) + 128;
  b1 = ((b - 128) * -1) + 128;
  fill(r1,g1,b1);
  strokeWeight(0);
  rect(50,50,width-100,height-100);
  strokeWeight(30);
  ellipse(x,y,200,200);
  if (xdown) {
    x = x + (int) random(5);
  }
  if (yright) {
    y = y + (int) random(5);
  }
  if (xdown == false) {
    x = x - (int) random(5);
  }
  if (yright == false) {
    y = y - (int) random(5);
  }
  if (x > width-150) {
    xdown = false;
  }
  if (y > height-150) {
    yright = false;
  }
  if (x < 150) {
    xdown = true;
  }
  if (y < 150) {
    yright = true;
  }
}
