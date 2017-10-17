Paddle p;
Ball b;

int points = 0;

void setup() {
  size(1000, 700);
  noStroke();
  
  p = new Paddle();
  b = new Ball();
}

void draw() {
  background(0);
  fill(255);
  textSize(40);
  text(str(points), 0, 32);
  
  if (keyPressed && key == CODED) {
    p.input();
  }
  
  p.draw();
  b.move();
  b.colDetect();
  b.changeSpeed();
  p.changeSpeed();
}