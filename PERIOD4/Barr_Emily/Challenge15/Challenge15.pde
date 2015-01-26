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
  if(yvalue < 50)          // Are we in the top half of the screen?
  {
      point(200, yvalue);    // Yes? = draw one point
  }
  else                          // No?  = draw two points
  {
      point(190, yvalue);
      point(210, yvalue);
  }
{
  if(yvalue < 100)
  {
   point(190, yvalue);
   point(210, yvalue);
  }
  else
  {
    point(180, yvalue);
    point(220, yvalue); 
  } 
  
}
  yvalue = yvalue + 10;
  if (yvalue > 400)              // If we are at the bottom of the screen- wrap around
  {
    yvalue = 0;
    background(0);
  }
  
}

