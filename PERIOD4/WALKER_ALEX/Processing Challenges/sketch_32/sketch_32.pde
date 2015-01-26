int hour;
int hourexact;
int minute;
int second;
float pi60 = TWO_PI / 60;
float pi12 = TWO_PI / 12;
float hourrotate;
float minuterotate;
float secondrotate;
String shour;
String sminute;
String ssecond;
boolean am;
String ampm;
int c = 0;
int type = 0;
void setup() {
  size(500,500);
}
void draw() {
  
  background(255);
  
  if (type == 0 || type == 2) {
    stroke(0);
    noFill();
    strokeWeight(5);
    ellipse(width/2,height/2,400,400);
    textAlign(CENTER,CENTER);
    textSize(40);
    fill(0);
    text("1",375,50);
    text("2",450,125);
    text("3",475,250);
    text("4",450,375);
    text("5",/*lol :P*/375,450);
    text("6",250,475);
    text("7",125,450);
    text("8",50,375);
    text("9",25,250);
    text("10",50,125);
    text("11",125,50);
    text("12",250,25); 
  }
  
  if (hour() <= 12) {
    am = true;
  }else{
    am = false;
  }
  
  hour = hour() % 12;
  minute = minute();
  second = second();
  
  shour = str(hour);
  sminute = str(minute);
  ssecond = str(second);
  
  if (am) {
    ampm = "AM";
  }else{
    ampm = "PM";
  }
  
  if (shour == "0") {
    shour = "12";
  }
  
  if (shour.length() == 1) {
    shour = "0" + shour;
  }
  if (sminute.length() == 1) {
    sminute = "0" + sminute;
  }
  if (ssecond.length() == 1) {
    ssecond = "0" + ssecond;
  }
  if (type == 1 || type == 2) {
    colorMode(HSB);
    textSize(50);
    fill(c, 255, 255);
    text(shour + ":" + sminute + ":" + ssecond + " " + ampm, width/2, height/3*2);
    c = c + 1;
    if (c >= 256) {
      c = 0;
    }
  }
  
  if (type == 0 || type == 2) {
  colorMode(RGB);
  
  translate(width/2,height/2);
  
  for (float d = 0; d < TWO_PI; d = d + pi60) {
    rotate(d);
    strokeWeight(2);
    stroke(0);
    
    line(0,200,0,190);
    
    rotate(TWO_PI - d);
  }
  
  //hour hand
  hourexact = (hour * 5) + (minute() / 12);
  hourrotate = hourexact * pi60;
  
  rotate(hourrotate);
  strokeWeight(5);
  stroke(0);
  
  line(0,0,0,-100);
  
  rotate(TWO_PI - hourrotate);
  
  //minute hand
  minuterotate = minute * pi60;
  
  rotate(minuterotate);
  strokeWeight(4);
  stroke(0);
  
  line(0,0,0,-150);
  
  rotate(TWO_PI - minuterotate);
  
  //second hand
  secondrotate = second * pi60;
  
  rotate(secondrotate);
  strokeWeight(3);
  stroke(0);
  
  line(0,0,0,-175);
  
  rotate(TWO_PI - secondrotate);
  }
}
void mouseClicked() {
  if (mouseButton == LEFT) {
    type = type + 1;
    if (type >= 3) {
      type = 0;
    }
  }
}
