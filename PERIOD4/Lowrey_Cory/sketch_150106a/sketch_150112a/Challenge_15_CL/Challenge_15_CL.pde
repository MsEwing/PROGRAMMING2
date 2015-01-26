int yvalue;

void setup()
{
  size(500,800);
  background(0);          // black screen
  yvalue = 0;                // start at the top of the screen
  strokeWeight(6);        // fairly large point size
       // green pen
  frameRate(80);          // update at 10 frames per second
}

void draw()
{
    stroke(random(255),random(255),random(255));
  if(yvalue < 200) // Are we in the top half of the screen?
  {
      point(250, yvalue);    // Yes? = draw one point
  }





 if((yvalue > 200 && yvalue < 400))  // Are we in the top half of the screen?                 // No?  = draw two points
  {
      point(230, yvalue);
      point(270, yvalue);
  }
  
  if((yvalue > 400 && yvalue < 600))  // Are we in the top half of the screen?                 // No?  = draw two points
  {
      point(200, yvalue);
      point(295, yvalue);
  }
  
  yvalue = yvalue + 4;
  if (yvalue > 800)             // If we are at the bottom of the screen- wrap around
  {
    yvalue = 0;
    background(0);
  }
}


