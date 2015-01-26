int Potato = 50;
boolean torf = true;
void setup() {
  size(1000,1000);
   background(0);
  
}

void draw() {
  
  fill(random(255),random(255),random(255));
 rect(50,random(800),random(800),random(800));
  quad(500,random(800),random(800),random(800),random(800),random(800),random(800),random(800));
   ellipse(Potato,Potato,Potato,Potato);
  if (torf = true) Potato = Potato + 1;
  if (Potato == 800)
  torf = false;
  if (torf = false) Potato = Potato - 1;
}
