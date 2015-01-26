int horizontal;
int vertical;

void setup()
{
 horizontal = 100;
 vertical = 100;
 size(500,500);
 background(0);
 strokeWeight(30);
 stroke(255);
 frameRate(100);
}

void draw()
{
  background(0);
  if(horizontal == 100 && vertical<401)
  {
    vertical += 10;
  }
  if(vertical == 400 && horizontal<401)
  {
   horizontal +=10; 
  }
  if(horizontal == 400 && vertical>99)
  {
   vertical -= 10; 
  }
  if(vertical == 100 && horizontal>99)
  {
   horizontal -= 10; 
  }
  stroke(255);
  point(vertical,horizontal);
}
