float size;

void setup() {
 size(400,400);
 background(0);
  frameRate(30); 
  colorMode(HSB);
}

void draw() {
  size = random(122);
 fill(random(255),random(255),random(255));
 ellipse(random(255),random(255),size,size);
 
}

