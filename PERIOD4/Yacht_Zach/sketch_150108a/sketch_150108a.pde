int xValue;




void setup()

{

size(400,400);

xValue = 0;

strokeWeight(25);

frameRate(500000);

stroke(0);

}




void draw()

{

background(255);

point(xValue,600);
point(xValue,550);
point(xValue,450);
point(xValue,350);
point(xValue,300);
point(xValue,250);

xValue = xValue + 25;

if (xValue > 400)

{

xValue = 0;

}

}
