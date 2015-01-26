
int xValue;
int yValue;

int x2;


void setup()

{

size(400,400);

xValue = 0;
x2 = 0;
yValue = 0;
strokeWeight(25);

frameRate(90);

stroke(0);
background(#EA1111);
}




void draw()

{

background(#EA1111);

point(xValue,yValue);
point(x2,200);

xValue = xValue + 1;
yValue = yValue + 1;

if (xValue > 380)

{

xValue = 0;

}

if (xValue > 350)
{
  x2 = x2 + 30;
}
else
{
  x2 = 0;
}


}

