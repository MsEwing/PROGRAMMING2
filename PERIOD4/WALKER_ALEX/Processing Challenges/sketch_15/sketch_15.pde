int y;
void setup() {
  size(400,400);
  background(0);
  y = 0;
  strokeWeight(6);
  stroke(255);
  frameRate(10);
}
void draw() {
  if(y < 100) {
    point(200,y);
  }
  if(y < 200 && y > 100) {
    point(100,y);
    point(300,y);
  }
  if(y < 300 && y > 200) {
    point(150,y);
    point(350,y);
    point(50,y);
    point(250,y);
  }
  if(y < 400 && y > 300) {
    point(75,y);
    point(175,y);
    point(275,y);
    point(375,y);
    point(25,y);
    point(125,y);
    point(225,y);
    point(325,y);
  }
  y = y + 10;
  if(y > 400) {
    y = 0;
    background(0);
  }
}
