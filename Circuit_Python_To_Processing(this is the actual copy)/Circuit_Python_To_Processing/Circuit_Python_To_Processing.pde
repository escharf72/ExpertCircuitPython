import processing.serial.*;
Serial myPort = new Serial(this, Serial.list()[2], 9600);
int r2 = 150;
int r1 = 130;
int r3 = 110;

void setup() {
     println("Available serial ports:");
     println(Serial.list());
     size(300,300);
     noStroke();
     frameRate(30);
     ellipseMode(RADIUS);
     print("done with setup");
}

void draw() {
  //println("draw");
   if (myPort.available() > 0) 
  { 
    //print("got data");
          float myNum = myPort.read();
          println((int) myNum);
          myNum = map(myNum,0,255,-55,235);
          background(0,200,100); 
          ellipse(150,150, 150,150);
          fill(255,255,255);
          ellipse(150,150,10,10);
          fill (0,0,140);
          
          //first line (90 deg)
          strokeWeight(4);
          strokeCap(ROUND);
          stroke(255,255,255);
          
          float theta0 = PI/2;
          drawLine(theta0);
          //first line (90 deg)
          float theta = PI/2+PI/5*2;
          drawLine(theta);
          //Second line (162 deg)
          float theta2 = PI/2+PI/5*4;
          drawLine(theta2);
          //Third line (234 deg)
          float theta3 = PI/2+PI/5*6;
          drawLine(theta3);
          //Fourth line (306 deg)
          float theta4 = PI/2+PI/5*8;
          drawLine(theta4);
          //Fifth line (378 deg)
          //textSize(32);
          //text("Center", 100, 150); 
          fill(0, 102, 153);
          float ax = 150+r1*cos(radians(myNum));
          float ay = 150-r1*sin(radians(myNum));
          line(150,150,ax,ay);
          
  
      }
}


void drawLine(float angle) {
  // it's all in a function!  so easy!
  float x1 = 150 + r1*cos(angle);
  float y1 = 150 - r1*sin(angle);
  float x2 = 150 + r2*cos(angle);
  float y2 = 150 - r2*sin(angle);
  float x3 = 150 + r3*cos(angle);
  float y3 = 150 - r3*sin(angle);
 // textSize(10);
  //textAlign(CENTER, TOP);
  //text(0, x3, y3);
  //text(45, x3, y3);
  //text(90, 100.7119, 51.6604); 
  line(x1, y1, x2, y2);
}
