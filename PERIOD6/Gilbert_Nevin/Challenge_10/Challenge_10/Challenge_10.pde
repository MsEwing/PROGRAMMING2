/**
 * Radial Gradient. 
 * 
 * Draws are series of concentric circles to create a gradient 
 * from one color to another.
 */

int dim;

void setup() {
  size(640, 360);
  dim = width;
  background(255,255,255);
  colorMode(RGB, 360, 100, 100);
  noStroke();
  ellipseMode(RADIUS);
  frameRate(100);
}

void draw() {
  background(255,255,255);
  for (int x = 0; x <= width; x+=dim) {
    drawGradient(x, height/2);
  } 
}

void drawGradient(float x, float y) {
  int radius = dim/2;
  float h = random(0, 360);
  for (int r = radius; r > 0; --r) {
    fill(h, 80, 80);
    ellipse(x, y, r, r);
    h = (h + 1) % 360;
  }
}

