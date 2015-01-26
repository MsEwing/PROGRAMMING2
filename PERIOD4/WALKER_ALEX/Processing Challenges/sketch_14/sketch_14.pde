void setup() {
  colorMode(HSB);
  size(500,500);
  background(0,0,127);
  frameRate(20);
}
void draw() {
  for(int x = 0; x < 4; x++) {
    stroke(random(256),255,255);
    fill(random(256),255,255);
    strokeWeight(random(200));
    if (x == 0) {
      rect(50,50,100,100);
    }
    if (x == 1) {
      ellipse(400,100,100,100);
    }
    if (x == 2) {
      rect(350,350,100,100);
    }
    if (x == 3) {
      ellipse(100,400,100,100);
    }
  }
  fill(0,0,127,100);
  noStroke();
  rect(0,0,width,height);
}
