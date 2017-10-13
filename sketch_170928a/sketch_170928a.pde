
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
  
  insX  = 150;
  insY = 500;
  insWidth = 200;
  insHeight = 50;
  
  insTop= insY;
  insBottom = insY+ insHeight;
  insRight = insX + insWidth;
  insLeft = insX;
  
  menuX  = 250;
  menuY = 500;
  menuWidth = 200;
  menuHeight = 50;
  
  menuTop= menuY;
  menuBottom = menuY+ menuHeight;
  menuRight = menuX + menuWidth;
  menuLeft = menuX;
  
  
  snake = loadImage("snake.png");
  apple = loadImage("apple.png");
  startScreen = createFont("Sofija.ttf", 120);
  gameOver = createFont("Games.ttf", 100);
}
 void draw(){
   mouseIsOnButton();
   mouseIsOnInstructions();
   mouseIsOnMenu();
   background(100);
   
   if (state == 0){
     background(#64A06E);
     displayButton();
     displayInstructions();
     writeSnake();
     image(snake,400, 100);
     image(apple, 350, 330, apple.width*0.10, apple.height*0.10); 
   }
   else if (state ==1){
    giveInstructions(); 
    displayMainMenu();
   }
     else if (state == 2){
     drawGrid(); 
     movement();
     drawSnake();
     gameOver();
   }
   else if (state == 3){
     
     background(#64A06E);
     displayMainMenu();
     image(snake,400, 100,snake.width*0.50, snake.height*0.50 );
     textFont(startScreen);
     textSize(25);
     text("your Score: " + score, 350, 400); 
     
     textFont(gameOver);
     fill(255,0,0);
     
     
     text("Game Over!!!", height/2, width/2);
     
   }
   //fill(#7C4343);
   //rect(0, 500, width, 300);
   
 }