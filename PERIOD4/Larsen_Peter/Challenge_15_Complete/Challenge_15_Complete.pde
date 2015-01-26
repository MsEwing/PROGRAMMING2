int checkHalf;
int trueStroke;
int Random;
PFont f;

void setup()
{
  size(400,700);
  background(0);
  checkHalf = 0;
  trueStroke = 6;
  Random = (int) random(2);
  //strokeWeight(trueStroke);
  stroke(255,145,0);
  frameRate(10);
  fill(255);
  f = createFont("Arial",100);
  textFont(f,35);
  textAlign(CENTER);
  text("Make a tower that",200,250);
  text("is big at the bottom",200,285);
  text("and small at the top.",200,320);
  
  f = createFont("Arial",100);
  textFont(f,20);
  textAlign(CENTER);
  text("Controls:",200,355);
  text("Left Click = Move balls up",200,390);
  text("Right Click = Make balls larger or smaller",200,425);
  text("Middle Mouse Click = Erase balls",200,460);
  
}

void draw()
{
  if(checkHalf == 700)
    {
      textFont(f,30);
      textAlign(CENTER);
      text("LOST",200,350);   
    }
  textFont(f,24);
  textAlign(CENTER);
  text("Make a Tower (Click H for help)",200,650);
  if(keyPressed == true)
  {
    if(key == 'h')
    {
    f = createFont("Arial",100);
    textFont(f,35);
    textAlign(CENTER);
    text("Make a tower that",200,250);
    text("is big at the bottom",200,285);
    text("and small at the top.",200,320);
  
    f = createFont("Arial",100);
    textFont(f,20);
    textAlign(CENTER);
    text("Controls:",200,355);
    text("Left Click = Move balls up",200,390);
    text("Right Click = Make balls larger or smaller",200,425);
    text("Middle Mouse Click = Erase balls",200,460);
    }  
  }
  
  if(keyPressed == true)
  {
    if(key == 'w')
    {
      textFont(f,40);
      text("YOU WIN!!!",200,350); 
        if(checkHalf > 800);
        {
          checkHalf = 0;
          background(0);
        }
    } 
  }
  if(trueStroke < 0)
  {
    trueStroke = trueStroke + 10; 
  }
  strokeWeight(trueStroke);
  checkHalf = checkHalf + 10;
  if(checkHalf < 100)
  {
    point(200,checkHalf);
  }
  
  if(checkHalf < 200 && checkHalf > 100)
  {
    point(180,checkHalf);
    point(220,checkHalf);
  }
  
  if(checkHalf < 300 && checkHalf > 200)
  {
    point(200,checkHalf);
    point(240,checkHalf);
    point(160,checkHalf); 
  }
  
  if(checkHalf < 400 && checkHalf > 300)
  {
    point(220,checkHalf);
    point(260,checkHalf);
    point(140,checkHalf);
    point(180,checkHalf);
  }
  
  if(checkHalf < 500 && checkHalf > 400)
  {
    point(280,checkHalf);
    point(240,checkHalf);
    point(200,checkHalf);
    point(160,checkHalf);
    point(120,checkHalf);
  }
  
  if(checkHalf < 600 && checkHalf > 500)
  {
    point(300,checkHalf);
    point(260,checkHalf);
    point(180,checkHalf);
    point(220,checkHalf);
    point(140,checkHalf);
    point(100,checkHalf);
  }
  
  if(checkHalf < 700 && checkHalf > 600)
  {
    point(320,checkHalf); 
    point(280,checkHalf); 
    point(120,checkHalf);
    point(200,checkHalf);
    point(240,checkHalf);
    point(160,checkHalf);
    point(120,checkHalf);
    point(80,checkHalf);  
  }
  
  
  
  if(checkHalf > 760)
  {
    checkHalf = 0;
    background(0); 
  }
  println(mouseX, "+" , mouseY);
  

}

void mouseClicked()
{
  if(mouseButton == LEFT)
  {
    checkHalf = checkHalf - (int) random(100);
  }  
  if(mouseButton == RIGHT)
  {
    trueStroke = (int) random(2);
    if (trueStroke == 0) 
    {
      trueStroke = trueStroke + (int) random(10);
    }
    else
    {
      trueStroke = trueStroke - (int) random(10);
    }
  }
    if(mouseButton == CENTER)
    {
      stroke(0,0,0);
      strokeWeight(100);
      point(mouseX,mouseY);  
    }
    
    
    stroke(255,145,0);


}








 


