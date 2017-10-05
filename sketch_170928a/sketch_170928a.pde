
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