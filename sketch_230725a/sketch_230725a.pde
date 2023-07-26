void setup() {
  size(400, 400);
}

void draw() {
  // The draw function is empty because we'll be drawing shapes only when a key is pressed.
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    drawSquare();
  } else if (key == 't' || key == 'T') {
    drawTriangle();
  }
}

void drawSquare() {
  // Calculate the center of the canvas
  float centerX = width / 2;
  float centerY = height / 2;
  
  // Calculate the distance from the cursor to the center of the canvas
  float distance = dist(centerX, centerY, mouseX, mouseY);
  
  // Map the distance to a color value (closer to the center -> more red)
  float redValue = map(distance, 0, width / 2, 255, 0);
  
  // Set the fill color for the square
  fill(redValue, 0, 0); // Red
  
  // Define the square size
  float squareSize = 100;
  
  // Draw the square at the cursor position
  rectMode(CENTER);
  rect(mouseX, mouseY, squareSize, squareSize);
}

void drawTriangle() {
  // Calculate the center of the canvas
  float centerX = width / 2;
  float centerY = height / 2;
  
  // Calculate the distance from the cursor to the center of the canvas
  float distance = dist(centerX, centerY, mouseX, mouseY);
  
  // Map the distance to a color value (closer to the center -> more blue)
  float blueValue = map(distance, 0, width / 2, 0, 255);
  
  // Set the fill color for the triangle
  fill(0, 0, blueValue); // Blue
  
  // Define the triangle size
  float triangleSize = 100;
  
  // Draw the triangle at the cursor position
  float x1 = mouseX;
  float y1 = mouseY - triangleSize / 2;
  float x2 = mouseX - triangleSize / 2;
  float y2 = mouseY + triangleSize / 2;
  float x3 = mouseX + triangleSize / 2;
  float y3 = mouseY + triangleSize / 2;
  triangle(x1, y1, x2, y2, x3, y3);
}
