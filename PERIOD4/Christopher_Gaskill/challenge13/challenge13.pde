int xValue;
int yValue;

int x2Value;
int y2Value;

int x3Value;
int y3Value;



void setup()

{

size(400,400);


xValue = 0;
yValue = 0;

x2Value = 375;
y2Value = 400;

x3Value = 400;
y3Value = 375;

strokeWeight(5);

frameRate(59.94);

stroke(0);

background(50);

}




void draw()

{

fill(255,255,255,50);
rect(0,0,400,400);
strokeWeight(5);
fill(random(0,255),random(0,255),random(0,255));
ellipse(xValue,yValue,30,30);
ellipse(x2Value,y2Value,20,20);
ellipse(x3Value,y3Value,20,20);


xValue = xValue + 5;
yValue = yValue + 5;

x2Value = x2Value - 5;
y2Value = y2Value - 5;

x3Value = x3Value - 5;
y3Value = y3Value - 5;

if (xValue > 400)

{

xValue = 0;

}

if (yValue > 400)

{

yValue = 0;

}

if (x2Value < 0)

{

x2Value = 400;

}

if (y2Value < 0)

{

y2Value = 400;

}
if (x3Value < 0)
{
x3Value = 400;
}

if (y3Value < 0)
{
y3Value = 400;
}

strokeWeight(0);
fill(255);
ellipse(400,0,300,300);
ellipse(0,400,300,300);
}
  
  
