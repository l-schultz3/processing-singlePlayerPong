Paddle p;
Ball b;

void setup() {
  size(1000, 700);
  noStroke();
  
  p = new Paddle();
  b = new Ball();
}

void draw() {
  background(0);
  
  if (keyPressed && key == CODED) {
    p.input();
  }
  
  p.draw();
  b.move();
  b.colDetect();
}