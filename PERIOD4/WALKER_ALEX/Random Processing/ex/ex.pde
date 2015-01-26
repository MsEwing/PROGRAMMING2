void setup() {
  size(400,400);
  background(0);
  stroke(255);
}
void draw() {
  line(200,200,random(400),400);
  line(200,200,random(400),0);
  line(200,200,400,random(400));
  line(200,200,0,random(400));
  if(mousePressed) {
    background(0);
  }
}

