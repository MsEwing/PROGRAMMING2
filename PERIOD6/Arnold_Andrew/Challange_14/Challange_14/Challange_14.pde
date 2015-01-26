void setup() {
  size(400,400);
  background(0);
  noStroke();
  fill(#4DADFF);
  ellipse(200,200,400,300);
}
void draw() {
  fill(random(100,255),random(100,255),random(100,255));
  rect(100,100,50,100);
  rect(200,100,50,100);
  fill(random(100,255),random(100,255),random(100,255));
  arc(180,250,200,100,radians(0),radians(180));
}
