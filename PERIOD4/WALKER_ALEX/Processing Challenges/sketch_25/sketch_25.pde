float x;
int r;
void setup() {
  size(400,200);
  background(0);
  frameRate(20);
  strokeWeight(3);
  fill(0,150);
}
void draw() {
  stroke(0);
  rect(0,0,width,height);
  stroke(255);
  x = (x+61)%400;
  r = (int) random(3);
  if (r == 0){
    rect(x,75,50,50);
  }
  if (r == 1){
    ellipse(x+25,100,50,50);
  }
  if (r == 2){
    triangle(x,125,x+50,125,x+25,75);
  }
}
