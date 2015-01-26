int xValue;

void setup()
{
  size(400,400);
  strokeWeight(25);
  frameRate(100);
}

void draw()
{
 background(random(255));
  point(xValue,200);
  
  if(xValue < 400)
  {
    xValue++;
     stroke(random(255),random(255),random(255));
    
  }
  else
  {
    xValue = 0;
  }
  saveFrame("challenge14.jpg");
}
