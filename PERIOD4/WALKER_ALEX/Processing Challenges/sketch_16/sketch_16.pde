int a;
int b;
int c;
int w = -1;
void setup() {
  size(800,800);
  background(255);
  stroke(0);
  strokeWeight(5);
  fill(127,127,127,16);
}
void draw() {
  w = w + 1;
  if (w == 0) {
    a = (int) random(800);
    b = (int) random(800);
    c = (int) random(800);
    arc(a,b,b,c,c,a);
  }
  if (w == 1) {
    triangle(a,b,b,c,c,a);
  }
  if (w == 2) {
    ellipse(a,b,c,a);
  }
  if(w == 3) {
    rect(a-200,b-200,c,a);
    w = -1;
  }
}
