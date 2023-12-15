class Star{
  int x,y,w,h;
  
  Star(int startingX, int startingY,int startingW,int startingH){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    
  }
  
  void drawStar(){
    ellipse(x,y,w,h);
    }
    
    void changeSize(){
      int newSize = int(random(20,60));
      w = newSize;
      h = newSize;
    }
}
