PImage img;

int x = 200;
float y = 234;
float xspeed = 1;
float yspeed = 3.3;
boolean dir = false;

void setup() {
size(400,400);

img = loadImage("images.jpg");

image(img,0,0,width,height);
  
fill(185,160,77,200);
rect(0,0,900,900);//image overlay


}

void draw() {

fill(0);
triangle(200,0,400,400,400,0);
triangle(0,400,0,0,200,0);//borders
rect(0,350,400,400);//bottom line


strokeWeight(0);
fill(#E2ED82);

triangle(246,229,246,171,297,198);
triangle(105,198,155,230,155,169);//sides of eye
ellipse(200,200,125,85);//back of eye

x = x + 5;//eye starts to move

y = y - 10;


  
  if (x < 138) {//eye go right
    dir = !dir;
  }
  
 if (x > 234) {//eye go left
    dir = !dir;
  }
  
  if (dir) {
    x = x - 1;
  } else {
    x = x + 1;
  }
  
fill(0);
ellipse(200,200,65,55);





println(mouseX, mouseY);

}
