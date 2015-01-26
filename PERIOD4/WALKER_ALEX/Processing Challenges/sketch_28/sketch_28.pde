int x = 0;
float d = 0;
float r = .001;
boolean sketchFullScreen() {
  return true;
}
void setup() {
  size(displayWidth,displayHeight);
  colorMode(HSB);
  background(255);
  textSize(50);
  textAlign(CENTER, CENTER);
  fill(x, 255, 255);
}
void draw() {
  background(255);
  println();
  if (millis() > 3000) {
    x = x + 1;
    d = d + r;
    r = r + .0001;
    if (x >= 255) {
      x = 0;
    }
  }else{
    x = x + 1;
    d = d + r;
  }
  translate(width/2,height/2);
  rotate(d);
  text("-=[I have no idea what challenge 28 is]=-",0,0);
}

