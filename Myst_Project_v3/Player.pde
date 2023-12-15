class Player {
  
  float w,h,ground,x,y, gravity, velocity;
  boolean isGrounded;
  
  Player(){
    w = 50;
    h = 50;
    x = 150;
    ground = height-200;
    y = 300;
    gravity = -2;
    velocity = 0;
    isGrounded = false;
  }
  
  void jump(){
    velocity = 0;
    velocity +=30;
  }
    
  
  void update(){
    velocity += gravity;
    y -= velocity ;
    
    if(y + h >= ground){
      isGrounded = true;
      y = ground-h;
    } else {
      isGrounded = false;
    }
  }
  
  void show(){
    noStroke();
    fill(0,0,0);
    rect(x,y,w,h);
  
   }
}
