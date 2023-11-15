class Star
{
  PVector Pos = new PVector (0,0);
  int scoreValue = 50;
  boolean alive = true;
  Timer timeAlive;
  color Colour = color(0,0,0);
  
  Star()
  {
    Pos = new PVector(random(30,width-30), random(80,height-30));
    timeAlive = new Timer(int(random(5,10)));
    Colour = color(255,223,0);
  }
  void update()//updates the alive timer and checks to see when it's dead. need to be in void draw
  {
    timeAlive.countDown();
    if(timeAlive.Time <= 0)
    {
      alive = false;
    }
  }
  
  void star(float x, float y, float radius1, float radius2, int npoints)
  {
    float angle = TWO_PI / npoints;
    float halfAngle = angle/2;
    beginShape();
    for(float a=0; a<TWO_PI; a +=angle)
    {
      float sx = x + cos(a) * radius2;
      float sy = y + cos(a) * radius2;
      vertex(sx,sy);
      sx = x + cos(a+halfAngle) * radius1;
      sy = y + cos(a+halfAngle) * radius1;
      vertex(sx,sy);
    }
    endShape(CLOSE);
  }
  void render()
  {
    pushMatrix();
    translate(Pos.x,Pos.y);
    fill(Colour);
    star(0,0,5,10,5);
    popMatrix();
  }
  
  
}
