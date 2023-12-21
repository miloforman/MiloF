class Healthbar{
  int x,y,w,h;
  
  Healthbar(int startingX,int startingY,int startingW,int startingH){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
  }
  
  void drawHealthbar(){
    if(p1.lives > 0){
      //fill(240,29,0);
      //rect(x,y,w,h);
      image(img3,x,y,w+5,h+20);
      }
    }
  }
