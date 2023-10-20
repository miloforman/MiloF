class Road1{
  int x;
  int y;
  int w; 
  int h;
  int dx;
  int r;
  int g;
  int b;
  
  Road1(int startingX, int startingY, int startingW, int startingH, int startingDx, int startingR, int startingG, int startingB){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    dx = startingDx;
  }
  void drawRoad1(){
    fill(105,105,105);
    rectMode(CENTER);
    rect(x,y,w,h,dx,r,g,b);
    fill(255,255,0);
    rect(150,700,2575,2,dx,255,255,0);
    rect(150,708,2575,2,dx,255,255,b);
  }
}
