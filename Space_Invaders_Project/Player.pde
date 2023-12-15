class Player{
  int x,y,w,h,dx;
  int health;
  int lives;
  
  Player(int startingX,int startingY,int startingW,int startingH,int startingDx){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    dx = startingDx;
    health = 90;
    lives = 3;
  }
  
  void drawPlayer(){
    if(lives >0){
    rect(x,y,w,h);
    }
  }
  
  void moveLeft(){
    dx = -20;
    x = x+dx;
  }
  
  void moveRight(){
    dx = 20;
    x = x + dx;
  }
  
  void AlienlaserCheck(){
    for(int i = 0; i < AlienLaserList.size(); i++){
       AlienLaser l = AlienLaserList.get(i);
       if(l.x > x - w/2 && l.x < x + w/2 && l.y > y - h/2 && l.y < y + h/2){                  //lx and ly are basically mouseX and mouseY, serves as a bounding box to check if the laser is inside of thex and y of the alien
       AlienLaserList.remove(l);
       health -= 30;
       if(health == 0){
         lives -= 1;
         health = 90;
         }
       }
    }
  }
  
  
  
}
