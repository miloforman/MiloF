class Building3{
  int x;
  int y;
  int w;
  int h;
  int dx;
  int r;
  int g;
  int b;
  
  Building3(int startingX, int startingY, int startingW, int startingH, int startingDx){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    dx = startingDx;
  }
  void drawBuilding3(){
    fill(r,g,b);
    rectMode(CENTER);
    rect(x,y,w,h,dx,r,g,b);
    fill(150,150,150);
    tint(10,100,10);
  }
}
