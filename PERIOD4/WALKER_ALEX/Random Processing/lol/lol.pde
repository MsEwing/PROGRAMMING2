boolean sketchFullScreen() {
  return true;
}
float w = 1;
int stroke = 5;
void setup() {
  size(displayWidth,displayHeight);
  stroke(0);
  noCursor();
}
void draw() {
  strokeWeight(stroke);
  background(255);
  int x = mouseX;
  int y = mouseY;
  line(x,y,x,y+w*100);
  line(x,y,x+w*75,y+w*75);
  line(x,y+w*100,x+w*25,y+w*80);
  line(x+w*75,y+w*75,x+w*40,y+w*75);
  line(x+w*40,y+w*75,x+w*55,y+w*110);
  line(x+w*25,y+w*80,x+w*40,y+w*120);
  line(x+w*55,y+w*110,x+w*40,y+w*120);
  if (mousePressed) {
    w = w+.1;
    stroke = stroke + 1;
  }
}
