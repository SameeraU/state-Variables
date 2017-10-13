float menuX, menuY, menuWidth, menuHeight;
float menuTop, menuBottom, menuLeft, menuRight;
 boolean mouseIsOnMenu = false;

boolean mouseIsOnMenu(){
  if ((mouseX > menuLeft) &&
    (mouseX < menuRight) &&
    (mouseY > menuTop) &&
    (mouseY < menuBottom)){
      mouseIsOnMenu= true;
    }
   else{
     mouseIsOnMenu = false;
   }
  return mouseIsOnMenu;
}
void displayMainMenu(){
  if (mouseIsOnMenu){
    fill(#50DE2B  );
    
  
  }
  else{
    fill(#2DB721);
    
  }
  textAlign(CENTER);
  if (mouseIsOnMenu){
    strokeWeight(5);
    stroke(#075514);
    rect(menuX - 10, menuY - 10, menuWidth + 20, menuHeight+20);
  }
  else{
    strokeWeight(2.5);
    rect(menuX, menuY, menuWidth, menuHeight);
  }
  fill(255, 0, 0);
  textSize(35);
  textFont(startScreen);
  textSize(43);
  text("Main Menu", menuX+100, menuY +35 );
}