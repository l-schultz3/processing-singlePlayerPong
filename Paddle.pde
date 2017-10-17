class Paddle {
  float xpos = 20;
  float ypos = 150;
  
  void draw() {
    rect(xpos, ypos, 10, 70);
  }
  
  void input() {
    if ((keyCode == UP) && (ypos > 0)) {
      ypos -= 5;
    } else if ((keyCode == DOWN) && (ypos + 70 < height)) {
      ypos += 5;
    }
  }
}