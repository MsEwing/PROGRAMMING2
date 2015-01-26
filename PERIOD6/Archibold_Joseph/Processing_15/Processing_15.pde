int yvalue;

void setup() {
  size(500,500);
  yvalue = 0;
  frameRate(15);
  stroke(#3DFA00);
  strokeWeight(8);
  background (0);
}

void draw() {
  if(yvalue < 125) {
  point(250,yvalue) ;
  }
  if(yvalue > 125 && yvalue < 250) {
   point(230,yvalue);
   point(270,yvalue);
   }
  if(yvalue > 250 && yvalue < 375) {
   point(210,yvalue);
   point(190,yvalue);
   point(290,yvalue);
   point(310,yvalue);
  }
  if(yvalue > 375 && yvalue < 500) {
   point(170,yvalue);
   point(150,yvalue);
   point(130,yvalue);
   point(110,yvalue);
   point(330,yvalue);
   point(350,yvalue);
   point(370,yvalue);
   point(390,yvalue);
  }
   
   
   
  if(yvalue > 500) {
   yvalue = 0;
   background (0); 
  }
  
  
  
  
  yvalue += 10; 
}
