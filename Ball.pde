class Ball {
  float xpos = 350;
  float ypos = 500;
  boolean xDir = false; //false = towards player, true = away from player
  boolean yDir = false; //false = upwards, true = downwards
  float speed = 2.5;
  
  void move() {
    if (!xDir) {
      xpos -= speed;
    } else {
      xpos += speed;
    }
    if (!yDir) {
      ypos -= speed;
    } else {
      ypos += speed;
    }
    
    ellipse(xpos, ypos, 20, 20);
  }
  
  void colDetect() {
    if (xpos == 35 && ((ypos >= p.ypos) && (ypos < p.ypos + 70))) {
      xDir = true;
    }
    
    if ((ypos - 5 <= 0) || (ypos + 5 >= height)) {
      yDir = !yDir;
    }
    
    if (xpos >= width) {
      xDir = false;
    }
  }
}