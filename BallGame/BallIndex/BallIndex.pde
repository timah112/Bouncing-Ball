float lineY;
Ball ballObj;
WallObject[] walls;

void drawGround() {
  stroke(0);
  fill(0);
  rect(0, lineY, width, 5);
}

void setup() {
  
  size(1000, 600);
  lineY = 480;
  ballObj = new Ball(lineY);
  walls = new WallObject[5];
}

void draw() {
  background(241, 241, 243);
  drawGround();
  ballObj.draw();
  drawWalls();

  
}

void keyPressed(){
  if (key ==' '){
    ballObj.jump();
    
  }if (key == CODED) {
    if (keyCode == RIGHT){
       ballObj.moveRight();
     
    }
    else if(keyCode == LEFT){
       ballObj.moveLeft();
    }
  }
    
    
}
