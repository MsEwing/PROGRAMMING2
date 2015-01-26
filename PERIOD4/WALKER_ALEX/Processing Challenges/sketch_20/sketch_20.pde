int i;
boolean sketchFullScreen() {
  return true;
}
void setup() {
  size(displayWidth,displayHeight);
  noFill();
}
void draw() {
  background(255);
  for(i = 0; i < 100; i++) {
    rainbow();
  }
}
void rainbow() {
  strokeWeight(random(10,50));
  stroke(random(256),random(256),random(256));
  float rainbowsize = random(100,width-100);
  ellipse(width/2,height,rainbowsize,rainbowsize);
}
