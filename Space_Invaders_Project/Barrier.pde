class Barrier{
  int x,y,w,h;
  
  Barrier(int startingX, int startingY, int startingW, int startingH){
    
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
  
}
  
  void drawBarrier(){
    rect(x,y,w,h);
  }
  void BarrierCheck(){
    for(int i = 0; i < AlienLaserList.size(); i++){
      AlienLaser l = AlienLaserList.get(i);
      if(l.x > x - w/2 && l.x < x + w/2 && l.y > y - h/2 && l.y < y + h/2){
        AlienLaserList.remove(l);
        BarrierList.remove(this);
          }
        }
      }
    void BarrierCheckPL(){
      for(int i = 0; i < playerLaserList.size(); i++){
      playerLaser pl = playerLaserList.get(i);
      if(pl.x > x - w/2 && pl.x < x + w/2 && pl.y > y - h/2 && pl.y < y + h/2){
        playerLaserList.remove(pl);
        BarrierList.remove(this);
          }
        }
      }
    }
