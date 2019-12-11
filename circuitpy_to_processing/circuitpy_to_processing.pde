import processing.serial.*;
Serial myPort = new Serial(this, Serial.list()[3], 9600);
int r1 = 130;

void setup() {
     println("Available serial ports:");
     println(Serial.list());
     size(300,300);
     background(18, 40, 77);
     ellipse(150, 150, 300, 300);
     fill(0, 0, 0);
     ellipse(150,150,5,5);
     line(44,44,55,55); //75 degrees
     line(150,0,150,15); //90 degrees
     line(253,40,242.5,52.5); //135 degrees
     line(0,150,15,150); //0 degrees
     line(300,150,285,150); //180 degrees
}

void draw() {
     if (myPort.available() > 0) 
     { 
          background(18, 40, 77);
          ellipse(150, 150, 300, 300);
          fill(0,0,0);
          ellipse(150,150,5,5);
          line(44,44,55,55); //75 degrees
          line(150,0,150,15); //90 degrees
          line(253,40,242.5,52.5); //135 degrees
          line(0,150,15,150); //0 degrees
          line(300,150,285,150); //180 degrees
          fill(255, 196, 220);
          int myPotValue = myPort.read();
          float ax = 150+r1*cos(radians(myPotValue));
          float ay = 150-r1*sin(radians(myPotValue));
          line(150,150,ax,ay); 
          println(myPotValue);
     } 
}
