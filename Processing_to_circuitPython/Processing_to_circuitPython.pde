import processing.serial.*;
Serial myPort;
float value = 0;
//float value1;
//float value2;
int moveX, moveY;
String numbers = "";

void setup() {
  println("Available serial ports:");
  println(Serial.list());
  myPort = new Serial(this, Serial.list()[2], 9600);
  size(300,400);
  noStroke();
  frameRate(100);
  ellipseMode(RADIUS);
  frameRate(10);
}
void draw() {
  //myPort.write("hi");
  myPort.write(numbers);  
  fill(value);
  stroke(0, 50, 250);
  fill(245,245,248);
  rect(0,0,299,300);
  stroke(0,50,250);
  fill(245,245,248);
  rect(0,301,299,98);
  strokeWeight(2);
  stroke(255,0,0);
  line(150,0, 150,300);
  strokeWeight(2);
  stroke(255,0,0);
  line(0,150,300,150);
  textSize(30);
  fill(0,225,40);
  textAlign(CENTER, TOP);
  text("Servo 1:", 80,310);
  textSize(30);
  fill(0,225,40);
  textAlign(CENTER, TOP);
  text("Servo 2:", 80, 350); 
  //changing values
  textSize(30);
  fill(0,225,60);
  textAlign(CENTER, TOP);
  text(int(moveX)+"°", 200,310);
  textSize(30);
  fill(0,225,60);
  textAlign(CENTER, TOP);
  text(int(moveY)+"°", 200, 350); 
  //Little blue circle
  fill(0, 210, 255);
  stroke(255,255,255);
  ellipse(mouseX, mouseY, 7, 7);

}

void mouseMoved() {
  moveX=mouseX;
  moveY=mouseY;
   //println(moveX,moveY);
  moveX= int(map(moveX, 0, 300, 0, 180));
  moveY= int(map(moveY, 0, 300, 0, 180));
  if (moveY>180)
    moveY=180;
 // println(moveX, moveY);
  numbers= str(moveX) + "$" + str(moveY) + "*";
  int[] nums = int(split(numbers, ' '));
  println(numbers);
 
}

// Make sure  that you add something to weed out numbers that are above 180 in the VS code part
