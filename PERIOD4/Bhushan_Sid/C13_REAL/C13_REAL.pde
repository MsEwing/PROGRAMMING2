int xValue,yValue = 0;

void setup(){
  size(800,800);
  strokeWeight(150);
  frameRate(30);
  stroke(0);
}




void draw(){
  background(204);
  yValue = xValue;
  stroke(xValue/800.0*255);
  point(xValue,yValue);
  xValue = xValue + 25;
  if (xValue > 800){
    xValue = 0;
  }
}
