// button, welcoming screen with a plain button that says 'start'. When clicked, user can begin to interact further

class Button
{
  
 //initialising variables for the button's position, size, color and status 
  int x;
  int y;
  int w;
  int h;
  color c;
  boolean startButton;
  boolean show = true;



  
 void update(){
   //if button clicked, button will = true and show will = true
   if(mousePressed) {   
     if((mouseX > x) && (mouseX < (x+w)) && (mouseY > y) && (mouseY < (y+h)))
       startButton = true; //if not included Insctuction's void showInstructions does not work
       show = false;
       println("start");
     } else {
       startButton = false;
       c = color(255);
   }
 }
 


 void setPosition(int a, int b)
 {
   x = a;
   y = b;  
 }
 
 void setColour(color col){
   c = col;
 }

 void setSize(int a, int b)
 {
   w = a;
   h = b;
 }
 
 //welcoming screen visual parameters
 void drawButton()
 {
   if(show) {
    fill(c);
    noStroke();
    rect(x-175,y-50,w,h);  
    fill(0);
    textSize(100);
    text("Start",x-125,y+30);
    fill(c);
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
