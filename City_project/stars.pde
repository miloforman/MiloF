class Stars{
  int x;
  int y;
  int w;
  int h;
  int r;
  int g;
  int b;
  
  Stars(int startingX, int startingY, int startingW, int startingH, int startingR, int startingG, int startingB){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    r = startingR;
    b = startingB;
    g = startingG;
  }
  void drawStars(){
    ellipse(1370,100,30,30);
    ellipse(1430,30,30,30);
    ellipse(1310,30,30,30);
    ellipse(1250,100,30,30);
    ellipse(1190,30,30,30);
    ellipse(1130,100,30,30);
    ellipse(1070,30,30,30);
    ellipse(1010,100,30,30);
    ellipse(950,30,30,30);
    ellipse(890,100,30,30);
    ellipse(830,30,30,30);
    ellipse(630,30,30,30);
    
  }
}
  
