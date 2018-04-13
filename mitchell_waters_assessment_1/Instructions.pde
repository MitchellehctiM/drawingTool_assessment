//essentially setting up a button, hold spacebar to view instructions

class Instructions
{
  //variable
  boolean show;

void setup()
{
  //initialise as false
  show = false;
}

void update()
{
  //keyboard interactivity, if spacebar is held, show = true
  if(keyPressed && key == ' '){
    show = true;
  }else{
    show = false;
  }
  
}
  
void showInstructions()
{
  //what the text displays 
  // if show = true, display instructions
    if(show)
    {
    fill(255);
    textSize(14);
    text("Instructions:",10,50);
    textSize(10);
    text("Click and drag the Mouse at different speeds to create",10,70);
    text("Make noise into your computer's built-in microphone to change colour!",10,85);
    text("Press 'c' on the keyboard to clear the page",10,100);
    text("Press 's' on the keyboard to save a png image of the current frame",10,115);
    text("hold the spacebar to view instructions",10,130);
    text("hold down the '1' key on your keyboard and move your mouse for something crazy", 10, 145);
    }
}
}
