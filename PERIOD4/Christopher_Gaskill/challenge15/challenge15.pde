int yvalue;
 

void setup()
{
  size(400,800);
  background(0);          // black screen
  yvalue = 0;  // start at the top of the screen
 
          // fairly large point size
  
  frameRate(20);          // update at 10 frames per second
}

void draw()
{
  stroke(random(100,255));       // multicolor pen
 
  
  
  
  if(yvalue < 200)          // Are we in the top half of the screen?
  {
      strokeWeight(6);
      stroke(random(50,255));       // multicolor pen
      point(200, yvalue);    // Yes? = draw one point
      
     
      stroke(0);
      strokeWeight(0);
      fill(255,255,255,10);
      ellipse(200, yvalue,15,15);
  }
  
  yvalue = yvalue + 5;
 
  
  
  
  
   if((yvalue < 400) && (yvalue > 200))
     // Are we in the top half of the screen?
  {
    
      strokeWeight(6);
      stroke(random(50,255));
      point(180, yvalue);    // Yes? = draw one point
      point(220, yvalue);
   
      
      stroke(0);
      strokeWeight(0);
      fill(255,255,255,10);
      ellipse(180, yvalue,15,15);    // Yes? = draw one point
      ellipse(220, yvalue,15,15);
  }   

  
  
   
   if((yvalue < 800) && (yvalue > 400))
    // Are we in the top half of the screen?
  {
        strokeWeight(6);
      stroke(random(50,255));
    
    point(160, yvalue);    // Yes? = draw one point
    point(240, yvalue);
  
    
    stroke(0);
    strokeWeight(0);
    fill(255,255,255,10);
    
    ellipse(160, yvalue,15,15);    // Yes? = draw one point
    ellipse(240, yvalue,15,15);
  
  }   

 
  
  
  
 
  yvalue = yvalue + 5;
  if (yvalue > 800)              // If we are at the bottom of the screen- wrap around
  {
    yvalue = 0;
    background(0);
  }
}

