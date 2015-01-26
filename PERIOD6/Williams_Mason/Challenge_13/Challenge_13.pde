int xValue;

int yValue;




void setup()

{

size(400,400);

xValue = 0;

strokeWeight(25);

frameRate(25);

stroke(0);


}




void draw()

{

background(#F02C2C);

point(xValue,yValue);

stroke(xValue/400.0 * 255);



xValue ++;
yValue = xValue;

if (xValue > 400)


{

xValue = 0;

}

}

