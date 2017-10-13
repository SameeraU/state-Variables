String lineOne = "1. Don't run the snake into the wall, or his own tail";
String lineTwo = "2. Eat the colored apples to gain points. ";
String lineThree = "3. Use your WASD for movement";
String lineFour = "4. Press Q to Quit the Game";
int instructionsY = 200;

float insX, insY, insWidth, insHeight;
float insTop, insBottom, insLeft, insRight;


boolean mouseIsOnInstructions(){
  if ((mouseX > insLeft) &&
    (mouseX < insRight) &&
    (mouseY > insTop) &&
    (mouseY < insBottom)){
      mouseOnInstructions= true;
    }
   else{
     mouseOnInstructions = false;
   }
  return mouseOnInstructions;
}


void displayInstructions(){
  if (mouseOnInstructions){
    fill(#50DE2B  );
    
  
  }
  else{
    fill(#2DB721);
    
  }
  textAlign(CENTER);
  if (mouseOnInstructions){
    strokeWeight(5);
    stroke(#075514);
    rect(insX - 10, insY - 10, insWidth + 20, insHeight+20);
  }
  else{
    strokeWeight(2.5);
    rect(insX, insY, insWidth, insHeight);
  }
  fill(255, 0, 0);
  textSize(35);
  
  text("Instructions", insX+100, insY +35 );
}

void giveInstructions(){
  fill(0, 255, 0);
  textSize(43);
  textMode(CENTER);
  text("Instructions", 330, 100);
  fill(255);
  textSize(25);
  text(lineOne, 100,  instructionsY, 600, 70);
  text(lineTwo, 100,  instructionsY + 80, 500, 70);
  text(lineThree, 100,  instructionsY + 150,400, 70);
  text(lineFour, 100,  instructionsY + 220,400, 70);
}