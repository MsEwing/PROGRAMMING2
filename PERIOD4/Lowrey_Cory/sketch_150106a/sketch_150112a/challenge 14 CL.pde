int xValue;
int yValue;



void setup()

{

size(400,400);
background(255);

xValue = 0;
yValue = 0;
strokeWeight(8);

frameRate(50);

stroke(40,30,90);

}




void draw()

{
  rectMode(CENTER);
  strokeWeight(4);
  fill(255,255,255,30);
rect(0,0,900,900);
fill(random(255),random(255),random(255));
ellipse(xValue,yValue,105,105);
rect(xValue,yValue,73,73);
ellipse(xValue,yValue,60,60);
rect(xValue,yValue,40,40);

xValue = xValue + 5;
yValue = yValue + 5;
if (xValue > 400)
if (yValue > 400)
{

xValue = 0;
yValue = 0;
}

}

