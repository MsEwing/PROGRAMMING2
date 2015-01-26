boolean draw = true;


void setup(){
  size(800,800);
  colorMode(HSB,360,100,100);
  frameRate(10);
  rectMode(CENTER);
}

void draw(){
  if(key != 'r' && key != 'e'){
    draw = true;
  }
  if(draw == true){
    fill(random(360),80,100);
    background(0);
    ellipse(400,200,800,400);
    fill(random(360),80,100);
    rect(mouseX-random(10,20),mouseY-random(10,20),mouseY/2,mouseX/2);
  }
  saveFrame("image.gif");
}

void keyPressed(){
  int c = 0;
  if(key == 'r'){
     draw = false;
  }
  if(key == 'e'){
    draw = false;
    background(0);
    for(;c < 32;c ++){
      fill(random(360),80,100);
      rect(random(20,780),random(20,780),20,20);
    }
  }
    
}
