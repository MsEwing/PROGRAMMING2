final int size = 500; //size of screen
float h = 0; //hue of ellipse
int i; //width of ellipse
int x; //height of ellipse
boolean xup = true; //whether or not x is going up
void setup() {
  size(size,size);
  colorMode(HSB);
  background(0);
  frameRate(size/2); //sets frame rate to half size od screen
  i = 0;
  x = size; //sets x to size of screen
}
void draw() {
  if (!(mousePressed && mouseButton == RIGHT)) { //if right button is not pressed do everything
    h = h + .1; //add .1 to hue
    if (mousePressed && mouseButton == LEFT) {
      h = (round(random(2550)))/10; //if left button is pressed randomize color
    }
    stroke(h,255,255); //set color to hue at full brightness
    strokeWeight(2);
    noFill();
    ellipse(size/2,size/2,i,x); //make ellipse about the middle
    if (xup){ //if x is going up add to x and subtract from i
      i = i - 2;
      x = x + 2;
    }else{ //same but opposite
      i = i + 2;
      x = x - 2;
    }
    if (x > size) { //if height is larger than size, make x go down
      xup = false;
    }
    if (x < 0) { //same but opposite
      xup = true;
    }
    if (h >= 255) {
      h = 0;
    }
    fill(0,0,0,3); //fill very transparent black
    noStroke();
    rect(0,0,size,size); //make transparent retangle size of screen so past ellipses fade away
  }
}
