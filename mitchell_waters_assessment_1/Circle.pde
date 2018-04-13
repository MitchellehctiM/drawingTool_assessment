//circle class, circles that expand in size until it reaches a maximum value

class Circle{
  
  //declaring variavles
  int x;
  int y;
  int radius;
  int maxSize = 100;
  float rotOne = 0;
  
  // Constructor
  Circle(int _x, int _y){
    x = _x;
    y = _y;
    radius = 0;
    //changing colour mode to achieve desired effect
    colorMode(HSB,100);


  }
  
  void update(){
    //circles grow in size
    radius++;   
  }
  
    void draw(float sample) {

      {
        //draws circles that grow in size (up to a determined Max size of 100)
        stroke(50,100,100);
        fill(sample*255,50,50);//color of top
        ellipse(x,y,radius%maxSize,radius%maxSize); //
      } 
      
     //keyboard and mouse interactivity to scatter the circles and glitch to create unpredictable aesthetic effects, relative to mouse position
      if (keyPressed && key == '1'){
          rotate(rotOne);
          translate(random(900), random(900), random(200));
          rotOne = mouseX - mouseY;
            }else{
              rotOne = 0;
            }
      
      
  }
}
