class Car{
  int x,y,w,h,dx;
  int r; 
  int g;
  int b;
  
  Car(int startingX, int startingY, int startingW, int startingH, int startingDx){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    r = 240;
    g = 75;
    b = 200;
    dx = startingDx;
  }
  
  //This code enforces an "if___than___" statement, allowing for the car to travel and bounce off of the screen
  void drawCar(){
    x = x + dx;
    if(x > 1700){
      dx = -dx;
    }
    if(x < -150){
      dx = -dx;
    }
    fill(r,g,b);
    rectMode(CENTER);
    rect(x,y,195,h);
    quad(x-97,y-15,x-45,y-55,x+45,y-55,x+97,y-15);
    
    //This fill command, allows for the car's wheels to turn black
    fill(0,0,0);
    ellipse(x-52,y+35,w+12,h+12);
    ellipse(x+52,y+35,w+12,h+12);
    fill(255,255,255);
    tint(255, 127);
    rect(x,y-35,w,h);
  }
}
