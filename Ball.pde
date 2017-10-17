class Ball {
  float xpos = 350;
  float ypos = 500;
  boolean xDir = false; //false = towards player, true = away from player
  boolean yDir = false; //false = upwards, true = downwards
  float speed = 2.5;
  float startMillis = millis();
  
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
    if (((xpos <= 35) && (xpos >= 20)) && ((ypos >= p.ypos) && (ypos < p.ypos + 80))) {
      xDir = true;
      points += 1;
    }
    
    if ((ypos - 5 <= 0) || (ypos + 5 >= height)) {
      yDir = !yDir;
    }
    
    if (xpos >= width) {
      xDir = false;
    }
    
    if (xpos < 0) {
      points = 0;
      xpos = 350;
      ypos = 500;
      xDir = false;
      yDir = false;
      speed = 2.5;
    }
  }
  
  void changeSpeed() {
    if (millis() >= startMillis + 10000) {
      speed += 0.5;
      startMillis = millis();
    }
  }
  
}