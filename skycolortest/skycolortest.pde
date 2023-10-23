float timer;

void setup(){
  size(800,800);
  timer = 0;
}

void draw(){
  background(0,0,timer);
  if (timer < 100){
  timer += 0.5;
}
}
