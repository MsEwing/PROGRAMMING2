int yvalue;

void setup()
{
  size(800,800);
  background(0);          // black screen
  yvalue = 0;                // start at the top of the screen
  strokeWeight(100);        // fairly large point size
  stroke(#FFFFFF);       // green pen
  frameRate(50);          // update at 10 frames per second
}

void draw()
{
  if(yvalue >= 0 && yvalue <= 100)          // Are we in the top half of the screen?
  {
      point(200, yvalue);    // Yes? = draw one point
 
  }
  if(yvalue >= 100 && yvalue <= 200) 
  {
      point(180, yvalue);
      point(220, yvalue);
      
  }
  if(yvalue >= 200 && yvalue <= 300)
  {
      point(160, yvalue);
      point(240, yvalue);
      point(260, yvalue);
      point(140, yvalue);
  }
  if(yvalue >= 300 && yvalue <= 400)
  {
      
      point(260, yvalue);
      point(140, yvalue);
      point(280, yvalue);
      point(120, yvalue);
      point(280, yvalue);
      point(120, yvalue);
  }
  if(yvalue >= 400 && yvalue <= 500)
  {
      point(100, yvalue);
      point(300, yvalue);
      point(260, yvalue);
      point(140, yvalue);
      point(280, yvalue);
      point(120, yvalue);
      point(280, yvalue);
      point(120, yvalue);
  }
  yvalue = yvalue + 10;
  if (yvalue > 400)       // If we are at the bottom of the screen- wrap around
  {
    yvalue = 0;
    background(0);
  }
}

