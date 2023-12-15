ArrayList<Star> starlist;
ArrayList<playerLaser> playerLaserList;
ArrayList<AlienLaser> AlienLaserList;
Player p1;

void setup(){
  size(1000,1000);
  starlist = new ArrayList<Star>();
  playerLaserList = new ArrayList<playerLaser>();
  AlienLaserList = new ArrayList<AlienLaser>();
  p1 = new Player(200,800,200,100,0);
  
  for(int x = 150; x<750; x+=100){
    for(int y = 100; y < 400; y+=100){
     starlist.add(new Star(x,y,65,65,2)); 
    }
  }
}
void draw(){
  background(100);
  p1.drawPlayer();
  p1.AlienlaserCheck();
  println(p1.health,p1.lives);
  for(int i=0; i<starlist.size(); i++){
    Star s = starlist.get(i);
    s.drawStar();
    s.laserCheck();
    
    if(random(0,100)<0.1){
      AlienLaserList.add(new AlienLaser(s.x,s.y,22,75,15));
    }
    
    if(s.x >800 || s.x <100){
      for(int d=0; d <starlist.size(); d++){
        Star c = starlist.get(d); //d is the variable used for a loop
        c.dx = -c.dx;
      
     
  }
  }
}
for(int i=0; i<AlienLaserList.size(); i++){
  AlienLaser al = AlienLaserList.get(i);
  al.drawAlienLaser();
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
  playerLaserList.add(new playerLaser(p1.x,p1.y,22,75,-20));
  }
 
 }
