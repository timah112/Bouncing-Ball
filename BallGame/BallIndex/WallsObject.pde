
int numOfWalls = 2;
float randXCoordinate = random(100, 600);
float randRectLength = random(-130, -20);
float bottom = 350;
float wallSpeed = 0.5;

class WallObject {


  WallObject(){ 
    drawWalls();
  
  }

}

void drawWalls(){
 
  fill(84, 114, 2);
  rect(randXCoordinate *1.5, 480, 20, randRectLength);
  
}  

void updateWallLocation(){
  randXCoordinate -=wallSpeed;
}
