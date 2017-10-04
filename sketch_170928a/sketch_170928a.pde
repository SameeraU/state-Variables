int x = 40, y= 40, cubeSize = 20;
int snakeX = 20, snakeY, snakeSpeed = cubeSize;

void setup(){
  size(800, 800);
}
 void draw(){
   background(255);
   drawGrid(); 
   drawSnake();
   //fill(#7C4343);
   //rect(0, 500, width, 300);
   
 }
void drawGrid(){
  for(int s = 0; s<x; s++){
     line(s*cubeSize, 0, s*cubeSize, height);
   }
   for(int s = 0; s<y; s++){
     line(0, s*cubeSize, width, s*cubeSize);
   }
}

void drawSnake(){
  frameRate(8);
  fill(255, 0, 0);
  snakeX += snakeSpeed;
  rect(snakeX, snakeY, cubeSize, cubeSize);
}