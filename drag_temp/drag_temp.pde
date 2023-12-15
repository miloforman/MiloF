// Define variables
float boxX, boxY;
int boxWidth = 50;
int boxHeight = 50;

boolean isDragging = false;
float dragOffsetX, dragOffsetY;

// Setup function
void setup() {
  size(400, 400);
  frameRate(60);

  boxX = width / 2 - boxWidth / 2;
  boxY = height / 2 - boxHeight / 2;
}

// Draw function
void draw() {
  background(220);

  // Draw bounding box
  stroke(0);
  fill(255);
  rect(boxX, boxY, boxWidth, boxHeight);

  // Handle mouse click, hold, and drag
  if (mousePressed) {
    if (!isDragging) {
      if (mouseX > boxX && mouseX < boxX + boxWidth && mouseY > boxY && mouseY < boxY + boxHeight) {
        dragOffsetX = mouseX - boxX;
        dragOffsetY = mouseY - boxY;
        isDragging = true;
      }
    }
  } else {
    isDragging = false;
  }

  if (isDragging) {
    boxX = mouseX - dragOffsetX;
    boxY = mouseY - dragOffsetY;
  }
}
