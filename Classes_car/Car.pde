class Car{
  
  //THREE THINGS APPEAR IN EVERY CLASS
  //1. information that the type of object KNOWS about itself
  //variables
  //declaring something as an "int" means integer, and that whatever the variable is will have a value of an integer
  int x,y,w,h,dx;
  int r; 
  int g;
  int b;
  
  //2. How to MAKE ONE - aka "constructor"
  Car(int startingX, int startingY, int startingW, int startingH, int startingDx){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    r = 255;
    g = 0;
    b = 0;
    dx = startingDx;
  }
  
  //3. behaviors/actions --> METHODS
  void drawCar(){
    // = vs. == in programming:
    // = CHANGES the left side of the equals to be equal to the right
    // == CHECKS if the left side of the equals is equal to the right
    
    x = x + dx;
    
    //Prevents bouncing off the right side
    if(x > 1240){
      //some code goes here
      dx = -dx;
    }
    //Prevent bouncing off of the left side
    if(x < 0){
      dx = -dx;
    }
    
    fill(r,g,b);
    rectMode(CENTER);
    rect(x+50,y+35,300,100);
    
    //building wheels using offsets
    
    //building left wheel
    ellipse(x-100,y+100,w+50,h+50);
    
    //building right wheel
    ellipse(x+200,y+100,w+50,h+50);
  }
  
}
