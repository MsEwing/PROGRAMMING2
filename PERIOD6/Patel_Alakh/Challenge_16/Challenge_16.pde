
float angle;
void setup()
{
  size(1440,900);
  frameRate(5);
  background(0,0,0);
  noStroke();
  rectMode(CENTER);
  stroke(random(256),random(256),random(256));
}
void draw()
{
  fill(255,255,255);
  rect(450,770,500,500);
  angle = angle + 1;
  if(angle > 360)
  {
    angle = 0;
  }
 float c = cos(angle); 
 rotate(c);
 
 
//     stroke(random(256),random(256),random(256));
//     point(770,15);
//     stroke(random(256),random(256),random(256));
//     point(770,30);
//     stroke(random(256),random(256),random(256));
//     point(770,45);
//     stroke(random(256),random(256),random(256));
//     point(770,60);
//     stroke(random(256),random(256),random(256));
//     point(770,75);  
//     stroke(random(256),random(256),random(256));
//     point(770,90);
//     stroke(random(256),random(256),random(256));
//     point(770+15,105);
//     stroke(random(256),random(256),random(256));
//     point(770-15,105);
}

