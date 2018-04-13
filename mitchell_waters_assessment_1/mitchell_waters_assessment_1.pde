//accessing minnim library, getting an audio-in
import ddf.minim.*;
Minim minim;
AudioInput in;

// array to be used to get input from built-in mic
float[] audioData = new float[512];

//declaring the button and instruction variables for interactivity
Button b;
Instructions ints;
int buttonW, buttonH, buttonX, buttonY;

//creating an array list with circle objects, initialised
ArrayList<Circle> circles = new ArrayList<Circle>();

//variable for key interactivity
float rotOne = 0;

//smoothing the responsiveness of the mic input signal
float smoothedMax = 0;


void setup()
{
 //background size and dimension 
  size(1000,1000,P2D);
 
  
  //calling start button and setting size/color/value
  b = new Button();
  b.setPosition(width/2, height/2);
  b.setSize(335,100);
  b.setColour (color(255));
  
  //calling the instructions class
  ints = new Instructions();
  

  
  // calling minim line input, mono signal with a reading 512 samples per sec
  minim = new Minim(this);
  in = minim.getLineIn(Minim.MONO, 512);
}


void draw()
{

  background(0);
  
  //draw buttons and instructions with their update functions
   b.update();
   b.drawButton(); 
   ints.update();
   ints.showInstructions();
   
   
   // new variable for max audio in
   float max = 0;
   
   //function changes the color of the circles depending on the amplitude of the signal picked up by the mic input
   for(int i = 0; i < in.bufferSize() - 1; i++) //spacing 
   {
     audioData[i] = in.mix.get(i);
     if(audioData[i] > max) max = audioData[i];
     }
    
    // input amplitude's effect on colour held
    smoothedMax = smoothedMax * 0.95f + max * 0.1f;
    
    // calling the circles and their functions
    for(int i = 0; i < circles.size(); i++)
    {
      Circle circle = circles.get(i);
      circle.update();
      circle.draw(smoothedMax*10.0f);  
     }
}


void keyPressed()
{
  
  //keyboard interactivity, clear page
  if(key == 'c')
  {
    circles.clear();
  }
  
  
  //keyboard interactivity, save a photo to the data folder
  if (key =='s')
  {
    save(dataPath("####.png"));
  }
}


void mouseDragged()
{
  circles.add(new Circle(mouseX, mouseY));
}
