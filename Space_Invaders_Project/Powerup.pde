class Powerup{
  int x,y,w,h;
  boolean isactive = false;
  int health = 0;
  
  Powerup(int startingX,int startingY,int startingW,int startingH){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
  }
  void drawPowerup(){
    fill(30,30,230);
    ellipse(x,y,w,h);
  }
  
  void powerupactive(){
    isactive = true;
  }
  
  void shield(){
    health --;
    if(health == 0)
    isactive = false;
  }
  
  void Powerupcheck(){
    
  }
  
}
