class Building2{
  int x;
  int y;
  int w;
  int h;
  int dx;
  int r;
  int g;
  int b;
  
  Building2(int startingX, int startingY, int startingW, int startingH, int startingDx){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    dx = startingDx;
  }
  void drawBuilding2(){
    fill(r,g,b);
    rectMode(CENTER);
    rect(x,y,w,h,dx,r,g,b);
    tint(10,100,10);
    fill(51,51,51);
    rect(x+10,y+125,w-110,h-275,dx,r,g,b);
  }
}
