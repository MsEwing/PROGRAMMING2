int lol;
int lolz;

void setup()
{
 lol = 100;
 lolz = 100;
 size(500,500);
 background(0);
 strokeWeight(30);
 stroke(255);
 frameRate(100);
}

void draw()
{
  background(0);
  if(lol == 100 && lolz<401)
  {
    lolz += 10;
  }
  if(lolz == 400 && lol<401)
  {
   lol +=10; 
  }
  if(lol == 400 && lolz>99)
  {
   lolz -= 10; 
  }
  if(lolz == 100 && lol>99)
  {
   lol -= 10; 
  }
  stroke(random(255),random(255),random(255));
  point(lolz,lol);
}
