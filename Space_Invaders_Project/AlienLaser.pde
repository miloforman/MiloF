class AlienLaser{
  int x,y,w,h,dy;
  
  AlienLaser(int startingX,int startingY,int startingW,int startingH,int startingDy){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    dy = startingDy;
  }
  
  void drawAlienLaser(){
    rect(x,y,w,h);
    y = y + dy;
  }
  void offScreenCheck(){
    if(y <0){
      AlienLaserList.remove(this);
    }
  }
}
