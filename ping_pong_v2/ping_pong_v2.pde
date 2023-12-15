int x;
int y;
int w;
int h;

int speed;

void setup() {
  size(500,500);
  //background(0);
  
  x = width/2;
  y = height/2;
  w = 50;
  h = 50;
}

void draw() {
  background(0);
  fill(255,0,0);
  ellipse(x, y, w, h);
  
  if(x > width - w/2) {
    speed = -speed;
  }
  
  else if(x < 0 + w/2) {
    speed = -speed;
  }
  
  x = x + speed;
}
