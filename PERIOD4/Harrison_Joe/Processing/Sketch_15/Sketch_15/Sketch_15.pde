int yvalue;

void setup()
{
  size(400,800);
  background(0);          // black screen
  yvalue = 0;                // start at the top of the screen
  strokeWeight(6);        // fairly large point size
  stroke(0,255, 0);       // green pen
  frameRate(20);          // update at 10 frames per second
}

void draw()
{
  if(yvalue < 200)
{
  point(200,yvalue);
}
yvalue = yvalue + 5;




if((yvalue < 400 && yvalue > 200))
{
  point(180,yvalue);
  point(220,yvalue);
}

if((yvalue < 600 && yvalue > 400))
{
  point(160,yvalue);
  point(240,yvalue);
}



if((yvalue < 800 && yvalue > 600))
{
  point(140,yvalue);
  point(260,yvalue);
}


if(yvalue > 800)
{
  yvalue = 0;
  background(0); 
}
}
