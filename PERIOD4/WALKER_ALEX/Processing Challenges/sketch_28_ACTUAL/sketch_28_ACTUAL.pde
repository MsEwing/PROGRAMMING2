int y = -150;
void setup() {
  colorMode(HSB);
  size(400,400);
  background(255);
  textSize(150);
  textAlign(CENTER,TOP);
}
void draw() {
  fill(random(256),255,255);
  text("ALEX",width/2,y);
  y = y + 1;
  if (y > height) {
    y = -150;
  }
}
