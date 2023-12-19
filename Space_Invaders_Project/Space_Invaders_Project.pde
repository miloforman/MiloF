ArrayList<Alien> alienlist;
ArrayList<playerLaser> playerLaserList;
ArrayList<AlienLaser> AlienLaserList;
ArrayList<Barrier> BarrierList;
Player p1;
Healthbar hb1,hb2,hb3;
PImage img,img1,img2;

void setup(){
  size(1000,1000);
  alienlist = new ArrayList<Alien>();
  playerLaserList = new ArrayList<playerLaser>();
  AlienLaserList = new ArrayList<AlienLaser>();
  BarrierList = new ArrayList<Barrier>();
  p1 = new Player(200,700,200,100,0);
  hb1 = new Healthbar(75,45,50,25);
  hb2 = new Healthbar(125,45,50,25);
  hb3 = new Healthbar(175,45,50,25);
  img = loadImage("starship.png");
  img1 = loadImage("alienfs.png");
  img2 = loadImage("blueship.png");
  
  for(int x = 100; x < 1000; x += 250){
    BarrierList.add(new Barrier(x,600,100,50));
  }
  
  
    for(int x = 150; x<750; x+=100){
    for(int y = 100; y < 400; y+=100){
     alienlist.add(new Alien(x,y,65,65,2)); 
    }
  }
}
void draw(){
  background(0);
  p1.drawPlayer();
  hb1.drawHealthbar();
  hb2.drawHealthbar();
  hb3.drawHealthbar();
  p1.AlienlaserCheck();
  println(p1.health,p1.lives);
  for(int i=0; i<alienlist.size(); i++){
    Alien s = alienlist.get(i);
    s.drawAlien();
    s.laserCheck();
    
    if(random(0,100)<0.1){
      AlienLaserList.add(new AlienLaser(s.x,s.y,10,60,15));
    }
    
    if(s.x >800 || s.x <100){
      for(int d=0; d <alienlist.size(); d++){
        Alien c = alienlist.get(d); //d is the variable used for a loop
        c.dx = -c.dx;
  }
  }
}
for(int i=0; i<AlienLaserList.size(); i++){
  AlienLaser al = AlienLaserList.get(i);
  al.drawAlienLaser();
  }
  
  fill(255);
  for(int i = 0; i < BarrierList.size(); i++){
    Barrier b = BarrierList.get(i);
    b.drawBarrier();
    b.BarrierCheck();
  }
    
  for(int m=0; m<playerLaserList.size(); m++){
    playerLaserList.get(m).drawPlayerLaser();
    playerLaserList.get(m).offScreenCheck();
  }
  
}
void keyPressed(){
if(key == 'a'){
  p1.moveLeft();
  }
  if(key == 'd'){
  p1.moveRight();
  }
  if(key == ' '){
  playerLaserList.add(new playerLaser(p1.x+90,p1.y-10,15,65,-20));
  }
 
 }
