void setup()
{
  frameRate(100);
  size(720,720);
  background(random(256),random(256),random(256));
  rect(0,0,360,360);
  rect(360,360,720,720);
  ellipse(360,360,720,720);
  fill(random(256),random(256),random(256));
  rect(360,360,720,720);
  fill(random(256),random(256),random(256));
  rect(0,0,360,360);
  point(360,360);
   
}

void draw()
{
  fill(random(256),random(256),random(256)); 
  ellipse(360,360,720,720);
  strokeWeight(random(100));
  stroke(random(256),random(256),random(256));
}  
  void mouseClicked()
  {
     if (mouseButton == LEFT)
     {
        frameRate(0);
        stroke(random(256),random(256),random(256));       
     }     
     if (mouseButton == RIGHT)
     {
        frameRate(100);
     } 
  }
  
 
  
  
  
  
  
  

