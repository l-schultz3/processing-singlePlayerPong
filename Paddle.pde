class Paddle {
  float xpos = 20;
  float ypos = 150;
  float speed = 5;
  float startMillis = millis();
  
  void draw() { // function to draw the paddle
    rect(xpos, ypos, 10, 70);
  }
  
  void input() { // function that moves the paddle up and down if keys are pressed
    if ((keyCode == UP) && (ypos > 0)) {
      ypos -= speed;
    } else if ((keyCode == DOWN) && (ypos + 70 < height)) {
      ypos += speed;
    }
  }
  
  void changeSpeed() { // function to increase the speed every 20 seconds to make the game last longer
    if (millis() >= startMillis + 20000) {
      speed += 2;
      startMillis = millis();
    }
  }
}