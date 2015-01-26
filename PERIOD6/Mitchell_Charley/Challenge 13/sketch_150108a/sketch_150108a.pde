void setup() {
frameRate(5);
size(400,400);
strokeWeight(4);
background(random(255),random(255),random(255));
}

void draw() {
 background(random(255),random(255),random(255));
 fill(random(255),random(255),random(255));
 ellipse(random(300),random(200), random(400),random(100));
 fill(#3AB407);
 ellipse(random(200),random(300), random(50),random(300));
 ellipse(random(400),random(400), random(50),random(100));
 ellipse(random(400),random(400), random(300),random(300));
 rect(30,60,90,100);
rect(random(20),random(20),random(20),random(25));
  println(frameRate);
 
}
