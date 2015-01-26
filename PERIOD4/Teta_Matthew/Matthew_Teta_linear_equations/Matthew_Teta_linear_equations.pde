void setup() {
  size(500, 500);
  frame.setResizable(true);
  background(0);
}

float xPos = 0;
float yPos = 0;
float slope = 0;
float y = 0;

void draw() {
  background(0);
  if (xPos > width) {
    xPos = 0;
  }
  
  if (yPos > height) {
    yPos = 0;
  }
  
  slope = height/width;
  xPos++;
  y = (xPos * slope);
  println(y);
  yPos = y;
    
  strokeWeight(10);
  stroke(255);
  point(xPos, yPos);
}
