int Fred;
int Paul;
//int Color;


void setup()
{
   size(400,400);
   Fred = 0;
   //Color = 255;
   strokeWeight(50);
   frameRate(20); 
}  

void draw()
{
   stroke(Paul - 120, Paul - 80, Paul - 100); 
   background(255);
   point(Fred,Paul);
   Fred = Fred + 10;
   Paul = Paul + 10; 
   if (Fred > 400)
   {
      Fred = 0; 
   }
   if (Paul > 400)
   {
      Paul = 0; 
   }
   //if (Paul > 25)
   //{
    //  Color = Color - 50;
   //}
}
