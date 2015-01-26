float x,y = 0;
float h = 0;
float b = 100;
float xdec,ydec = 0;
float strw = 4;
boolean plusx,plusy = true;

void setup()
{
  colorMode(HSB,360,100,100);
  size(800,800);
  background(0);
  strokeWeight(strw + 1);
}

void draw()
{
  if(strw <= 0)
  {
    strw = 1;
  }
  strokeWeight(strw + 1);
  h = x % 360;
  b = (800 - y) / 8;
  xdec = random(2);
  ydec = random(2);
  stroke(h,100,b);
  point(x,y);
  if(xdec >= 1)
  {
    plusx = true;
  }
  else
  {
    plusx = false;
  }
  if(ydec >= 1)
  {
    plusx = true;
  }
  else
  {
    plusx = false;
  }
  if(plusx == true)
  {
    x += strw;
  }
  if(plusx == false)
  {
    x -= strw;
  }
  if(plusy == true)
  {
    y += strw;
  }
  if(plusy == false)
  {
    y -= strw;
  }
  if(x <= 0)
  {
    x += 10;
  }
  if(y <= 0)
  {
    y += 10;
  }
  if(x >= 800)
  {
    x -= random(600,800);
    y += random(100,300);
  }
  if(y >= 800)
  {
    y -= random(600,800);
    x += random(100,300);
  }
}

void keyPressed()
{
  if(key == 'z' || key == 'Z' || key == '-')
  {
    frameRate(frameRate - 10);
  }
  else if(key == ' ')
  {
    println("f: " + frameRate);
    println("s: " + strw);
    
  }
  else
  {
    frameRate(frameRate + 10);
  }
}

void mousePressed()
{
  if(mouseButton == LEFT)
  {
    strw += 5;
  }
  if(mouseButton == RIGHT)
  {
    strw -= 5;
  }
  if(mouseButton == CENTER)
  {
    strw = 4;
  }
}
