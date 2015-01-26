int xval;

void setup()
{
  size(900,900);
  xval = 0;
}

void draw()
{
  if(xval > 900)
  {
    xval = 0;
  }
  xval = xval + 1;
  fill(255,0,0);
  rect(0 + xval,0,150,900);
  fill(255,95,0);
  rect(150+ xval,0,150,900);
  fill(255,255,0);
  rect(300+ xval,0,150,900);
  fill(0,255,0);
  rect(450+ xval,0,150,900);
  fill(0,0,255);
  rect(600+ xval,0,150,900);
  fill(255,0,255);
  rect(750+ xval,0,150,900);
  fill(255,0,255);
  rect(0 + xval,0,-150,900);
  fill(0,0,255);
  rect(-150 + xval,0,-150,900);
  fill(0,255,0);
  rect(-300 + xval,0,-150,900);
  fill(255,255,0);
  rect(-450 + xval,0,-150,900);
  fill(255,95,0);
  rect(-600 + xval,0,-150,900);
  fill(255,0,0);
  rect(-750 + xval,0,-150,900);
  
  
}
