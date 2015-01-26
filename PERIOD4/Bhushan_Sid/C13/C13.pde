int x = 50;
int y = 50;
int size = 100;
float bcolor = random(360);
boolean xplus,  yplus = true;

void setup(){
  size(800,800);
  colorMode(HSB,360,100,100);
  background(bcolor,100,100);
  noStroke();
}

void draw() {
  background(bcolor,100,100);
  fill(bcolor-180,100,100);
  ellipse(x,y,size,size);
  if(x >= 800-size/2){
    if(xplus == true){
      xplus = false;
    } else if(xplus == false){
      xplus = true;
    }
  }
}


      
