float x;
float y;
void setup() {
  size(400,400);
  strokeWeight(6);
  frameRate(4);
  colorMode(HSB);
}
void draw() {
  background(0);
  stroke(random(255),255,255);
  x = (random(400));
  y = (random(400));
  cross();
}
void cross() {
  point(x,y);
  point(x,y+10);
  point(x,y-10);
  point(x+10,y);
  point(x-10,y);
}
