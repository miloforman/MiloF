float x,y,s=40;
int score;
boolean pressed;

void setup()
{
  size(1442,845);
  noStroke();
  textAlign(CENTER);
  textSize(35);
  reset();
}

void draw()
{
  background(0);
  fill(255);
  
  if(!pressed && mousePressed)
    {
    pressed = true;
    if(mouseX > x- (s/2) && mouseY > y - (s/2) && mouseX < x + (s/2) && mouseY < y + (s/2))
    {
      score++;
      randomPos();
    }
    else{
      reset();
      }
    }
  if(pressed && !mousePressed)
    {
    pressed = false;
    }
    
    ellipse(x,y,s,s);
    text("Score : " + score,width /2, 40);
  }
   
  void reset()
  {
    x = width /2;
    y = height /2;
    score = 0;
  }
  
  void randomPos()
  {
    x = random(s/2, width - (s/2));
    y = random(s/2, height - (s/2));
  }
  
 

    
    
    
    
