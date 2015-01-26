int x0 = (int) random(1000);
int x1 = (int) random(1000);
int x2 = (int) random(1000);
int x3 = (int) random(1000);
int x4 = (int) random(1000);
int x5 = (int) random(1000);
int x6 = (int) random(1000);
int x7 = (int) random(1000);
int x8 = (int) random(1000);
int x9 = (int) random(1000);
int y0 = (int) random(300);
int y1 = (int) random(300);
int y2 = (int) random(300);
int y3 = (int) random(300);
int y4 = (int) random(300);
int y5 = (int) random(300);
int y6 = (int) random(300);
int y7 = (int) random(300);
int y8 = (int) random(300);
int y9 = (int) random(300);
int starx = 350;
int stary = 75;
int e = 1;
void setup() {
  size(1000,500);
  background(80,230,230);
  frameRate(50);
}
void draw() {
  blueify();
  snow();
  ground();
  snowman();
  snowface();
  tree();
  star();
}
void star() {
  noStroke();
  fill(220,200,30);
  triangle(starx-(6),stary-(2),starx-(6),stary+(2),starx+(0),stary-(15));
 // triangle(starx(),stary(*e),starx(*e),stary(*e),starx(*e),stary(*e));
//  triangle(starx(),stary(*e),starx(*e),stary(*e),starx(*e),stary(*e));
 // triangle(starx(*e),stary(*e),starx(*e),stary(*e),starx(*e),stary(*e));
 // triangle(starx(*e),stary(*e),starx(*e),stary(*e),starx(*e),stary(*e));
}
void tree() {
  noStroke();
  fill(100,50,0);
  rect(300,400,100,50);
  fill(0,127,0);
  triangle(160,400,540,400,350,275);
  triangle(180,350,520,350,350,225);
  triangle(200,300,500,300,350,200);
  triangle(225,250,475,250,350,150);
  triangle(250,200,450,200,350,100);
  triangle(275,150,425,150,350,75);
}
void snowman() {
  noStroke();
  fill(245);
  ellipse(900,325,100,100);
  fill(250);
  ellipse(900,250,75,75);
  fill(255);
  ellipse(900,200,50,50);
}
void snowface() {
  strokeWeight(5);
  stroke(0);
  point(900,265);
  point(900,250);
  point(900,235);
  point(910,190);
  point(890,190);
  point(885,205);
  point(890,210);
  point(895,213);
  point(900,214);
  point(905,213);
  point(910,210);
  point(915,205);
  strokeWeight(1);
  stroke(255,10,0);
  fill(255,10,0);
  triangle(898,198,898,202,910,200);
}
void ground() {
  strokeWeight(200);
  stroke(240);
  curve(200,1050,0,450,1100,450,600,250);
}
void snow() {
  x0 = x0 + (int) random(1,2);
  x1 = x1 + (int) random(1,2);
  x2 = x2 + (int) random(1,2);
  x3 = x3 + (int) random(1,2);
  x4 = x4 + (int) random(1,2);
  x5 = x5 + (int) random(1,2);
  x6 = x6 + (int) random(1,2);
  x7 = x7 + (int) random(1,2);
  x8 = x8 + (int) random(1,2);
  x9 = x8 + (int) random(1,2);
  
  y0 = y0 + (int) random(3,6);
  y1 = y1 + (int) random(3,6);
  y2 = y2 + (int) random(3,6);
  y3 = y3 + (int) random(3,6);
  y4 = y4 + (int) random(3,6);
  y5 = y5 + (int) random(3,6);
  y6 = y6 + (int) random(3,6);
  y7 = y7 + (int) random(3,6);
  y8 = y8 + (int) random(3,6);
  y9 = y8 + (int) random(3,6);
  
  if (x0 >= 1000) {
    x0 = x0 - 1000;
  }
  if (x1 >= 1000) {
    x1 = x1 - 1000;
  }
  if (x2 >= 1000) {
    x2 = x2 - 1000;
  }
  if (x3 >= 1000) {
    x3 = x3 - 1000;
  }
  if (x4 >= 1000) {
    x4 = x4 - 1000;
  }
  if (x5 >= 1000) {
    x5 = x5 - 1000;
  }
  if (x6 >= 1000) {
    x6 = x6 - 1000;
  }
  if (x7 >= 1000) {
    x7 = x7 - 1000;
  }
  if (x8 >= 1000) {
    x8 = x8 - 1000;
  }
  if (x9 >= 1000) {
    x9 = x9 - 1000;
  }
  
  if(y0 >= 325) {
    y0 = y0 - 300;
  }
  if(y1 >= 325) {
    y1 = y1 - 300;
  }
  if(y2 >= 325) {
    y2 = y2 - 300;
  }
  if(y3 >= 325) {
    y3 = y3 - 300;
  }
  if(y4 >= 325) {
    y4 = y4 - 300;
  }
  if(y5 >= 325) {
    y5 = y5 - 300;
  }
  if(y6 >= 325) {
    y6 = y6 - 300;
  }
  if(y7 >= 325) {
    y7 = y7 - 300;
  }
  if(y8 >= 325) {
    y8 = y8 - 300;
  }
  if(y9 >= 325) {
    y9 = y9 - 300;
  }
  
  stroke(240);
  
  strokeWeight(random(3,5));
  point(x0,y0);
  strokeWeight(random(3,5));
  point(x1,y1);
  strokeWeight(random(3,5));
  point(x2,y2);
  strokeWeight(random(3,5));
  point(x3,y3);
  strokeWeight(random(3,5));
  point(x4,y4);
  strokeWeight(random(3,5));
  point(x5,y5);
  strokeWeight(random(3,5));
  point(x6,y6);
  strokeWeight(random(3,5));
  point(x7,y7);
  strokeWeight(random(3,5));
  point(x8,y8);
  strokeWeight(random(3,5));
  point(x9,y9);
}
void blueify() {
  strokeWeight(0);
  fill(80,230,230,100);
  rect(0,0,width,height);
}
