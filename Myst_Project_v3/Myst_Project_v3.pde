
Player player;
ArrayList <Enemy> enemies = new ArrayList<Enemy>();
boolean isDragging = false;

void setup(){
  size(700,700);
  
  player = new Player();
  enemies.add(new Enemy());
}

void draw(){
  //logic
  
  //update
  player.update();
  
  for(int i = 0; i < enemies.size(); i++){
  enemies.get(i).update();
  }
  
  //makes infinite enemies/obstacles
  for(int i = 0; i < enemies.size(); i++){
    if(enemies.get(i).x == width/2 - 100) {
      enemies.add(new Enemy());
    }
  }
  // delete enemies/obstacles that go offscreen
  for(int i = 0; i < enemies.size(); i++){
  if(enemies.get(i).x < 0){
    enemies.remove(i);
    }
  }
  
  //draw
  frameRate(60);
  background(160,161,254);
  
  //ground//
  noStroke();
  fill(224,126,1);
  rect(0,height-200,width,200);
  //ground//
  
  for(int i = 0; i < enemies.size(); i++){ 
  enemies.get(i).show();
  
  player.show();
  }
}
void keyPressed(){
  // space 32
  // up arrow 38
  // down 40
  
  //allows playerto jump using spacebar
  if(keyCode == 32){
    if(player.isGrounded){
    player.jump();
    }
  }
  //allows up and down arrow keys to essentially act as pause & unpause buttons in the game
  if(keyCode == 38){
    noLoop();
  } else if(keyCode == 40){
    loop();
  }
}

    
    
