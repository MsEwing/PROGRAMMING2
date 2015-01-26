int yvalue;

void setup()
{
  size(400,400);
  background(0);          // black screen
  yvalue = 0;                // start at the top of the screen
  strokeWeight(6);        // fairly large point size
  stroke(0,255, 0);       // green pen
  frameRate(10);          // update at 10 frames per second
}

void draw()
{
  if(yvalue < 200)          // Are we in the top half of the screen?
  {
      point(200, yvalue);    // Yes? = draw one point
  }
  else                          // No?  = draw two points
  {
      point(180, yvalue);
      point(190,yvalue);
  }
  
if(yvalue < 200)
{
  point(210,yvalue);
}
else
{
  point(220,yvalue);
  point(230,yvalue);
  point(100,yvalue);
}
 
 if(yvalue < 230);
 {
   point(220,yvalue);
   point(230,yvalue);
   point(250,yvalue);
 }

  yvalue = yvalue + 10;
  if (yvalue > 400)              // If we are at the bottom of the screen- wrap around
  {
    yvalue = 0;
    background(0);
  }
}


