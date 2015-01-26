//make circle move

int xValue;
int yValue;
void setup()

{

size(400,400);

xValue =0;
yValue =0;
strokeWeight(90);

frameRate(4);

stroke(#FA0000);
//color of point


}




void draw()

{

background(382);
stroke(xValue/400.0*255);
point(xValue,yValue);


xValue = xValue + 25;
yValue = yValue + 25;

if (xValue > 400)


{

xValue = 0;

}


if(yValue > 400)

 {

 yValue = 0;

 }
}

