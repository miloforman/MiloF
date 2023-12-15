class Enemy{
  
  float w,h,x,y,speed;
  
  Enemy(){
    w = 50;
    h = 100;
    x = width;
    y = height-200-h;
    speed = 10;
  }
  
  void update(){
    x -= speed;
  }
  
  void show(){
    noStroke();
    fill(0,255,0);
    rect(x,y,w,h);
  }
}
