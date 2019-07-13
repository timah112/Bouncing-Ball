class Ball {
  float baseY, xCoord, yCoord, ySpeed, yJumpHeight, ballWidth, ballHeight, speed, xSpeed;
  boolean canJump, isJumping;
 
  Ball(float lineY) {
    baseY = lineY;
    xCoord = 25;
    yCoord = baseY;
    ySpeed = 0;
    yJumpHeight = 0;
    ballHeight = 30;
    ballWidth = 30;
    xSpeed = -7;
    speed = 0.001;
    canJump = true;
    isJumping = false;
  }
  void draw() {
    ySpeed+=yJumpHeight;
    yCoord+=ySpeed;
    landed_check();
    ellipse(xCoord, yCoord-ballHeight/2, ballWidth, ballHeight);
  }
  void jump(){
    if( canJump ){
      canJump = false;
      isJumping = true;
      ySpeed = -10;
      yJumpHeight = 0.3;
    }
  }
  void landed_check(){
    if( yCoord >= baseY ){
      yCoord = baseY;
      ySpeed = 0;
      yJumpHeight = 0;
      isJumping = false;
      canJump = true;
    }
  }
  
     
   void constrain(){
      if(xCoord > width){
        xCoord = width - 15;
      }
     else if(xCoord < 19){
        xCoord = 25;
     }else if (yCoord < 380){
        yCoord = baseY;
     }
    }  

    void moveRight(){
      xCoord -= xSpeed;
     // yCoord += ySpeed;
     constrain();
    }
    
    void moveLeft(){
      xCoord += xSpeed;
     // yCoord -= ySpeed;
     println("LEFT");
      constrain();  
    }
  
}
