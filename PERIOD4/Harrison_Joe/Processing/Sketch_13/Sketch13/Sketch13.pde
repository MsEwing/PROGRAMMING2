int xValue;
int yValue;
int xValue2;
int yValue2;
int xValue3;
int yValue3;
int xValue4;
int yValue4;

void setup()
{
 size(400,400);
 xValue = 0;
 yValue = 0;
 xValue2 = 400;
 yValue2 = 400;
 xValue3 = 400;
 yValue3 = 0;
 xValue4 = 0;
 yValue4 = 400;
 strokeWeight(4);
 background(255);
 frameRate(40);
}
void draw()
{
 noStroke();
 fill(255,255,255,60); 
 rect(0,0,400,400);
 stroke(0);
 fill(random(255),random(255),random(255));
 
 ellipse(xValue,yValue,30,30);
 xValue = xValue + 5;
 if (xValue > 400)
{
 xValue = 0;
}
 yValue = yValue + 5;
 if (yValue > 400)
{
 yValue = 0;
}
 
 ellipse(xValue2,yValue2,30,30);
 xValue2 = xValue2 - 5;
 if (xValue2 < 0)
 {
 xValue2 = 400;
}
 yValue2 = yValue2 - 5;
 if (yValue2 < 0)
{
 yValue2 = 400;
}

 ellipse(xValue2,yValue2,30,30);
 xValue2 = xValue2 - 5;
 if (xValue2 < 0)
 {
 xValue2 = 400;
}
 yValue2 = yValue2 - 5;
 if (yValue2 < 0)
{
 yValue2 = 400;
}

xValue3-=5;
yValue3+=5;
if (xValue3 < 0 || yValue3 > 400) {
  xValue3 = 400;
  yValue3 = 0;
}
ellipse(xValue3, yValue3, 30, 30);

xValue4+=5;
yValue4-=5;
if (xValue4 > 400 || yValue3 < 0) {
  xValue4 = 0;
  yValue4 = 400;
}
ellipse(xValue4, yValue4, 30, 30);
}
