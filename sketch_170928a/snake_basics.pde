ArrayList<Integer> snakeX = new ArrayList<Integer>();
ArrayList<Integer> snakeY = new ArrayList<Integer>();


int cubeX = 40, cubeY= 40, cubeSize = 20;
int  direction = 2, newDirection;
int snakeDX [] = {0,0, 1, -1};
int snakeDY [] = {1, -1, 0, 0};
int state = 1;
int foodX = 14, foodY = 16;
int snakeHead = 0;

void drawGrid(){
  //fill(0);
  stroke(0);
  strokeWeight(1);
  for(int s = 0; s<cubeX; s++){
     line(s*cubeSize, 0, s*cubeSize, height);
   }
   for(int s = 0; s<cubeY; s++){
     line(0, s*cubeSize, width, s*cubeSize);
   }
}

void drawSnake(){
  //frameRate(8);
  
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
  fill(43,222,44);
  rect(foodX*cubeSize, foodY*cubeSize, cubeSize, cubeSize);
  if (frameCount % 6 == 0){
    snakeX.add(0, snakeX.get(snakeHead) + snakeDX[direction]);
    snakeY.add(0, snakeY.get(snakeHead) + snakeDY[direction]);
    for (int body = 1; body<snakeX.size(); body ++){
      if (snakeX.get(snakeHead)== snakeX.get(body) && snakeY.get(snakeHead)== snakeY.get(body)){
        state = 3;
      }
    }
    if (snakeX.get(snakeHead) ==foodX && snakeY.get(snakeHead) == foodY){
      foodX =(int)random(0, 35);
      foodY = (int)random(0, 35);
      
    }
    else{
      snakeX.remove(snakeX.size()-1);
      snakeY.remove(snakeY.size()-1);
    }  
  }
}
void gameOver(){
  if (snakeX.get(snakeHead) < 0 || snakeY.get(snakeHead) <0){ 
      state = 3;
   }
  else if (snakeX.get(snakeHead) >= width-cubeSize|| snakeY.get(snakeHead) >= height-cubeSize){
    state = 3;
  }
  else{
    
  }
}