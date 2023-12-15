Player player;
float counter = 0;
float speed = 0.1;
int index = 0;
float spdV = 3;
float spdH = 3;
float x, y;
ArrayList<PImage> Player;
 
void setup() {
  size(800, 800);
  noSmooth();
  imageMode(CENTER);
  player = new Player(400,400,30,30);
 
  x = width/2;
  y = height/2;
  Player = new ArrayList<PImage>();
}
 
void draw() {
  background(128);
  player.drawPlayer();
  walk(mouseX, mouseY);
  animation(100);
}
 
void walk(float tx, float ty) {
  if (x != tx) {
    if (dist(x, 0, tx, 0) < spdH) {
      x = tx;
    } else if (x < tx) {
      x+=spdH;
    } else {
      x-=spdH;
    }
  }
  if (y != ty) {
    if (dist(y, 0, ty, 0) < spdV) {
      y = ty;
    } else if (y < ty) {
      y+=spdV;
    } else {
      y-=spdV;
    }
  }
}
 
void animation(float size) {
  if (mouseX > x) {
    image(Player.get(index), x, y, -size, size);
  } else {
    pushMatrix();
    translate(x, y);
    scale(-1,1);
    image(Player.get(index), 0, 0, size, size);
    popMatrix();
  }
 
  counter += speed;
  while (counter > 1 || counter < 0) {
    if (counter > 1) {
      index++;
      counter-=1;
      if (index > Player.size()-1) { 
        index = 0;
      }
    } else if (counter < 0) {
      index--;
      counter+=1;
      if (index < 0) {
        index = Player.size()-1;
      }
    }
  }
}
