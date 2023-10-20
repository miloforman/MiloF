class Building1{
  int x;
  int y;
  int w;
  int h;
  int dx;
  int r;
  int g;
  int b;

  Building1(int startingX, int startingY, int startingW, int startingH, int startingDx){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    dx = startingDx;
  }
  void drawBuilding1(){
    fill(r,g,b);
    rectMode(CENTER);
    rect(x,y,w,h,dx,r,g,b);
    fill(255,255,255);
    tint(10,100,10);
    fill(51,51,51);
    rect(x+10,y+215,w-115,h-430,dx,r,g,b);
    fill(255,255,255);
  }
}
  
    
