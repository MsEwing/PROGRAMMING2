void setup() {
 size(400,400);
 strokeWeight(5);
}
 

void draw() {
 float distance = random(400);
  background(0);
 stroke(random(255),random(255),random(255)); 
 line(distance,0,distance,400);
 //  line(0,distance,400,distance);
 // Uncomment for vertical lines....
}
