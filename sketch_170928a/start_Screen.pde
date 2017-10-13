float buttonX, buttonY, buttonWidth, buttonHeight;
float buttonTop, buttonBottom, buttonLeft, buttonRight;
boolean mouseOnButton = false;
boolean mouseOnInstructions = false;
PImage snake, apple;
PFont startScreen, gameOver;

void displayButton(){
  if (mouseOnButton){
    fill(#50DE2B  );
    
  
  }
  else{
    fill(#2DB721);
    
  }
  textAlign(CENTER);
  if (mouseOnButton){
    strokeWeight(5);
    stroke(#075514);
    rect(buttonX - 10, buttonY - 10, buttonWidth + 20, buttonHeight+20);
  }
  else{
    strokeWeight(2.5);
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
  }
  fill(255, 0, 0);
  textSize(35);
  
  text("play", buttonX+50, buttonY +35 );
}

boolean mouseIsOnButton(){
  if ((mouseX > buttonLeft) &&
    (mouseX < buttonRight) &&
    (mouseY > buttonTop) &&
    (mouseY < buttonBottom)){
      mouseOnButton = true;
    }
   else{
     mouseOnButton = false;
   }
  return mouseOnButton;
}

void writeSnake(){
  fill(255);
  
  textFont(startScreen);
  text("snake", 200, 260);
}
void mousePressed(){
  if (mouseOnButton){
    state = 2;
  }
  else if (mouseOnInstructions){
    state = 1;
  }
  else if (mouseIsOnMenu){
    state = 0;
  }
}