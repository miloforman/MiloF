// Define variables
int paddleX, paddleY;
int paddleWidth = 50;
int paddleHeight = 10;

int ballX, ballY;
int ballRadius = 10;
int ballDiameter = 20;
int ballWidth = 20;

float ballSpeedX, ballSpeedY;

boolean isDragging = false;
int dragOffsetX, dragOffsetY;

// Setup function
void setup() {
  size(1442, 845);
  frameRate(60);

  paddleX = width / 2 - paddleWidth / 2;
  paddleY = height - paddleHeight - 10;

  ballX = width / 2;
  ballY = height / 2;

  ballSpeedX = random(-5, 5);
  ballSpeedY = random(-5, 5);
}

// Draw function
void draw() {
  background(220);

  // Draw paddle
  fill(0);
  rect(paddleX, paddleY, paddleWidth, paddleHeight);

  // Draw ball
  fill(255, 0, 0);
  ellipse(ballX, ballY, ballDiameter, ballWidth);

  // Update ball position
  ballX += ballSpeedX;
  ballY += ballSpeedY;

  // Bounce ball off walls
  if (ballX < ballRadius || ballX > width - ballRadius) {
    ballSpeedX *= -1;
  }

  if (ballY < ballRadius) {
    ballSpeedY *= -1;
  }

  // Bounce ball off paddle
  if (ballY + ballRadius >= paddleY && ballX >= paddleX && ballX <= paddleX + paddleWidth) {
    ballSpeedY *= -1;
  }

  // Handle mouse click, hold, and drag
  if (mousePressed) {
    if (!isDragging) {
      dragOffsetX = mouseX - paddleX;
      dragOffsetY = mouseY - paddleY;
      isDragging = true;
    }
  } else {
    isDragging = false;
  }

  if (isDragging) {
    paddleX = mouseX - dragOffsetX;
    paddleX = constrain(paddleX, 0, width - paddleWidth);
  }
}
