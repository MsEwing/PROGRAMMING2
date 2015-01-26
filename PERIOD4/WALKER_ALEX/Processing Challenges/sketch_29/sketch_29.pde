float x = 0;
float r = 0;
int c = 0;
void setup() {
  size(400,400);
  colorMode(HSB);
  background(255);
  strokeWeight(2);
  textAlign(CENTER,CENTER);
  textSize(100);
}
void draw() {
  fill(c,255,255);
  translate(width/2,height/2);
  rotate(r);
  text("~~~~~~~",0,50);
  c = c + 1;
  if (c > 255) {
    c = 0;
  }
  x = x + 1;
  r = r + .35;
}
