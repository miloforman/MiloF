class Star{
  int x,y,w,h,dx;
  
  
  Star(int startingX,int startingY,int startingW,int startingH, int startingDx){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    dx = startingDx;
  }
  void drawStar(){
    ellipse(x,y,w,h);
    x = x +dx;
  }
  
  void laserCheck(){
    for(int i = 0; i < playerLaserList.size(); i++){
       playerLaser l = playerLaserList.get(i);
       if(l.x > x - w/2 && l.x < x + w/2 && l.y > y - h/2 && l.y < y + h/2){                  //lx and ly are basically mouseX and mouseY, serves as a bounding box to check if the laser is inside of thex and y of the alien
       playerLaserList.remove(l);
       starlist.remove(this);
       
       }
    }
  }
  //void Move(int direction){
    //if(direction %2 ==0){
      //dx += 1;
    //}
    //else{
      //dx -=1;
    //}
  //}
  
}
