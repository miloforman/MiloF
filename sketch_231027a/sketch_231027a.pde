// A basic Sunflower class
class Sunflower {
  // Instance variables:
  float x, y; // Position of the sunflower's face
  float radius; // Radius of the sunflower's face
  float stemLength; // Length of the sunflower's stem

  // Constructor:
  Sunflower(float x, float y, float radius, float stemLength) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.stemLength = stemLength;
  }

  // Methods:
  void drawSunflower() {
    // Draw the sunflower's face
    ellipse(x, y, radius * 2, radius * 2);

    // Draw the sunflower's stem
    line(x, y, x, y - stemLength);
  }

  void growUp() {
    // Move the sunflower's face upwards
    y -= 10;
  }

  void getBigger() {
    // Increase the radius of the sunflower's face
    radius *= 1.1;
  }

  boolean mouseOver() {
    // Check if the mouse is hovering over the sunflower's face
    return dist(mouseX, mouseY, x, y) < radius;
  }
}

//This code defines a Sunflower class with the following methods:

    //drawSunflower(): This method draws the sunflower object using ellipses for the "face" and lines for the stem.
    //growUp(): This method makes the "face" of the sunflower move upwards.
    //getBigger(): This method makes the "face" of the flower get bigger.
    //mouseOver(): This method returns true if the mouse is hovering over the flower's "face", otherwise returns false.

//To use this code, you would first need to create several Sunflower objects in different locations in the main tab. You can do this using the following code:

Sunflower sunflower1 = new Sunflower(100, 100, 20, 50);
Sunflower sunflower2 = new Sunflower(200, 200, 30, 75);

//Once you have created your Sunflower objects, you can then call upon their methods to implement the following behavior:

// When your mouse is hovering over any sunflower, that flower should grow up
if (sunflower1.mouseOver()) {
  sunflower1.growUp();
}

// When you click on any sunflower, that flower should get bigger
if (mousePressed) {
  sunflower2.getBigger();
}

//You can also choose whether the user can click-and-hold to get bigger, or if they have to click multiple times. To allow the user to click-and-hold to get bigger, you can change the code for the getBigger() method to the following:

void getBigger(){
  // Increase the radius of the sunflower's face
  while (mousePressed) {
    radius *= 1.1;
  }
}
