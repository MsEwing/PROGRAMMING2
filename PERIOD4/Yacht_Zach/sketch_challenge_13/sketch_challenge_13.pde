int xValue;




void setup()

{

size(400,400);

xValue = 0;

strokeWeight(25);

frameRate(500);

stroke(0);

}




void draw()

{

background(255);

point(xValue,200);

xValue = xValue + 1;

if (xValue > 400)

{

xValue = 0;

}

}

