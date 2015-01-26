int r = 0;
int f = 0;
size(displayWidth-20,150);
background(0);
colorMode(HSB);
while (r < width) {
  fill(f,255,255);
  rect(r,62,25,25);
  r = r + 25;
  f = f + 25;
  if (f > 225){
    f = 0;
  }
}
