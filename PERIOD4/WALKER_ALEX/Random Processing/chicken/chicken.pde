PImage chicken;
void setup() {
  size(800,800);
  background(255);
  strokeWeight(2);
  stroke(0);
  fill(127);
  chicken = loadImage("chicken.jpg");
}
void draw() {
  cursor(chicken,15,15);
  if (mousePressed) {
    noCursor();
    ellipse(mouseX,mouseY,100,100);
    ellipse(mouseY,mouseX,100,100);
  }
}
