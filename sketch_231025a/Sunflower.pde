class Sunflower{
  int x;
  int y;
  float w;
  float h;
  int r;
  int g;
  int b;
  
  Sunflower(int startingX, int startingY, int startingW, int startingH, int startingR, int startingG, int startingB){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    r = startingR;
    g = startingG;
    b = startingB;
    }
  void drawSunflower(){
    if (mousePressed)
       w = w+5;
       h = h+5;
    fill(255,255,0);
    ellipse(x,y,w,h);
    fill(0,255,140);
    rect(595,445,8,150);
   }
   void getBigger() {
     w *= 1.1;
     h *= 1.1;
}
