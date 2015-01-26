int position = 10;
int random = (int) random(600);
int position1 = -110;
int random1 = (int) random(600);
int position2 = -210;
int random2 = (int) random(600);
void setup() {
  size(600,400);
  background(255);
  stroke(0,0,255);
  strokeWeight(5);
  frameRate(100);
}
void draw() {
  strokeWeight(7);
  stroke(255);
  point(random,position);
  point(random1,position1);
  point(random2,position2);
  strokeWeight(5);
  stroke(0,0,255);
  random = random + 2;
  position = position + 5;
  random1 = random1 + 2;
  position1 = position1 + 5;
  random2 = random2 + 2;
  position2 = position2 + 5;
  if (random > 600) {
    random = random - 600;
  }
  if (random1 > 600) {
    random1 = random1 - 600;
  }
  if (random2 > 600) {
    random2 = random2 - 600;
  }
  point(random,position);
  point(random1,position1);
  point(random2,position2);
  if (position > 390) {
    stroke(0);
    point(random,position);
    stroke(0,0,255);
    position = 10;
    random = (int) random(600);
  }
  if (position1 > 390) {
    stroke(0);
    point(random1,position1);
    stroke(0,0,255);
    position1 = 10;
    random1 = (int) random(600);
  }
  if (position2 > 390) {
    stroke(0);
    point(random2,position2);
    stroke(0,0,255);
    position2 = 10;
    random2 = (int) random(600);
  }
}
