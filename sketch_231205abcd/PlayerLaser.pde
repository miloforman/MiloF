class playerLaser{
  int x,y,w,h,dy;
  
  playerLaser(int startingX,int startingY,int startingW,int startingH,int startingDy){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    dy = startingDy;
  }
  
  void drawPlayerLaser(){
    rect(x,y,w,h);
    y = y + dy;
  }
  void offScreenCheck(){
    if(y <0){
      playerLaserList.remove(this);
    }
  }
}
