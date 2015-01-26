float r = 0;
int x = 100;
int y = 100;
int x2 = 100;
int y2 = 100;
int x3 = 100;
int y3 = 100;
int starX1 = mouseX + -80;
int starY1 = mouseY + -100;
int value = 0;

void setup(){
  size(900,800);
  background(255);
  rectMode(CENTER);
  smooth(9999);

  
}
  
void draw(){
  
  frameRate(60);
 
  stroke(255);
  strokeWeight(1);
  
  //star
  ellipse(450,400,75,75);//centerCircle
  line(450,400,750,400);//lineRight
  line(150,400,750,400);//lineLeft
  line(450,400,450,125);//lineUp
  line(450,400,450,675);//lineDown
  line(450,400,178,126);//northWest
  line(450,400,713,127);//northEast
  line(415,430,176,680);//southWest
  line(450,400,729,682);//southEast
  
  fill(0,0,0,10);                
 triangle(416,363,449,121,487,363);//north
 triangle(450,354,706,133,494,399);//northEast
 triangle(485,367,754,398,482,431);//east
  triangle(493,399,720,674,450,447);//southEast
  triangle(483,429,449,680,414,429);//south
  triangle(450,440,182,673,403,397);//southWest
 triangle(419,429,144,399,413,365);//west
  triangle(405,398,186,134,450,353);//northWest
  


 
  //snowman
  fill(255);
  strokeWeight(0);
  ellipse(120,695,80,80);
  ellipse(120,635,70,70);
  ellipse(120,580,55,55);//body
  stroke(0);
  strokeWeight(15);
  point(105,570);
  point(125,570);
  strokeWeight(12);
  point(116,615);//buttons
  point(116,630);//buttons
  point(116,645);//buttons
  strokeWeight(1);
  fill(255,125,0);
  triangle(85,578,114,580,116,588);
  
  //snowman2
  fill(255);
  strokeWeight(0);
  ellipse(120*6.5,695,80,80);                                                                         
  ellipse(120*6.5,635,70,70);
  ellipse(120*6.5,580,55,55);//body
  stroke(0);
  strokeWeight(15);
  point(118*6.5,570);
  point(121.5*6.5,570);
  strokeWeight(12);
  point(779,615);//buttons
  point(779,630);//buttons
  point(779,645);//buttons
  strokeWeight(1);
  fill(255,125,0);
  triangle(778,583,777,577,116*7,580);
  
  //Makes square follow mouse
  stroke(0);
  strokeWeight(0);
  fill(0,0,0, 10);
  rect(450,400,800,700);
  translate(mouseX, mouseY);
 


 
  stroke(0, 0, 0, 0);
  fill(0,200,0,10);;
  ellipse(mouseX /50,mouseY /50,x,y);//green
  x = x + 7;
  y = y + 7;
  
  if(x > width + 350) {
    x = 0;
  }
  
   if(y > width + 350) {
    y = 0;
  }
 
  
  fill(155,0,0,10);
  ellipse(mouseX /50,mouseY /50,x2,y2);//red
  x2 = x2 + 3;
  y2 = y2 + 3;
  
    if(x2 > width + 350) {
    x2= 0;
  }
  
   if(y2 > width + 350) {
    y2 = 0;
  }
 

  //snow
  strokeWeight(15);
  stroke(255);
  point(random(-900,900),random(-800,800));
  
 
  
  strokeWeight(0);
  rotate(r);
  fill(255,255,255,50);
  rect(0,0,200,200);
  fill(random(0,255),random(0,255),random(0,255));
  rect(0,0,150,150);
  fill(255,250,250);
  rect(0,0,130,130);

strokeWeight(20);
  textSize(32);
  fill(0,200,0);
  text("Merry",-41,-5);
  noFill();
  fill(200,0,0);
  textSize(25);
  text("Christmas",-61,30);
  noFill();
  fill(255);//center circle
 

   r = r + 0.0355;
   
   println (mouseX);
   println (mouseY);
  
  
}

 void keyTyped() { 
 frameRate(100);
  stroke(255,255,0,255);
   if (value == 0) {
     point(starX1, starY1);
     starX1 = starX1 + 1;
     starY1 = starY1 + -1;
   }
 }
