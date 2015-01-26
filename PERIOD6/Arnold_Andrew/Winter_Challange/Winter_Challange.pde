float angle=0;
float xVal=200;
float yVal=200;

void setup() {
  background(0);
  noStroke();
  size(400,400,P3D);
  colorMode(HSB);
  frameRate(600);
}

void draw() {
  fill((xVal+yVal+random(-10,10))/800.0*360,255,255);
  translate(xVal,yVal);
  angle = (angle + 10) % 360;
  xVal = abs((xVal + random(-10,10)) % 400);
  yVal = abs((yVal + random(-7,7)) % 400);
  box(25);
}
