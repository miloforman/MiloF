class sun{
  color sunColor;
  int x;
  int y;
  int w; 
  int h;
  int dx;
  int dy;
  int r;
  int g;
  int b;
  
  sun(int startingX, int startingY, int startingW, int startingH, int startingDx, int startingDy, int startingR, int startingG, int startingB){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    dx = startingDx;
    dy = startingDy;
    r = startingR;
    b = startingB;
    g = startingG;
  }
  void drawsun(){
  ellipse(x,y,120,120);
   //How sun dx and dy values work: 
    x=x+dx;
    y=y+dy;
    //Making the sun rise and set
  x+=1;
  if (x > width) {
    x=0;
  }
  if (y > height) {
    y=0;
  }
  if (y < 0 || y > height) {
    dy *= -3/2;
  }
  if (x < 30) {
    y=0;
  }
}
}
