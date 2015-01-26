float x;
int strokev = 1;
void setup() {
  size(400,400);
  background(0);
  stroke(random(255),random(255),random(255));
}
void draw() {
  strokeWeight(strokev);
  x = (x+20)%400;
  line(x,100,x+15,300);
}
void keyPressed() {
  if (key == 'r') {
    stroke(255,0,0);
  }
  if (key == 'g') {
    stroke(0,255,0);
  }
  if (key == 'b') {
    stroke(0,0,255);
  }
  if (key == 'f') {
    strokev = strokev + 1;
  }
}
