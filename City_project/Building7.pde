class Building7{
  int x;
  int y;
  int w;
  int h;
  int dx;
  int r;
  int g;
  int b;
  
  Building7(int startingX, int startingY, int startingW, int startingH, int startingDx){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    dx = startingDx;
  }
  void drawBuilding7(){
    fill(175,55,77);
    rectMode(CENTER);
    rect(x,y,w,h,dx,r,g,b);
    fill(150,150,150);
    tint(10,100,10);
    fill(51,51,51);
    rect(x+10,y+215,w-115,h-205,dx,r,g,b);
    fill(255,255,255);
  }
}
