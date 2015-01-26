float s = 0;
float c = 0;
void setup() {
  colorMode(HSB);
  size(400,400);
  background(255);
  smooth();
  noStroke();
  textSize(50);
}


void draw()
{
  fill(c,255,255);
  translate(width/2,height/2);
  rotate(s);
  text("~", 100+s, 10);
  s = s + 0.1;
  c = c + 5;
  if (s >= 100) {
    s = s % 100;
  }
  if (c >= 255) {
    c = c % 255;
  }
  fill(0,0,255,10);
  rect(0,0,width,height);
  println(s);
}

