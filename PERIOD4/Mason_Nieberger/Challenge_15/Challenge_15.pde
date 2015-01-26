int yvalue = 0;

void setup()
{
  size(800,800);
  background(0);          // black screen
  yvalue = 0;                // start at the top of the screen
  strokeWeight(6);        // fairly large point size
  stroke(0,200, 0);       // green pen
  frameRate(10);          // update at 10 frames per second
}
void draw()
{
  if(yvalue < 200)          
  {
      point(400, yvalue);    
  }
  else                          
  { 
    if(yvalue < 400)
    {
      point(380, yvalue);
      point(420, yvalue);
    }
  else
  { 
    if(yvalue < 600){
      point(370, yvalue);
      point(430, yvalue);
      point(360, yvalue);
      point(440, yvalue);
    }
  else
  {
    point(350, yvalue);
    point(450, yvalue);
    point(340, yvalue);
    point(460, yvalue);
    point(330, yvalue);
    point(470, yvalue);
    point(320, yvalue);
    point(480, yvalue);
  }
  }
      
  }
  
  yvalue = yvalue + 10;
  if (yvalue > 800)              // If we are at the bottom of the screen- wrap around
  {
    yvalue = 0;
    background(0);
  }
}

