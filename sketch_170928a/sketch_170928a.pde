ArrayList<Integer> snakeX = new ArrayList<Integer>();
ArrayList<Integer> snakeY = new ArrayList<Integer>();

int cubeX = 40, cubeY= 40, cubeSize = 20;
int  direction = 2, newDirection;
int snakeDX [] = {0,0, 1, -1};
int snakeDY [] = {1, -1, 0, 0};
void setup(){
  size(800, 800);
  snakeX.add(5);
  snakeY.add(5);
}
 void draw(){
   background(100);
   drawGrid(); 
   movement();
   drawSnake();
  
   //fill(#7C4343);
   //rect(0, 500, width, 300);
   
 }
void drawGrid(){
  //fill(0);
  //noStroke();
  for(int s = 0; s<cubeX; s++){
     line(s*cubeSize, 0, s*cubeSize, height);
   }
   for(int s = 0; s<cubeY; s++){
     line(0, s*cubeSize, width, s*cubeSize);
   }
}

void drawSnake(){
  frameRate(5);
  stroke(1);
  for (int i = 0; i < snakeX.size(); i++){
    fill(255, 150, 0);
    rect(snakeX.get(i)*cubeSize, snakeY.get(i)*cubeSize, cubeSize, cubeSize);
  }
}

void keyPressed(){
 
  if(key == 's'){
     newDirection = 0;
     
  }
  
  else if (key == 'w'){
    newDirection = 1;

  }
  else if (key == 'd'){
    newDirection = 2;
     
  }
  else if (key == 'a'){
    newDirection = 3;
     
  }
  if (newDirection != -1){
    direction = newDirection;
  }
}
void movement(){
  if (frameCount % 6 == 0){
    snakeX.add(0, snakeX.get(0) + snakeDX[direction]);
    snakeY.add(0, snakeY.get(0) + snakeDY[direction]);
    snakeX.remove(snakeX.size()-1);
    snakeY.remove(snakeY.size()-1);
  }
}