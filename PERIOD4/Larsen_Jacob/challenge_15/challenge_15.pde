int y = 0;

void setup() 
{ 
  size(1440,900);
  background(0);
  stroke(0,255,0);
  strokeWeight(6);
  frameRate(10);
}

void draw() 
{
  y = y + 10;
  if(y > 910)
  {
    y = 0;
    background(0);
  }
  
  if(y < 100)
  {
    point(y,600);
  }
  else if(y < 250)
  {
    point(y,580);
    point(y,620);
  }
  else if(y < 450)
  {
    point(y,640);
    point(y,560);
    point(y,650);
    point(y,550);
  }
  else if(y < 700)
  {
    point(y,660);
    point(y,670);
    point(y,680);
    point(y,540);
    point(y,530);
    point(y,520);
  }
  else if(y < 800)
  {
    point(y,690);
    point(y,700);
    point(y,710);
    point(y,720);
    point(y,510);
    point(y,500);
    point(y,490);
    point(y,480);
  }
}
  
