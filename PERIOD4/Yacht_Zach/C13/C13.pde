int Potato = 5;
int Llama = 60;
int col = 0;
boolean torf = true;
void setup() {
  size(500,500);
    //background(0);
  
}
void draw() {
  noStroke();
  frameRate(Llama);
  background(255,255,255);
  fill(Potato,Potato,Potato);
  ellipse(Potato,Potato,Potato,Potato);
 //if (mousePressed && mouseButton != LEFT)//(torf = true)
 Potato = Potato +5;
  //if (800-1/2(Potato)==Potato)
 // torf = false;
 //if (mousePressed && mouseButton != LEFT)
 //strokeWeight(random(255));
 //if (mousePressed && mouseButton != RIGHT)
 strokeWeight(1);
col = col + 1;
if (keyPressed && key == 'r')
 background(0); 
if (Potato >= 500) {
  Potato = 1;
//torf = false;}
  if (torf = false){
  Potato = Potato - 1;}
  if (keyPressed && key == 'f')

  Llama = Llama + 1;
 if (keyPressed && key == 'a')
  frameRate(100);
  if (mousePressed && mouseButton != RIGHT)
 Potato = Potato - 1; 
  

 
 
 
 
  
  
  
}
}

