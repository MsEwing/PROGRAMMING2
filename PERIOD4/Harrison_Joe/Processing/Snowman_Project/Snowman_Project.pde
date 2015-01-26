boolean sketchFullScreen() {
 
  return true;
 }

 //refers to class / [] = Array / particles is name of the array
Particle[] particles = new Particle[0];
 
 
int maxParticles =100;
 


import ddf.minim.*;

AudioPlayer player;
Minim minim;//audio context

 
void setup() {
  size(displayWidth,displayHeight);
  strokeWeight(3);
  
   minim = new Minim(this);
  player = minim.loadFile("Project.mp3.mp3", 2048);
  player.play();



}

void draw() {

 println(mouseX, mouseY);
 frameRate(15);
 
 
   background(89,102,139);
  // this line of code makes a new particle and appends it onto the end of the particles Array
  // name of array (particles) / (particle[]) = force code, append adds to a particle
  particles = (Particle[]) append(particles, new Particle(300, 0));
  // The code below kills off the particles so that they do not overload
  // if statement to test the length of the maxParticles
  // subset to delete the particles
 
  if (particles.length>maxParticles) {
    particles = (Particle[]) subset(particles, 1);
  }
  // for loop for updating particles in the array
  for (int i=0; i<particles.length; i++) {
    // variable dave.x plus xVel, this adds them together from the particle class
    // repeat with Y
    // This code makes it move by adding them together
 
      particles[i].x += particles[i].xVel;
      particles[i].y += particles[i].yVel;
     // particles[i].partsize *=0.95;      // times the number of to make it shrink
     // particles[i].yVel +=0.5;   // gravity
    // dave.x dave.y refers to the x & y position of particle dave class
 fill(255);
 strokeWeight(0);
    ellipse(particles[i].x, particles[i].y, particles[i].partsize, particles[i].partsize);
  }
}
// THIS IS THE CLASS
// defines a custom class, allows it to be used above void setup
//class name always has to start with a capital - seb said
class Particle {
 
  float x;          // adds x position property
  float y;          // adds y position property
  float xVel;       // adds xvel property
  float yVel;       // adds yvel property
  float partsize;   // adds a size property
 
  //Constructor = function// float says where it is xpos/ypos
  Particle(float xpos, float ypos) {
    // assigning the values
    x = xpos = random (0,1500);
    y = ypos;
    xVel = random (-2, 2);   // random,(the length of the random)
    yVel = random (10, 5);    // controls the speed that the snow falls
    partsize = random (5, 10);
 
 
 //ground
 fill(200);
rect(0,600,1500,300);
 
  //snowman
  fill(255);
  strokeWeight(2);
ellipse(290,745,250,250);//bottom
ellipse(290,550,195,195);//middle
ellipse(290,400,150,150);//head
fill(0);
ellipse(265,380,30,30);//eye to the left
ellipse(315,380,30,30);//eye to the right
ellipse(250,430,20,20);//mouth
ellipse(266,440,20,20);//mouth
ellipse(284,445,20,20);//mouth
ellipse(303,445,20,20);//mouth
ellipse(320,440,20,20);//mouth
ellipse(334,430,20,20);//mouth
ellipse(290,520,40,40);//button(top)
ellipse(290,600,40,40);//button(middle)
ellipse(290,700,40,40);//button(bottom);
fill(211,83,2);
triangle(285,400,360,410,285,420);//nose
noFill();
fill(0);
rect(225,320,132,10);//bottom of the hat
rect(255,250,73,80);//top of hat
strokeWeight(15);
rect(310,440,100,10);//pipe
ellipse(400,438,20,20);//pipe

//tree
strokeWeight(2);
fill(88,147,0);
triangle(900,630,1090,195,1300,630);
noFill();
fill(116,61,1);
rect(1050,630,90,100);

//star
fill(255,255,0);
triangle(1050,222,1067,177,1090,193);
triangle(1090,193,1115,177,1134,222);
triangle(1115,175,1103,150,1150,142);
triangle(1103,150,1075,150,1088,105);
triangle(1075,150,1067,176,1030,144);
ellipse(1090,170,10,10);
noFill();


 //tree lights
 strokeWeight(12);
 stroke(random(255),random(255),random(255));
 point(1090,210);
 point(1079,237);
 point(1101,268);
 point(1055,319);
 point(1126,377);
 point(1022,434);
 point(1185,465);
 point(1060,487);
 point(1130,518);
 point(985,556);
 point(1195,569);
 point(1098,590);
 point(1103,447);
 point(1069,400);
 point(1102,326);
 noStroke();
 
  
  }
}


void stop() {
  player.close();
  minim.stop();
  super.stop();
}
