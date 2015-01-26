void setup()
{
  size(1080,720);
  strokeWeight(4);
  background(0);
}

void draw()
{
  strokeWeight(4);
  stroke(random(255),random(255),random(255));
  //hilt/handle
  fill(random(255),random(255),random(255));
  rect(35,350,265,50);
  line(100,350,50,335);
  line(50,335,35,345);
  line(100,400,50,415);
  line(50,415,35,405);
  line(35,345,35,405);
  //white solidhandgrip
  fill(0,255,255);
  rect(55,365,225,20);
  //arrowhead handguard u
  rect(300,300,25,50);
  line(300,350,280,260);
  line(280,260,312.5,215);
  line(312.5,215,350,260);
  line(350,260,325,350);
  //arrowhead handguard d
  rect(300,400,25,50);
  line(300,400,280,490);
  line(280,490,312.5,535);
  line(312.5,535,350,490);
  line(350,490,325,400);
  //bladebump u
  line(325,400,375,450);
  line(375,450,425,425);
  //bladebump d
  line(325,350,375,300);
  line(375,300,425,325);
  //blade
  line(425,325,1000,325);
  line(425,425,1000,425);
  line(1000,325,1050,375);
  line(1000,425,1050,375);
  //crest
  strokeWeight(0);
  fill(255,0,255);
  ellipse(380,375,100,100);
  
  
}
