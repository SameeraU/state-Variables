float buttonX, buttonY, buttonWidth, buttonHeight;
float buttonTop, buttonBottom, buttonLeft, buttonRight;
boolean mouseOnButton = false;

void displayButton(){
  if (mouseOnButton){
    fill(66,75,232);
    
    
  }
  else{
    fill(52,58,170);
    
  }
  textAlign(CENTER);
  if (mouseOnButton){
    strokeWeight(5);
    rect(buttonX - 10, buttonY - 10, buttonWidth + 20, buttonHeight+20);
  }
  else{
    strokeWeight(2.5);
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
  }
  fill(255, 0, 0);
  textSize(25);
  text("play", 350, 330 );
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
void mousePressed(){
  if (mouseOnButton){
    state = 2;
  }
}