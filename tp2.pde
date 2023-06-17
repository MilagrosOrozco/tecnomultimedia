//Milagros Orozco
//Legajo: 93501/7
//Comision 2
//Trabajo practico 2
//Link de video: https://www.youtube.com/watch?v=yGJR83PuF5g



int numSquares = 50;
int maxSize = 400;
int minSize = 5;
float strokeWidth = 0.1;

PImage square;
int centerX;
int centerY;
int[] squareColors;

boolean rotateSquares = false; 
int rotationStartTime; 

void setup() {
  size(800, 400);
  background(0);
  square = loadImage("square.jpg");

  centerX = width / 2 + width / 4;
  centerY = height / 2;

  squareColors = new int[numSquares];

  for (int i = 0; i < numSquares; i++) {
    if (i % 2 == 0) {
      squareColors[i] = color(255, 255, 255);
    } else {
      squareColors[i] = color(0, 0, 0);
    }
  }
}

void draw() {
  image(square, 0, 0, 400, 400);

  if (rotateSquares) {
    int elapsedTime = millis() - rotationStartTime;
    if (elapsedTime < 2000) {
      float angle = map(elapsedTime, 0, 2000, 0, PI * 2);
      translate(centerX, centerY);
      rotate(angle);
      translate(-centerX, -centerY);
    } else {
      rotateSquares = false;
    }
  }

  for (int i = numSquares - 1; i >= 0; i--) {
    float size = map(i, numSquares - 1, 0, maxSize, minSize);

    stroke(squareColors[i]);
    fill(squareColors[i]);
    strokeWeight(strokeWidth);
    rectMode(CENTER);
    rect(centerX, centerY, size, size);
  }
}

void mouseClicked() {
  for (int i = 0; i < numSquares; i++) {
    squareColors[i] = color(random(256), random(256), random(256));
  }
}

void keyPressed() {
  if (key == 'p' || key == 'P') {
    rotateSquares = true;
    rotationStartTime = millis();
  } else if (key == ' ') {
    for (int i = 0; i < numSquares; i++) {
      if (i % 2 == 0) {
        squareColors[i] = color(255, 255, 255);
      } else {
        squareColors[i] = color(0, 0, 0);
      }
    }
    rotateSquares = false;
  }
}
