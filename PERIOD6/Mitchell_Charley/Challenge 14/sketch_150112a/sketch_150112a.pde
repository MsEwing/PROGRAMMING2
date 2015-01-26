int xValue;
int yValue;
int zvalue;
int cvalue;
int dvalue;
int vvalue;

void setup()
{
 size(400,500);
 xValue=0;
 yValue=0;
 zvalue=0;
 cvalue=0;
 dvalue=0;
 vvalue=0;
 strokeWeight(20);
 frameRate(1);
 stroke(25);
}
void draw()
{
  background(180,50,167);
point(xValue,yValue);
fill(random(255),random(255),random(255));
point(zvalue,cvalue);
point(dvalue,200);
point(vvalue,250);

xValue = xValue + 25;
yValue = yValue + 25;
zvalue = zvalue + 20;
cvalue = cvalue + 20;
dvalue = dvalue + 25;
vvalue = vvalue + 20;

if (xValue > 400)
if (yValue > 400)
if (zvalue > 500)
if (cvalue > 500)
if(dvalue  > 200)
if(vvalue  > 250)
{
xValue = 0;
yValue = 0;
zvalue = 0;
cvalue = 0;
dvalue = 0;
vvalue = 0;

}

}
 

