class Player{
  float posY = 0;
  float velY = 0;
  float gravity = 1.2;
  int size = 20;
  boolean duck = false;
  boolean dead = false;
  
  Player(){
  }
  
  void jump(){
    if(posY == 0){
    gravity = 1.2;
    velY = 16;
  }
  
  void show(){
    
  }
  
  void move(){
    posY+= velY;
    if(posY > 0){
      velY -= gravity;
    }
    else{
      velY = 0;
      posY = 0;
    }
    
    void ducking(boolean isDucking){
      if(posY != 0 && isDucking){
        gravity = 3;
      }
  }
}
