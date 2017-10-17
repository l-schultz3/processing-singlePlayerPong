class Ball {
  float xpos = 350;
  float ypos = 500;
  boolean xDir = false; // false = towards player, true = away from player
  boolean yDir = false; // false = upwards, true = downwards
  float speed = 2.5;
  float startMillis = millis();
  
  void move() { // function that moves the ball
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
    
    ellipse(xpos, ypos, 20, 20); // draws the ball in
  }
  
  void colDetect() { // function to check whether the ball has collided with anything
    if (((xpos <= 35) && (xpos >= 20)) && ((ypos >= p.ypos) && (ypos < p.ypos + 80))) { //checks if the ball is touching the paddle
      xDir = true;
      points += 1;
    }
    
    if ((ypos - 5 <= 0) || (ypos + 5 >= height)) { // checks if the ball is touching the top or bottom
      yDir = !yDir;
    }
    
    if (xpos >= width) { // checks if the ball is touching the far wall
      xDir = false;
    }
    
    if (xpos < 0) { // checks if the ball is behind the paddle and resets the game
      points = 0;
      xpos = 350;
      ypos = 500;
      xDir = false;
      yDir = false;
      speed = 2.5;
      p.speed = 5;
    }
  }
  
  void changeSpeed() { // function to increase the speed every 10 seconds to make the game harder
    if (millis() >= startMillis + 10000) {
      speed += 0.5;
      startMillis = millis();
    }
  }
  
}