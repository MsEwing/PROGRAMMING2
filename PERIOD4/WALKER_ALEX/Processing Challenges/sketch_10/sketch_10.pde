boolean sketchFullScreen() {
  return true;
}
void setup() {
  size(1500,1000);
  background(127);
  frameRate(20);
}
void draw() {
  strokeWeight(random(height/2));
  stroke(random(255),random(255),random(255));
  fill(random(255),random(255),random(255));
  ellipse(random(width),random(height),random(height),random(height));
  strokeWeight(random(height/2));
  stroke(random(255),random(255),random(255));
  fill(random(255),random(255),random(255));
  rect(random(width)-width/2,random(height)-height/2,random(height),random(height));
  strokeWeight(random(height/2));
  stroke(random(255),random(255),random(255));
  fill(random(255),random(255),random(255));
  line(random(width),random(height),random(width),random(height));
  strokeWeight(random(height/2));
  stroke(random(255),random(255),random(255));
  fill(random(255),random(255),random(255));
  triangle(random(width),random(height),random(width),random(height),random(width),random(height));
}
