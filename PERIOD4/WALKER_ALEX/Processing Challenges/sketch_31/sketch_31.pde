float r = 0;
int p = 0;
boolean pup = true;
void setup() {
  size(500,500);
  background(0);
  stroke(255);
  strokeWeight(5);
  frameRate(500);
}
void draw() {
  translate((width/2)+p,(height/2)+p);
  rotate(r);
  point(0 + r, 0);
  r = r + .03;
  if (pup) {
    p = p + 1;
  }else{
    p = p - 1;
  }
  if (p > 200){
    pup = false;
  }
  if (p < -200) {
  }
  println(p);
}
