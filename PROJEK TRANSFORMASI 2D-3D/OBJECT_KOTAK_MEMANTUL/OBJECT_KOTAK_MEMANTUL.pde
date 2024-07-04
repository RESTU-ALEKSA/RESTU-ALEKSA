float[] squareX = new float[10];
float[] squareY = new float[10];
float[] speedX = new float[10];
float[] speedY = new float[10];
float[] squareAngles = new float[10];
color[] squareColors = new color[10];

void setup() {
  size(400, 400);
  
  for (int i = 0; i < 10; i++) {
    squareX[i] = random(width);
    squareY[i] = random(height);
    speedX[i] = random(1, 5);
    speedY[i] = random(1, 5);
    squareAngles[i] = 0; // sudut awal rotasi
    squareColors[i] = color(random(255), random(255), random(255)); // warna acak untuk setiap kotak
  }
}

void draw() {
  background(255);
  
  for (int i = 0; i < 10; i++) {
    fill(squareColors[i]); // set warna sebelum menggambar
    pushMatrix();
    translate(squareX[i], squareY[i]);
    rotate(squareAngles[i]); // rotasi kotak
    
    rectMode(CENTER);
    rect(0, 0, 20, 20); // kotak
    
    popMatrix();
    
    squareAngles[i] += 0.05; // kecepatan rotasi
    
    squareX[i] += speedX[i];
    squareY[i] += speedY[i];
    
    if (squareX[i] < 0 || squareX[i] > width) {
      speedX[i] *= -1;
    }
    if (squareY[i] < 0 || squareY[i] > height) {
      speedY[i] *= -1;
    }
  }
}
