import ddf.minim.*;
 AudioPlayer player; 
Minim minim; //audio context 

import processing.opengl.*;
 float a = 0.0;
 float sSize;
 int quantity = 300;
float [] xPosition = new float[quantity];
float [] yPosition = new float[quantity];
int [] flakeSize = new int[quantity];
int [] direction = new int[quantity];
int minFlakeSize = 1;
int maxFlakeSize = 5;

int timer=0;
int timeStop=0;
void setup() 
{
 size( 400, 400, OPENGL);
  frameRate(30);
  strokeWeight(.25);
  smooth();
  
  for(int i = 0; i < quantity; i++) {
    flakeSize[i] = round(random(minFlakeSize, maxFlakeSize));
    xPosition[i] = random(0, width);
    yPosition[i] = random(0, height);
    direction[i] = round(random(0, 1));
  }
 sSize = width / 6;
 fill(200,0,200);
  minim = new Minim(this); 
player = minim.loadFile("song1.mp3", 2048); 
player.play(); 
}
 
void draw()
{
  timer++;
  if (timer < 3299)
  {
    fill(255);
    background(0);
  }
  else
  {
    fill(random(255),random(255),random(255));
    background(random(128,255),random(128,255),random(255));
  }
  if (timer > 4759.8)
  {
    fill(255);
    background(0);
  }
  for(int i = 0; i < xPosition.length; i++) {
    
    ellipse(xPosition[i], yPosition[i], flakeSize[i], flakeSize[i]);
    
    if(direction[i] == 0) {
      xPosition[i] += map(flakeSize[i], minFlakeSize, maxFlakeSize, .1, .5);
    } else {
      xPosition[i] -= map(flakeSize[i], minFlakeSize, maxFlakeSize, .1, .5);
    }
    
    yPosition[i] += flakeSize[i] + direction[i]; 
    
    if(xPosition[i] > width + flakeSize[i] || xPosition[i] < -flakeSize[i] || yPosition[i] > height + flakeSize[i]) {
      xPosition[i] = random(0, width);
      yPosition[i] = -flakeSize[i];
    }
  }
  pushMatrix();
   a += 0.005;
  if(a > TWO_PI) { 
    a = 0.0; 
  }
  {
    translate(200,130);
    rotateY(a);
    fill(255);
    sphere(sSize - 35);
  }
 {
   translate(0,70);
   fill(255);
   sphere(sSize - 20);
 }
  {
  translate(0,100);
  fill(255);
  sphere(sSize);
  popMatrix();
  
  
  }
}

void stop() {
  player.close(); 
   minim.stop();
}
