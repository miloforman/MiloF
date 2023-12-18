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
    fill(240,29,0);
    rect(x,y,w,h);
    y = y + dy;
  }
  void offScreenCheck(){
    if(y <0){
      playerLaserList.remove(this);
    }
  }
}
