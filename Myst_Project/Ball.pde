class Ball
{
  PVector Pos = new PVector(0,0); //A PVector is a sueful way to store multiple values usually 2 or 3
  float Size = 30;
  float Speed = 200;
  PVector Direction = new PVector(0,0); //A PVector is a sueful way to store multiple values usually 2 or 3
  color Colour = color(0,0,0);
  
  Ball(float x, float y, float size, float speed, int red, int blue, int green)
  {
    Pos = new PVector(x,y); //A PVector is a sueful way to store multiple values usually 2 or 3
    Size = size;
    Speed = speed;
    Colour = color(red,green,blue);
    Direction = new PVector(random(-10,10), random(-10,10));
  }
  void render()
  {
    fill(Colour);
    ellipse(Pos.x,Pos.y,Size,Size);
  }
  void update()
  {
    Pos.x += Direction.normalize().x * 1/frameRate * Speed;
    Pos.y += Direction.normalize().y * 1/frameRate * Speed;
    if(Pos.x <0)
    {
      Direction.x = -Direction.x;
      Pos.x = 0;
    }
    if(Pos.x >width)
    {
      Direction.x = -Direction.x;
      Pos.x = width;
    }
    if(Pos.y < 0)
     {
    Direction.y = -Direction.y;
    Pos.y = 0;
     }
  if(Pos.y >height)
  {
    Direction.y = -Direction.y;
    Pos.y = height;
  }
 
 }
}
