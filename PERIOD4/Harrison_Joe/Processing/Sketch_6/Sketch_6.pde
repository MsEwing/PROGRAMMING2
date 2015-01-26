boolean sketchFullScreen(){
 return true; 
}
void setup(){
 size(displayWidth,displayHeight);
}

void draw(){
  frameRate(2000000000);
  strokeWeight(random(10)); 
  stroke(random(255),random(255),random(255));
 point(random(width),random(height));  
}
