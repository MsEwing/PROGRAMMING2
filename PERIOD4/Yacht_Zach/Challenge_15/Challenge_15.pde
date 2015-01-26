int yvalue;

void setup()
{
  size(800,800);
  background(0);          // black screen
  yvalue = 0;                // start at the top of the screen
  strokeWeight(6);        // fairly large point size
  stroke(0,255, 0);       // green pen
  frameRate(10);          // update at 10 frames per second
}

void draw()
{
  if(yvalue < 200)          // Are we in the top half of the screen?
  {
      point(200, yvalue);    // Yes? = draw one point
  }
  else                          // No?  = draw two points
  {if(yvalue < 400)
     {point(180, yvalue);
      point(220, yvalue);
     }
 else
 {if(yvalue < 600)
   {
    point(160,yvalue);
    point(170,yvalue);
    point(230,yvalue);
    point(240,yvalue);
   }else
{point(150,yvalue); point(140,yvalue); point(130,yvalue); point(120,yvalue); point(250,yvalue);point(260,yvalue);point(270,yvalue);point(280,yvalue);point(290,yvalue);}
  }
 }
  yvalue = yvalue + 10;
  if (yvalue > 800)              // If we are at the bottom of the screen- wrap around
  {
    yvalue = 0;
    background(0);
   // point(160,yvalue);
   // point(170,yvalue);
    //point(230,yvalue);
    //point(240,yvalue);
  }
}
  

