class Ball {
  float xpos = 350;
  float ypos = 500;
  int xDir = 1; //1 = towards player, 2 = away from player
  int yDir = 1; //1 = upwards, 2 = downwards
  float speed = 2;
  
  void move() {
    if (xDir == 1) {
      xpos -= speed;
    } else {
      xpos += speed;
    }
    if (yDir == 1) {
      ypos -= speed;
    } else {
      ypos += speed;
    }
    
    ellipse(xpos, ypos, 20, 20);
  }
}