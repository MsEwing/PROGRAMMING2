int col1 = 255;
int col2 = 255;
int col3 = 255;
void setup() {
  size(800,800);
}

void draw() {
  background(col1,col2,col3);
  if (keyPressed && key == 'q')
 col1 = col1 - 1;
   if (keyPressed && key == 'a')
 col1 = col1 + 1;
   if (keyPressed && key == 'w')
 col2 = col2 - 1;
   if (keyPressed && key == 's')
 col2 = col2 + 1;
   if (keyPressed && key == 'e')
 col3 = col3 - 1;
 if (keyPressed && key == 'd')
 col3 = col3 + 1;
 //if (keyPressed && key == 'k')
// col3 = random(255);
}
