import gab.opencv.*;
import processing.video.*;
import java.awt.*;
import processing.sound.*;

OpenCV opencv;
Capture video;
Pantalla una;
SoundFile sonido;

void setup() {
  noSmooth();
  size(640, 480);
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  //opencv = new OpenCV(this, 400, 400);  
  //video = new Capture(this, 400,400);
  una = new Pantalla();
  video.start();  
  
  sonido = new SoundFile(this, "FLAMES.mp3");
  sonido.play();
}

void draw() {
 una.display();
}

void captureEvent(Capture c) {
  c.read();
}

void keyPressed(){
  una.keyP(); 
}
