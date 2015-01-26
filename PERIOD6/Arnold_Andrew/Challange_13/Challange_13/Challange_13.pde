float xValue;
float yValue;

void setup() {
  background(255);
  size(400,400);
  xValue=0;
  strokeWeight(50);
  frameRate(1000);
  stroke(0);
}

void draw() {
  background(255);
  stroke(xValue/400.0*255);
  yValue=xValue;
  point(xValue,yValue);
  xValue=xValue+.1;
  if(xValue>400)
  {
    xValue=0;
  }
}
