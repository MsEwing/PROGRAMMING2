import ddf.minim.*;
AudioPlayer player;
Minim minim;//audio context
int x0 = (int) random(1000);
int x1 = (int) random(1000);
int x2 = (int) random(1000);
int x3 = (int) random(1000);
int x4 = (int) random(1000);
int x5 = (int) random(1000);
int x6 = (int) random(1000);
int x7 = (int) random(1000);
int x8 = (int) random(1000);
int x9 = (int) random(1000);
int x10 = (int) random(1000);
int x11 = (int) random(1000);
int x12 = (int) random(1000);
int x13 = (int) random(1000);
int x14 = (int) random(1000);
int x15 = (int) random(1000);
int x16 = (int) random(1000);
int x17 = (int) random(1000);
int x18 = (int) random(1000);
int x19 = (int) random(1000);
int y0 = (int) random(300);
int y1 = (int) random(300);
int y2 = (int) random(300);
int y3 = (int) random(300);
int y4 = (int) random(300);
int y5 = (int) random(300);
int y6 = (int) random(300);
int y7 = (int) random(300);
int y8 = (int) random(300);
int y9 = (int) random(300);
int y10 = (int) random(300);
int y11 = (int) random(300);
int y12 = (int) random(300);
int y13 = (int) random(300);
int y14 = (int) random(300);
int y15 = (int) random(300);
int y16 = (int) random(300);
int y17 = (int) random(300);
int y18 = (int) random(300);
int y19 = (int) random(300);
int star = 50;
boolean starup = true;
float s = 200;
int f1 = (int) random(256);
int f2 = (int) random(256);
int f3 = (int) random(256);
int f4 = (int) random(256);
int f5 = (int) random(256);
int f6 = (int) random(256);
int f7 = (int) random(256);
int f8 = (int) random(256);
int f9 = (int) random(256);
int f10 = (int) random(256);
int f11 = (int) random(256);
int f12 = (int) random(256);
int f13 = (int) random(256);
int f14 = (int) random(256);
int f15 = (int) random(256);
int f16 = (int) random(256);
int f17 = (int) random(256);
int f18 = (int) random(256);
int f19 = (int) random(256);
int f20 = (int) random(256);
int f21 = (int) random(256);
int f22 = (int) random(256);
int f23 = (int) random(256);
int f24 = (int) random(256);
int f25 = (int) random(256);
int f26 = (int) random(256);
int f27 = (int) random(256);
int f28 = (int) random(256);
int f29 = (int) random(256);
int f30 = (int) random(256);
int f31 = (int) random(256);
int f32 = (int) random(256);
int f33 = (int) random(256);
int f34 = (int) random(256);
int f35 = (int) random(256);
int f36 = (int) random(256);
int f37 = (int) random(256);
int f38 = (int) random(256);
int f39 = (int) random(256);
int f40 = (int) random(256);
int f41 = (int) random(256);
int f42 = (int) random(256);
int f43 = (int) random(256);
int f44 = (int) random(256);
int f45 = (int) random(256);
int f46 = (int) random(256);
int f47 = (int) random(256);
int f48 = (int) random(256);
int f49 = (int) random(256);
int f50 = (int) random(256);
int f51 = (int) random(256);
int f52 = (int) random(256);
int f53 = (int) random(256);
int f54 = (int) random(256);
int f55 = (int) random(256);
int f56 = (int) random(256);
int f57 = (int) random(256);
int f58 = (int) random(256);
int f59 = (int) random(256);
int bc = 0;
int b = 63;
void setup() {
  size(1000, 500);
  background(80, 230, 230);
  frameRate(50);
  minim = new Minim(this);
  player = minim.loadFile("music.mp3", 2048);
  player.play();
}
void draw() {
  blueify();
  snow();
  snowman();
  snowface();
  ground();
  tree();
  star();
  treelights();

  if (mousePressed && mouseButton == LEFT) {
    randomize();
  }
  if (mousePressed && mouseButton == RIGHT) {
    snowdown();
  }
}
void stop() {
  player.close();
  minim.stop();
  super.stop();
}
void snowdown() {
  if (s > 180) {
    s = s - 1;
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

  fill(f1, 255, b);
  light(350, 140);
  fill(f2, 255, b);
  light(330, 137);
  fill(f3, 255, b);
  light(370, 137);
  fill(f4, 255, b);
  light(310, 133);
  fill(f5, 255, b);
  light(390, 133);

  fill(f6, 255, b);
  light(350, 190);
  fill(f7, 255, b);
  light(370, 189);
  fill(f8, 255, b);
  light(330, 189);
  fill(f9, 255, b);
  light(310, 187);
  fill(f10, 255, b);
  light(390, 187);
  fill(f11, 255, b);
  light(410, 184);
  fill(f12, 255, b);
  light(290, 184);

  fill(f13, 255, b);
  light(350, 240);
  fill(f14, 255, b);
  light(370, 239);
  fill(f15, 255, b);
  light(330, 239);
  fill(f16, 255, b);
  light(310, 237);
  fill(f17, 255, b);
  light(390, 237);
  fill(f17, 255, b);
  light(410, 235);
  fill(f18, 255, b);
  light(290, 235);
  fill(f19, 255, b);
  light(430, 232);
  fill(f20, 255, b);
  light(270, 232);

  fill(f21, 255, b);
  light(350, 290);
  fill(f22, 255, b);
  light(370, 289);
  fill(f23, 255, b);
  light(330, 289);
  fill(f24, 255, b);
  light(310, 288);
  fill(f25, 255, b);
  light(390, 288);
  fill(f26, 255, b);
  light(410, 286);
  fill(f27, 255, b);
  light(290, 286);
  fill(f28, 255, b);
  light(430, 284);
  fill(f29, 255, b);
  light(270, 284);
  fill(f30, 255, b);
  light(450, 281);
  fill(f31, 255, b);
  light(250, 281);

  fill(f32, 255, b);
  light(350, 340);
  fill(f33, 255, b);
  light(370, 339);
  fill(f34, 255, b);
  light(330, 339);
  fill(f35, 255, b);
  light(310, 338);
  fill(f36, 255, b);
  light(390, 338);
  fill(f37, 255, b);
  light(410, 337);
  fill(f38, 255, b);
  light(290, 337);
  fill(f39, 255, b);
  light(430, 335);
  fill(f40, 255, b);
  light(270, 335);
  fill(f41, 255, b);
  light(450, 333);
  fill(f42, 255, b);
  light(250, 333);
  fill(f43, 255, b);
  light(470, 330);
  fill(f44, 255, b);
  light(230, 330);

  fill(f45, 255, b);
  light(350, 390);
  fill(f46, 255, b);
  light(370, 389);
  fill(f47, 255, b);
  light(330, 389);
  fill(f48, 255, b);
  light(310, 388);
  fill(f49, 255, b);
  light(390, 388);
  fill(f50, 255, b);
  light(410, 387);
  fill(f51, 255, b);
  light(290, 387);
  fill(f52, 255, b);
  light(430, 385);
  fill(f53, 255, b);
  light(270, 385);
  fill(f54, 255, b);
  light(450, 383);
  fill(f55, 255, b);
  light(250, 383);
  fill(f56, 255, b);
  light(470, 381);
  fill(f57, 255, b);
  light(230, 381);
  fill(f58, 255, b);
  light(490, 379);
  fill(f59, 255, b);
  light(210, 379);
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
  x0 = x0 + (int) random(1, 2);
  x1 = x1 + (int) random(1, 2);
  x2 = x2 + (int) random(1, 2);
  x3 = x3 + (int) random(1, 2);
  x4 = x4 + (int) random(1, 2);
  x5 = x5 + (int) random(1, 2);
  x6 = x6 + (int) random(1, 2);
  x7 = x7 + (int) random(1, 2);
  x8 = x8 + (int) random(1, 2);
  x9 = x9 + (int) random(1, 2);
  x10 = x10 + (int) random(1, 2);
  x11 = x11 + (int) random(1, 2);
  x12 = x12 + (int) random(1, 2);
  x13 = x13 + (int) random(1, 2);
  x14 = x14 + (int) random(1, 2);
  x15 = x15 + (int) random(1, 2);
  x16 = x16 + (int) random(1, 2);
  x17 = x17 + (int) random(1, 2);
  x18 = x18 + (int) random(1, 2);
  x19 = x19 + (int) random(1, 2);

  y0 = y0 + (int) random(3, 6);
  y1 = y1 + (int) random(3, 6);
  y2 = y2 + (int) random(3, 6);
  y3 = y3 + (int) random(3, 6);
  y4 = y4 + (int) random(3, 6);
  y5 = y5 + (int) random(3, 6);
  y6 = y6 + (int) random(3, 6);
  y7 = y7 + (int) random(3, 6);
  y8 = y8 + (int) random(3, 6);
  y9 = y9 + (int) random(3, 6);
  y10 = y10 + (int) random(3, 6);
  y11 = y11 + (int) random(3, 6);
  y12 = y12 + (int) random(3, 6);
  y13 = y13 + (int) random(3, 6);
  y14 = y14 + (int) random(3, 6);
  y15 = y15 + (int) random(3, 6);
  y16 = y16 + (int) random(3, 6);
  y17 = y17 + (int) random(3, 6);
  y18 = y18 + (int) random(3, 6);
  y19 = y19 + (int) random(3, 6);

  if (x0 >= 1000) {
    x0 = x0 - 1000;
  }
  if (x1 >= 1000) {
    x1 = x1 - 1000;
  }
  if (x2 >= 1000) {
    x2 = x2 - 1000;
  }
  if (x3 >= 1000) {
    x3 = x3 - 1000;
  }
  if (x4 >= 1000) {
    x4 = x4 - 1000;
  }
  if (x5 >= 1000) {
    x5 = x5 - 1000;
  }
  if (x6 >= 1000) {
    x6 = x6 - 1000;
  }
  if (x7 >= 1000) {
    x7 = x7 - 1000;
  }
  if (x8 >= 1000) {
    x8 = x8 - 1000;
  }
  if (x9 >= 1000) {
    x9 = x9 - 1000;
  }
  if (x10 >= 1000) {
    x10 = x10 - 1000;
  }
  if (x11 >= 1000) {
    x11 = x11 - 1000;
  }
  if (x12 >= 1000) {
    x12 = x12 - 1000;
  }
  if (x13 >= 1000) {
    x13 = x13 - 1000;
  }
  if (x14 >= 1000) {
    x14 = x14 - 1000;
  }
  if (x15 >= 1000) {
    x15 = x15 - 1000;
  }
  if (x16 >= 1000) {
    x16 = x16 - 1000;
  }
  if (x17 >= 1000) {
    x17 = x17 - 1000;
  }
  if (x18 >= 1000) {
    x18 = x18 - 1000;
  }
  if (x19 >= 1000) {
    x19 = x19 - 1000;
  }

  if (y0 >= 325) {
    y0 = y0 - 300;
  }
  if (y1 >= 325) {
    y1 = y1 - 300;
  }
  if (y2 >= 325) {
    y2 = y2 - 300;
  }
  if (y3 >= 325) {
    y3 = y3 - 300;
  }
  if (y4 >= 325) {
    y4 = y4 - 300;
  }
  if (y5 >= 325) {
    y5 = y5 - 300;
  }
  if (y6 >= 325) {
    y6 = y6 - 300;
  }
  if (y7 >= 325) {
    y7 = y7 - 300;
  }
  if (y8 >= 325) {
    y8 = y8 - 300;
  }
  if (y9 >= 325) {
    y9 = y9 - 300;
  }
  if (y10 >= 325) {
    y10 = y10 - 300;
  }
  if (y11 >= 325) {
    y11 = y11 - 300;
  }
  if (y12 >= 325) {
    y12 = y12 - 300;
  }
  if (y13 >= 325) {
    y13 = y13 - 300;
  }
  if (y14 >= 325) {
    y14 = y14 - 300;
  }
  if (y15 >= 325) {
    y15 = y15 - 300;
  }
  if (y16 >= 325) {
    y16 = y16 - 300;
  }
  if (y17 >= 325) {
    y17 = y17 - 300;
  }
  if (y18 >= 325) {
    y18 = y18 - 300;
  }
  if (y19 >= 325) {
    y19 = y19 - 300;
  }

  stroke(240);

  strokeWeight(random(3, 5));
  point(x0, y0);
  strokeWeight(random(3, 5));
  point(x1, y1);
  strokeWeight(random(3, 5));
  point(x2, y2);
  strokeWeight(random(3, 5));
  point(x3, y3);
  strokeWeight(random(3, 5));
  point(x4, y4);
  strokeWeight(random(3, 5));
  point(x5, y5);
  strokeWeight(random(3, 5));
  point(x6, y6);
  strokeWeight(random(3, 5));
  point(x7, y7);
  strokeWeight(random(3, 5));
  point(x8, y8);
  strokeWeight(random(3, 5));
  point(x9, y9);
  strokeWeight(random(3, 5));
  point(x10, y10);
  strokeWeight(random(3, 5));
  point(x11, y11);
  strokeWeight(random(3, 5));
  point(x12, y12);
  strokeWeight(random(3, 5));
  point(x13, y13);
  strokeWeight(random(3, 5));
  point(x14, y14);
  strokeWeight(random(3, 5));
  point(x15, y15);
  strokeWeight(random(3, 5));
  point(x16, y16);
  strokeWeight(random(3, 5));
  point(x17, y17);
  strokeWeight(random(3, 5));
  point(x18, y18);
  strokeWeight(random(3, 5));
  point(x19, y19);
}
void blueify() {
  colorMode(RGB);
  strokeWeight(0);
  fill(80, 230, 230, 100);
  rect(0, 0, width, height);
}
void randomize() {
  f1 = (int) random(256);
  f2 = (int) random(256);
  f3 = (int) random(256);
  f4 = (int) random(256);
  f5 = (int) random(256);
  f6 = (int) random(256);
  f7 = (int) random(256);
  f8 = (int) random(256);
  f9 = (int) random(256);
  f10 = (int) random(256);
  f11 = (int) random(256);
  f12 = (int) random(256);
  f13 = (int) random(256);
  f14 = (int) random(256);
  f15 = (int) random(256);
  f16 = (int) random(256);
  f17 = (int) random(256);
  f18 = (int) random(256);
  f19 = (int) random(256);
  f20 = (int) random(256);
  f21 = (int) random(256);
  f22 = (int) random(256);
  f23 = (int) random(256);
  f24 = (int) random(256);
  f25 = (int) random(256);
  f26 = (int) random(256);
  f27 = (int) random(256);
  f28 = (int) random(256);
  f29 = (int) random(256);
  f30 = (int) random(256);
  f31 = (int) random(256);
  f32 = (int) random(256);
  f33 = (int) random(256);
  f34 = (int) random(256);
  f35 = (int) random(256);
  f36 = (int) random(256);
  f37 = (int) random(256);
  f38 = (int) random(256);
  f39 = (int) random(256);
  f40 = (int) random(256);
  f41 = (int) random(256);
  f42 = (int) random(256);
  f43 = (int) random(256);
  f44 = (int) random(256);
  f45 = (int) random(256);
  f46 = (int) random(256);
  f47 = (int) random(256);
  f48 = (int) random(256);
  f49 = (int) random(256);
  f50 = (int) random(256);
  f51 = (int) random(256);
  f52 = (int) random(256);
  f53 = (int) random(256);
  f54 = (int) random(256);
  f55 = (int) random(256);
  f56 = (int) random(256);
  f57 = (int) random(256);
  f58 = (int) random(256);
  f59 = (int) random(256);
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
