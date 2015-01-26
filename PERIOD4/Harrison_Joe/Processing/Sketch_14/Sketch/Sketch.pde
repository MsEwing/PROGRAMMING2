PImage img;

void setup(){
size(400,400);
background(255);
img = loadImage("Stop.png");
}
void draw(){
  rect(random(400),random(400),random(400),random(400));
  fill(0,175,0);
  rect(0,260,400,140);//ground
  fill(0);
rect(135,172,10,100);//handle
image(img,100,100);//stop sign
noFill();
fill(255,255,0);
strokeWeight(1);
ellipse(250,230,190,190);//body
ellipse(142,227,50,50);//hand
noFill();
fill(0);
ellipse(220,200,30,30);//eye(left)
ellipse(280,200,30,30);//eye(right)
ellipse(250,270,60,30);//mouth
noFill();
println(mouseX,mouseY);
}
