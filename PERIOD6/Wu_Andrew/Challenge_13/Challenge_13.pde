int xValue;
int yValue;

void setup()
{
  size(400,400);
  xValue = 0;
  yValue = 0;
  strokeWeight(25);
  frameRate(30);
  stroke(0);
}

void draw()
{
  background(255);
  point(xValue,yValue);
  xValue = xValue + 25;
  yValue = yValue + 25;
  if (xValue > 400)
  {
       xValue = 0;
  }
   if (yValue > 400)
  {
       yValue = 0;
  }
}

