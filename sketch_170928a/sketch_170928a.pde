
void setup(){
  size(800, 800);
  snakeX.add(5);
  snakeY.add(5);
}
 void draw(){
   background(100);
   if (state ==2){
     drawGrid(); 
     movement();
     drawSnake();
   }
   else if (state ==3){
     print("Game Over!!!", height/2, width/2);
   }
  
   //fill(#7C4343);
   //rect(0, 500, width, 300);
   
 }