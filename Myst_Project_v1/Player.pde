class Player{
  float x;
  float y;
  float w;
  float h;
  
  Player(float startingX, float startingY, float startingW, float startingH){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
  }
  void drawPlayer(){
    fill(255,0,0);
    ellipse(400,400,30,30);
  }
}
