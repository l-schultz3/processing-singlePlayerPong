class Paddle {
  float xpos = 20;
  float ypos = 150;
  
  void draw() { //dfunction to draw the paddle
    rect(xpos, ypos, 10, 70);
  }
  
  void input() { //function that moves the paddle up and down if keys are pressed
    if ((keyCode == UP) && (ypos > 0)) {
      ypos -= 5;
    } else if ((keyCode == DOWN) && (ypos + 70 < height)) {
      ypos += 5;
    }
  }
}