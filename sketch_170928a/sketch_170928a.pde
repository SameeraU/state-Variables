
void setup(){
  size(800, 800);
  snakeX.add(5);
  snakeY.add(5);
  
  buttonX  = 300;
  buttonY = 300;
  buttonWidth = 100;
  buttonHeight = 50;
  
  buttonTop= buttonY;
  buttonBottom = buttonY+ buttonHeight;
  buttonRight = buttonX + buttonWidth;
  buttonLeft = buttonX;
  
  
}
 void draw(){
   mouseIsOnButton();
   background(100);
   
   if (state == 1){
     background(#4DDBD0);
     displayButton();
   }
   else if (state == 2){
     drawGrid(); 
     movement();
     drawSnake();
     gameOver();
   }
   else if (state == 3){
     fill(255,0,0);
     text("Game Over!!!", height/2, width/2);
   }
   //fill(#7C4343);
   //rect(0, 500, width, 300);
   
 }