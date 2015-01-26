int x = 200;
int y = 200;
boolean yminus = true;
boolean yplus,xminus,xplus = false;

void setup()
{
  size(800,800);
  background(0);
  strokeWeight(25);
  stroke(0,200,0);
  frameRate(10);
}

void draw()
{
  point(x,y);
  if(x == 600 && y == 200)
  {
    xplus = false;
    yplus = true;
  }
  if(x == 600 && y == 600)
  {
    yminus = true;
    xminus = true;
  }
  if(x == 200 && y == 600)
  {
    xminus = false;    
    yminus = true;
  }
  if(x == 200 && y == 200)
  {
    yminus = false;
    xplus = true;
  }
  if(xplus)
  {
    x += 25;
  }
  if(yplus)
  {
    y += 25;
  }
  if(xminus)
  {
    x -= 25;
  }
  if(yminus == true)
  {
    y -= 25;
  }
}
