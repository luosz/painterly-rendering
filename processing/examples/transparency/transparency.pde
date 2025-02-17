// The next line is needed if running in JavaScript Mode with Processing.js
/* @pjs preload="moonwalk.jpg"; */ 

PImage img;
float offset = 0;
float easing = 0.05;

void setup() {
  size(640, 360);
  img = loadImage("moonwalk.jpg");  // Load an image into the program 
}

void draw() { 
  image(img, 0, 0);  // Display at full opacity
  float dx = (mouseX-img.width/2) - offset;
  offset += dx * easing; 
  tint(255, 126);  // Display at half opacity
  image(img, offset, 0);
}
