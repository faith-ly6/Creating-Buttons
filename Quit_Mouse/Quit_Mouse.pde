//Global Variables
float xquitButton, yquitButton, quitButtonWidth, quitButtonHeight;
color yellow = #F7F282, purple = #D17DEA, resetButtonColour = #FEFCFF, buttonFill = #FEFCFF; //Not Night Mode Friendly Colours
//
void setup () {
  size (500, 500);
  //Population
  int centerX = width/2;
  int centerY = height/2;
  int centeringButtonWidth = width*1/4;
  int centeringButtonHeight = height*1/4;
  xquitButton = centerX - centeringButtonWidth;
  yquitButton = centerY - centeringButtonHeight;
  quitButtonWidth = width*1/2; 
  quitButtonHeight = height*1/2;
}//End setup
//
void draw () {
  //Hover-over
  if (mouseX> xquitButton && mouseX< xquitButton+quitButtonWidth && mouseY>yquitButton && mouseY<yquitButton+quitButtonHeight) {
    buttonFill = yellow;
  } else {
    buttonFill = purple;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  rect (xquitButton, yquitButton, quitButtonWidth, quitButtonHeight);
  fill(resetButtonColour);
  //
  //Repeating CONSOLE values illusetrating mouseX and mouseY related to a formula, mouse buttons
  //println("X-Value", xquitButton, mouseX, xquitButton+quitButtonWidth, "\t\t Look at the middle value");
  //println("Y-Value", yquitButton, mouseY, yquitButton+quitButtonHeight, "\t\t Look at the middle value");
}//End draw
//
void keyPressed () {
  if (key == 'q' || key=='Q') exit();
}//End keyPressed
//
void mousePressed () {
  if ( mouseX> xquitButton && mouseX< xquitButton+quitButtonWidth && mouseY>yquitButton && mouseY<yquitButton+quitButtonHeight ) exit();
}//End mousePressed
