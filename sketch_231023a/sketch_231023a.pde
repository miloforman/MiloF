void setup() {
  size(400, 400);
  background(200); // Set a light gray background
}

void draw() {
  // Draw a cloud

}

void drawCloud(float x, float y, float size) {
  noStroke(); // No outline for the ellipses
  fill(255);  // White fill color

  // Draw several ellipses to create the cloud
  ellipse(x, y, size, size);

  ellipse(x + size * 0.7, y, size, size);
  ellipse(x + size * 1.2, y, size * 1.2, size * 1.2);
  ellipse(x + size * 1.6, y - size * 0.2, size * 0.8, size * 0.8);
}
