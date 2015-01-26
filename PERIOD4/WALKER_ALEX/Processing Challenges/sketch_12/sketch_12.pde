void setup() {
  size(400,400);
  strokeWeight(5);
  stroke(0);
}
void draw() {
  background(255);
  int line = (int) random(400);
  line(line,0,line,400);
}
