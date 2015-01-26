int b = 255;
int a = 255;
boolean torf = true;
void setup() {
 size(400,400); 
}
void draw() {
  background(255,255,b);
  b -= 1;
  if (b <= 0) {
   torf = false;
   rect(200,200,200,200);
  }
  if (torf = false)
  { a = a - 1;
  }
}
  
  

