int xValue;
int yValue;

void setup()

{


  size(400,400);
 xValue=0;
 yValue=0;
 strokeWeight(25);
 frameRate(50);
 stroke(0);
}



void draw()  
{
  background(#74CCEA);
  fill(random(256),random(256),random(256));
  point(xValue,yValue);
  point(xValue,yValue);
  point(xValue,yValue);
  point(xValue,yValue);
  point(xValue,yValue);
  point(xValue,yValue);
 xValue=xValue+25;
yValue=yValue+25;
 if(xValue>400)
{
xValue=0;
yValue=0;
}
}
