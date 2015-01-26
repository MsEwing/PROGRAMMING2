PFont f;
float c = random(360);

void setup(){
  size(800,800);
  colorMode(HSB,360,100,100);
  background(c,80,90);
  f = createFont("Verdana",96);
  textAlign(CENTER);
  fill(0);
}

void draw(){
  background(random(360),80,90);
  fill(random(255));
  textFont(f,255);
  text("65535",400,500);
}
  
