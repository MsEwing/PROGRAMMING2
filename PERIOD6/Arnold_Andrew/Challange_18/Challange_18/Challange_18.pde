float xval;
float yval;
 
void setup()
{
  size(500,500); 
  background(0);
  xval = random(500);
  yval = 0;
  strokeWeight(7);
  stroke(#4C4AF5);
  frameRate(1000000000);
}
 
 
 
 
void draw()
{
  stroke(0);
  point(xval,yval);
  yval += 8;
  stroke(#5A8BEA);
  point(xval,yval);
   
  if (yval >= 480)
  {
    xval = random(500);
    yval = 0;
  }
   
}
