class Button
{
  PVector Pos = new PVector(0,0); //A PVector is something that is useful for storing multiple values, and in this code, Pos.x and Pos.y are examples of 2 different values of Pos, that are stored in the PVector here.
  float Width = 0;
  float Height = 0;
  color Colour;
  String Text;
  Boolean Pressed = false;
  Boolean Clicked = false;
  // Constructor to create a button
  Button(int x,int y, int w, int h, String t,int r,int g,int b)
  {
    Pos.x = x;
    Pos.y = y;
    Width = w;
    Height = h;
    Colour = color(r,g,b);
    Text =t;
  }
  void update()
  {
    if(mousePressed == true && mouseButton == LEFT && Pressed == false)
    {
      Pressed = true;
      //This boundingbox checks to see if the mouse cursor is over where the button will be displayed on the screen.
      if(mouseX>= Pos.x && mouseX <= Pos.x+Width && mouseY >= Pos.y && mouseY <= Pos.y+Height)
      {
        Clicked = true;
      }
    } else
    {
        Clicked = false;
      }
      
      if(mousePressed !=true)
      {
        Pressed = false;
      }
    }
    void render()
    {
      fill(Colour);
      rect(Pos.x,Pos.y,Width,Height);
      
      fill(0);
      textAlign(CENTER,CENTER);
      //Makes the button's text a font of 18
      textSize(18);
      text(Text,Pos.x+(Width/2),Pos.y+(Height/2));
    }
    boolean isClicked() //used to ask the computer if the mouse is clicking in terms of is that statement either true or false.
    {
      return Clicked;
    }
}
