void setup() {
  size(800,800);

fill(#9E1986);
}

void draw() {
rectMode(CENTER);//makes the rectangle center in the mouse

fill(random(255),random(255),random(255));

ellipse(mouseX,mouseY,370,280);//outer oval 1
fill(random(255),random(255),random(255));
ellipse(mouseX,mouseY,350,270);//inner oval
fill(20,59,36);
ellipse(mouseX,mouseY,280,370);//outer oval 2
noFill();

fill(random(255),random(255),random(255));

ellipse(mouseX,mouseY,300,300);//circle
fill(57,23,98);
  rect(mouseX,mouseY,250,250);
  fill(255,0,255);
ellipse(mouseX,mouseY,200,200);//inner circle 
fill(25,45,50,50);
rect(0,0,2000,2000);

}

