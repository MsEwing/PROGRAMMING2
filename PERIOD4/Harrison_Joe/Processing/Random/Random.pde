float r = 0;
boolean sketchFullScreen(){
 return true; 
}
void setup(){
  size(displayWidth,displayHeight);
  background(random(0,50),random(0,50),random(0,50));
  rectMode(CENTER);
  smooth();
  strokeWeight(3);
}
  
void draw(){
  fill(50,50,50, 25);
  rect(300,300,width,height);
  translate(mouseX, mouseY);
  frameRate(60);
  
  rotate(r);
  fill(100,0,100);
  rect(0,0,200,200);
  fill(random(0,255),random(0,255),random(0,255));
  rect(0,0,150,150);
  fill(100,0,100);
  rect(0,0,130,130);
  stroke(random(255),random(255),random(255));
  line(mouseX,mouseY,random(width),random(height));
  
  r = r + 0.055;
}
