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
    r = 254;
    g = 32;
    b = 32;
    dx = startingDx;
  }
  
  void drawCar(){
    x = x +dx;
    if(x > 1700){
      dx = 0;
    }
    fill(r,g,b);
    rectMode(CENTER);
    rect(x,y,195,125);
    quad(x-97,y-15,x-45,y-55,x+45,y-55,x+97,y-15);
    
    fill(0,0,0);
    ellipse(x-52,y+35,w+12,h+12);
    ellipse(x+52,y+35,w+12,h+12);
    fill(255,255,255);
    tint(255, 127);
    rect(x,y-35,w,h);
  }
}
