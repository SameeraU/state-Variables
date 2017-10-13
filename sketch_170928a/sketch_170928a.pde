
void setup(){
  size(700, 700);
  snakeX.add(5);
  snakeY.add(5);
  
  buttonX  = 200;
  buttonY = 400;
  buttonWidth = 100;
  buttonHeight = 50;
  
  buttonTop= buttonY;
  buttonBottom = buttonY+ buttonHeight;
  buttonRight = buttonX + buttonWidth;
  buttonLeft = buttonX;
  
  snake = loadImage("snake.png");
  apple = loadImage("apple.png");
  startScreen = createFont("Sofija.ttf", 120);
}
 void draw(){
   mouseIsOnButton();
   background(100);
   
   if (state == 1){
     background(#64A06E);
     displayButton();
     writeSnake();
     image(snake,400, 100);
     image(apple, 350, 330, apple.width*0.10, apple.height*0.10); 
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