int xValue;
int yValue;

void setup()
{
  size(400,400);
  xValue = 0;
  strokeWeight(100);
  frameRate(100);
  stroke(0);
  
}

void draw()
{
  background(255);
  yValue = xValue;
  point(xValue,yValue);
  xValue = xValue + 1;
  stroke(xValue/400.0*255);
  if (xValue > 400)
  {
    xValue = 0;
  }  
} 
