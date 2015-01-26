int y1 = 0;
int x1 = 0;
void setup() {
  size(200,200);
  stroke(0);
  strokeWeight(5);
  fill(256);
}
void draw() {
  background(255);
  y1 = y1 + 5;
  x1 = x1 + 5;
  if (x1 > 200) {
    y1 = 0;
    x1 = 0;
  }
  int y2 = y1 + 10;
  int y3 = y2 + 10;
  int y4 = y3 + 10;
  int y5 = y4 + 10;
  int y6 = y5 + 10;
  int y7 = y6 + 10;
  int y8 = y7 + 10;
  int x2 = x1 + 10;
  int x3 = x2 + 10;
  int x4 = x3 + 10;
  int x5 = x4 + 10;
  int x6 = x5 + 10;
  int x7 = x6 + 10;
  int x8 = x7 + 10;
  point(x1,y1);
  point(x2,y1);
  point(x3,y1);
  point(x4,y1);
  point(x5,y1);
  point(x6,y1);
  point(x7,y1);
  point(x8,y1);
  point(x1,y8);
  point(x2,y8);
  point(x3,y8);
  point(x4,y8);
  point(x5,y8);
  point(x6,y8);
  point(x7,y8);
  point(x8,y8);
  point(x1,y1);
  point(x1,y2);
  point(x1,y3);
  point(x1,y4);
  point(x1,y5);
  point(x1,y6);
  point(x1,y7);
  point(x1,y8);
  point(x8,y1);
  point(x8,y2);
  point(x8,y3);
  point(x8,y4);
  point(x8,y5);
  point(x8,y6);
  point(x8,y7);
  point(x8,y8);
}
