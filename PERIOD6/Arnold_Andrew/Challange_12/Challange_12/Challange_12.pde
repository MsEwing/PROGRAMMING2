void setup() {
  size(500,500);
}
void draw() {
  background(random(255),random(255),random(255));
  strokeWeight(5);
  stroke(random(255),random(255),random(255));
  line(0,random(500),499,random(500));
}
