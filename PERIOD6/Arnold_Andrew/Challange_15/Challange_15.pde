int yValue;

void setup() {
  size(400,400);
  background(0);
  yValue=0;
  strokeWeight(6);
  stroke(0,255,0);
  frameRate(10);
}
void draw() {
  yValue=yValue+10;
  if(yValue<100)
  {
    point(200,yValue);
  }
  else
  {
    point(180,yValue);
    point(220,yValue);
  }
  if(yValue>200);
  {
   point(160,yValue);
   point(140,yValue);
   point(240,yValue);
   point(260,yValue);
  }
  if(yValue>400)
  {
  background(0);
  yValue=0;
  }
}

