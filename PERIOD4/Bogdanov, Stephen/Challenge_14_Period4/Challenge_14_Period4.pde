void setup() {
size(400,400);
strokeWeight(2);
}
void draw() {
//head
fill(#FFE308);
ellipse(200,200,400,400);
//eyes
fill(255);
ellipse(100,100,60,60);
ellipse(300,100,60,60);
fill(#1D66E0);
ellipse(100,100,50,50); 
ellipse(300,100,50,50);
fill(0);
ellipse(100,100,30,30);
ellipse(300,100,30,30);
//mouth
fill(0);
rect(100,200,200,150);
fill(#E30013);
rect(150,300,100,50);

saveFrame("challenge14.jpg");
}

