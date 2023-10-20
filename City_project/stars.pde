class stars{
  int x;
  int y;
  int w;
  int h;
  int r;
  int g;
  int b;
  
  stars(int startingX, int startingY, int startingW, int startingH, int startingR, int startingG, int startingB){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    r = startingR;
    b = startingB;
    g = startingG;
  }
  void drawstars(){
    ellipse(100,100,30,30);
}
}
  
