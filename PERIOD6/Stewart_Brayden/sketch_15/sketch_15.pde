int yvalue;

void setup()
{
  size(400,400);
  background(0);          
  yvalue = 0;               
  strokeWeight(6);
  stroke(0,255, 0);  
  frameRate(10);         
}

void draw()
{
  if(yvalue > 0 && yvalue <= 100)
  {
    point(200, yvalue);
  }
  if(yvalue > 100 && yvalue <= 200)
  {
    point(180, yvalue);
    point(220, yvalue);
  }
  if(yvalue > 200 && yvalue <= 300)
  {
    point(160, yvalue);
    point(140, yvalue);
    point(240, yvalue);
    point(260, yvalue);
  }
  if(yvalue > 300 && yvalue <= 400)
  {
    point(120, yvalue);
    point(100, yvalue);
    point(280, yvalue);
    point(300, yvalue);
    point(80, yvalue);
    point(60, yvalue);
    point(320, yvalue);
    point(340, yvalue);
  }
  yvalue = yvalue + 10;
  if (yvalue > 400)              
  {
    yvalue = 0;
    background(0);
  }
}

