int p = 0;
int s = 0;
void setup() {
  colorMode(HSB);
  size(600,600);
  strokeWeight(20);
  background(0);
}
void draw() {
  if (s == 0) {
    stroke(0,255,255);
    point(p*10,p);
  }
  if (s == 1) {
    stroke(51,255,255);
    point(p*10,p+100);
  }
  if (s == 2) {
    stroke(102,255,255);
    point(p*10,p+200);
  }
  if (s == 3) {
    stroke(153,255,255);
    point(p*10,p+300);
  }
  if (s == 4) {
    stroke(205,255,255);
    point(p*10,p+400);
  }
  if (s == 5) {
    stroke(255,255,255);
    point(p*10,p+500);
    s = -1;
  }
  if (p > 72) {
  background(0);
  p = -1;
  }
  s = s + 1;
  p = p + 1;
}
