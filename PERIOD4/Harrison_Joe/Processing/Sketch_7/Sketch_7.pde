void setup() {
 size(400,400);
strokeWeight(10); 
}

void draw() {
 stroke(random(256),random(256));
point(random(400),random(400),random(256));
line(random(400),random(400),random(400),random(400));
}
