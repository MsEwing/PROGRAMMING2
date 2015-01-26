import ddf.minim.*;
AudioPlayer player;
Minim minim;
int[] x = new int[50];
int[] y = new int[50];
int star = 50;
boolean starup = true;
float s = 200;
int[] f = new int[61];
int[] fx = new int[61];
int[] fy = new int[61];
int bc = 0;
int b = 63;
float t = 500;
boolean tup = true;
int tcount = 0;
void setup() {
  size(1000, 500);
  background(80, 230, 230);
  frameRate(50);
  minim = new Minim(this);
  player = minim.loadFile("music.mp3", 2048);
  player.play();
  for (int xcycle = 0; xcycle < 50; xcycle++) {
    x[xcycle] = (int) random(1000);
  }
  for (int ycycle = 0; ycycle < 50; ycycle++) {
    y[ycycle] = (int) random(300);
  }
  for (int fcycle = 1; fcycle < 61; fcycle++) {
    f[fcycle] = (int) random(256);
  }
  lightsetup();
}
void chicken() {
}
void draw() {
  blueify();
  snowman();
  snowface();
  snow();
  ground();
  tree();
  star();
  treelights();
  christmastext();
  if (mousePressed && mouseButton == LEFT) {
    randomize();
  }
  if (mousePressed && mouseButton == RIGHT) {
    resetsnow();
  }
}
void stop() {
  player.close();
  minim.stop();
  super.stop();
}
void mouseWheel(MouseEvent event) {
  int e = (int) event.getCount();
  if (e == 1) {
    snowup();
  }
  if (e == -1) {
    snowdown();
  }
}
void resetsnow() {
  s = 200;
}
void christmastext() {
  colorMode(RGB);
  t = 700 - (s*.7);
  if (tup) {
    tcount = tcount + 1;
  }else{
    tcount = tcount - 1;
  }
  textAlign(LEFT, CENTER);
  fill(0);
  text("Merry Chirstmas",300,t);
  if (tcount < 20) {
    fill(127,0,0);
  }else{
    fill(0,127,0);
  }
  textSize(50);
  text("Merry Chirstmas",302,t+2);
  if (tcount > 40){
    tup = false;
  }
  if (tcount < 0){
    tup = true;
  }
}
void snowdown() {
  if (s > 180) {
    s = s - 5;
  }
}
void snowup() {
  if (s > 180) {
    s = s + 5;
  }
}
void treelights() {
  colorMode(HSB);

  strokeWeight(5);
  stroke(0, 0, 0);
  noFill();

  curve(300, 25, 300, 125, 400, 125, 400, 25);
  curve(275, 75, 275, 175, 425, 175, 425, 75);
  curve(255, 125, 255, 225, 445, 225, 445, 125);
  curve(235, 175, 235, 275, 465, 275, 465, 175);
  curve(215, 225, 215, 325, 485, 325, 285, 225);
  curve(200, 275, 200, 375, 500, 375, 500, 275);

  if (b == 63) {
    bc = bc + 1;
    if (bc >= 25) {
      b = 255;
    }
  }
  if (b == 255) {
    bc = bc - 1;
    if (bc <= 0) {
      b = 63;
    }
  }
  for (int fcycle = 1; fcycle < 60; fcycle++) {
    fill(f[fcycle],255,b);
    light(fx[fcycle], fy[fcycle]);
  }
}
void star() {
  colorMode(RGB);
  noStroke();
  fill(220, 200, 30);
  star(350, 75, star, star/3, 5);
  if (starup) {
    star = star + 1;
  } else {
    star = star - 1;
  }
  if (star > 60) {
    starup = false;
  }
  if (star < 40) {
    starup = true;
  }
}
void tree() {
  colorMode(RGB);
  noStroke();
  fill(100, 50, 0);
  rect(300, 400, 100, 50);
  fill(0, 127, 0);
  triangle(160, 400, 540, 400, 350, 275);
  triangle(180, 350, 520, 350, 350, 225);
  triangle(200, 300, 500, 300, 350, 200);
  triangle(225, 250, 475, 250, 350, 150);
  triangle(250, 200, 450, 200, 350, 100);
  triangle(275, 150, 425, 150, 350, 75);
}
void snowman() {
  colorMode(RGB);
  noStroke();
  fill(245);
  ellipse(900, 325, 100, 100);
  fill(250);
  ellipse(900, 250, 75, 75);
  fill(255);
  ellipse(900, 200, 50, 50);
}
void snowface() {
  colorMode(RGB);
  strokeWeight(5);
  stroke(0);
  point(900, 265);
  point(900, 250);
  point(900, 235);
  point(910, 190);
  point(890, 190);
  if (s < 400) {
    point(885, 205);
    point(890, 210);
    point(895, 213);
    point(900, 214);
    point(905, 213);
    point(910, 210);
    point(915, 205);
  } else {
    point(885, 214);
    point(890, 210);
    point(895, 206);
    point(900, 205);
    point(905, 206);
    point(910, 210);
    point(915, 214);
  }
  strokeWeight(1);
  stroke(255, 10, 0);
  fill(255, 10, 0);
  triangle(898, 198, 898, 202, 910, 200);
}
void ground() {
  colorMode(RGB);
  strokeWeight(s);
  stroke(240);
  s = s + .1;
  curve(200, 1050, 0, 450, 1100, 450, 600, 250);
}
void snow() {
  colorMode(RGB);
  
  for (int xcycle = 0; xcycle < 50; xcycle++){
    x[xcycle] = x[xcycle] + (int) random(1, 2);
  }
  for (int ycycle = 0; ycycle < 50; ycycle++){
    y[ycycle] = y[ycycle] + (int) random(3, 6);
  }
  
  for (int xcycle = 0; xcycle < 50; xcycle++) {
    if (x[xcycle] >= 1000) {
      x[xcycle] = x[xcycle] - 1000;
    }
  }
  for (int ycycle = 0; ycycle < 50; ycycle++) {
    if (y[ycycle] >= 325) {
      y[ycycle] = y[ycycle] - 325;
    }
  }

  stroke(240);
  
  for (int cycle = 0; cycle < 50; cycle++) {
    strokeWeight(random(3, 5));
    point(x[cycle], y[cycle]);
  }
}
void blueify() {
  colorMode(RGB);
  strokeWeight(0);
  fill(80, 230, 230, 100);
  rect(0, 0, width, height);
}
void randomize() {
  for (int fcycle = 1; fcycle < 60; fcycle++) {
    f[fcycle] = (int) random(256);
  }
}
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
void light(float x, float y) {
  strokeWeight(3);
  rect(x-1, y, 2, 4);
  strokeWeight(1);
  stroke(0);
  ellipse(x, y+8, 5, 7);
}
void lightsetup() {
  fx[1] = 350; fy[1] = 140; fx[2] = 330; fy[2] = 137; fx[3] = 370; fy[3] = 137; fx[4] = 310; fy[4] = 133; fx[5] = 390; fy[5] = 133;
  fx[6] = 350; fy[6] = 190; fx[7] = 370; fy[7] = 189; fx[8] = 330; fy[8] = 189; fx[9] = 310; fy[9] = 187; fx[10] = 390; fy[10] = 187; fx[11] = 410; fy[11] = 184; fx[12] = 290; fy[12] = 184;
  fx[13] = 350; fy[13] = 240; fx[14] = 370; fy[14] = 239; fx[15] = 330; fy[15] = 239; fx[16] = 310; fy[16] = 237; fx[17] = 390; fy[17] = 237; fx[18] = 410; fy[18] = 235; fx[19] = 290; fy[19] = 235; fx[20] = 430; fy[20] = 232; fx[21] = 270; fy[21] = 232;
  fx[22] = 350; fy[22] = 290; fx[23] = 370; fy[23] = 289; fx[24] = 330; fy[24] = 289; fx[25] = 310; fy[25] = 288; fx[26] = 390; fy[26] = 288; fx[27] = 410; fy[27] = 286; fx[28] = 290; fy[28] = 286; fx[29] = 430; fy[29] = 284; fx[30] = 270; fy[30] = 284; fx[31] = 450; fy[31] = 281; fx[32] = 250; fy[32] = 281;
  fx[33] = 350; fy[33] = 340; fx[34] = 370; fy[34] = 339; fx[35] = 330; fy[35] = 339; fx[36] = 310; fy[36] = 338; fx[37] = 390; fy[37] = 338; fx[38] = 410; fy[38] = 337; fx[39] = 290; fy[39] = 337; fx[40] = 430; fy[40] = 335; fx[41] = 270; fy[41] = 335; fx[42] = 450; fy[42] = 333; fx[43] = 250; fy[43] = 333; fx[44] = 470; fy[44] = 330; fx[45] = 230; fy[45] = 330;
  fx[46] = 350; fy[46] = 390; fx[47] = 370; fy[47] = 389; fx[48] = 330; fy[48] = 389; fx[49] = 310; fy[49] = 388; fx[50] = 390; fy[50] = 388; fx[51] = 410; fy[51] = 387; fx[52] = 290; fy[52] = 387; fx[53] = 430; fy[53] = 385; fx[54] = 270; fy[54] = 385; fx[55] = 450; fy[55] = 383; fx[56] = 250; fy[56] = 383; fx[57] = 470; fy[57] = 381; fx[58] = 230; fy[58] = 381; fx[59] = 490; fy[59] = 379; fx[60] = 210; fy[60] = 379;
}
