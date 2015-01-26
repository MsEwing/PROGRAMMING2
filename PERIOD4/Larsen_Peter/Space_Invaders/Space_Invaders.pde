int RectMove = 360;
int LaserMove = 600;
int LaserMove2 = 580;


void setup()
{
  size(720,720);
  background(256,256,256); 
}

void draw()
{
  rect(RectMove,600,100,100);
  LaserMove = LaserMove + 20;
  LaserMove2 = LaserMove2 + 20;
}

void mouseClicked()
{
  if (mouseButton == LEFT)
  {
    background(256,256,256);
    RectMove = mouseX;
  }
  if (mouseButton == RIGHT)
  {
    line(mouseX,LaserMove, mouseX , LaserMove2);   
  }
}











