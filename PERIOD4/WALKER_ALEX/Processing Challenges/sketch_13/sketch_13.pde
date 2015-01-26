int x;
void setup() {
  size(255,255);
  background(127);
  x = 0;
  strokeWeight(25);
  stroke(0);
  frameRate(100);
}
void draw() {
  background(127);
  stroke(x);
  point(x,x);
  x = x + 1;
  if(x > width) {
    x = 0;
  }
}
