void setup()
{
  size(600,400);
}

float ballX = 0;
float ballY = 200;
float speedX = 10;
float speedY = 0;
int hit = 0;
int miss = 0;

void draw()
{
  float paddle = 1000/ (hit+10);
  if(ballX < 0 || ballX > width) speedX = -speedX;
  if(ballY > height){
    speedY = -speedY;
    float distance = abs(mouseX - ballX);
    if(distance < paddle) hit +=1;
    else miss += 1;
  } else speedY +=1;
  
  ballX += 1;
  ballY += 1;
  
  background(100, 200, 50);
  fill(200,100,50);
  ellipse(ballX, ballY, 50, 50);
  fill(50,100,200);
  rect(mouseX-paddle, height, 2*paddle ,10);
  
  fill(0);
  text("hit: " + hit, 10, 10);
  text("miss: " + miss, 10, 40);
  
} 
