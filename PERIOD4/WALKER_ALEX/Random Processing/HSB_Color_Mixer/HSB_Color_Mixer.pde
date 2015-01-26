int x;
int y;
int c = 0;
int ry = 25;
int h;
int fx = 0;
int fy = 0;
color rgb;
void setup() {
  size(355,355);
  strokeWeight(1);
  colorMode(HSB);
}
void draw() {
  if (mouseX > 0 && mouseX < 255 && mouseY > 0 && mouseY < 255) {
    cursor(CROSS);
  }else{
    cursor(ARROW);
  }
  background(193);
  noStroke();
  fill(127);
  for (h = 0; h < 256; h++) {
    strokeWeight(1);
    stroke(h,255,255);
    line(280,h+25,330,h+25);
  }
  fill(0);
  noStroke();
  rect(275,ry,60,25);
  c = ry - 25;
  for (x = 0; x < 256; x++) {
    for (y = 0; y < 256; y++) {
      stroke(c,x,y);
      point(x,y);
    }
  }
  stroke(0);
  strokeWeight(5);
  line(fx-10,fy,fx+10,fy);
  line(fx,fy-10,fx,fy+10);
  noStroke();
  fill(c,fx,fy);
  rect(280,295,50,45);
  fill(0);
  textSize(25);
  textAlign(LEFT,TOP);
  rgb = Color.HSBtoRGB(c,fx,fy);
  text("H: " + c + ", S: " + fx + ", B: " + fy,5,260);
  text("R: " + r + ", G: " + g + ", B: " + b,5,260);
}
void mouseClicked() {
  if (mouseButton == LEFT && mouseX > 280 && mouseX < 330 && mouseY > 25 && mouseY < 305) {
    ry = mouseY - 13;
  }
  if (mouseButton == LEFT && mouseX > 0 && mouseX < 255 && mouseY > 0 && mouseY < 255) {
    fx = mouseX;
    fy = mouseY;
  }
}
