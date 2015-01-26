void setup() {
  size(400,400);
  background(255);
  strokeWeight(2);
  stroke(0);
}
void draw() {
  int random = (int) random(4);
  println(random);
  if (random == 0) {
    line(random(400),0,200,200);
  }
  if (random == 1) {
    line(0,random(400),200,200);
  }
  if (random == 2) {
    line(random(400),400,200,200);
  }
  if (random == 3) {
    line(400,random(400),200,200);
  }
}
