PImage img;
PImage[] babi1 = new PImage[20];
PImage[] monyet = new PImage[48];
int babi1X = 1300; // Start the first gif off-screen to the right
int monyetX = 1700; // Start the second gif off-screen to the right with a gap
float babiScale1 = 1; // Scale variable for the first gif
float babiScale2 = 0.8; // Reduced scale variable for the green car gif
float speed1 = 3; // Speed variable for the first gif
float speed2 = 9; // Speed variable for the second gif
float frameCounter1 = 0; // Frame counter for the first gif
float frameCounter2 = 0; // Frame counter for the second gif
int babi1YOffset = 100; // Adjusted offset to align the first gif with its lane
int monyetYOffset = 210; // Further increased offset to lower the green car

void setup() {
  size(1300, 800);
  smooth();
  img = loadImage("jalan2.jpg");
  for (int i = 0; i < 20; i++) {
    babi1[i] = loadImage("mobil (" + (i + 1) + ").gif");
  }
  for (int i = 0; i < 48; i++) {
    monyet[i] = loadImage("trek (" + (i + 1) + ").gif"); // Replace with actual filenames for the second gif
  }
}

void draw() {
  image(img, 0, 0, width, height);
  
  // Draw the first gif (orang) with Y offset
  pushMatrix();
  scale(babiScale1);
  image(babi1[(int)frameCounter1 % 20], babi1X / babiScale1, (200 + babi1YOffset) / babiScale1); // Use frameCounter1 for the first gif
  popMatrix();
  
  // Draw the second gif (mobil) with Y offset
  if (monyetX >= -1200) { // Only draw if monyetX is greater than or equal to -1200
    pushMatrix();
    scale(babiScale2);
    image(monyet[(int)frameCounter2 % 48], monyetX / babiScale2, (600 - monyetYOffset) / babiScale2); // Use frameCounter2 for the second gif
    popMatrix();
  }
  
  frameCounter1 += speed1; // Increment frameCounter1 by the speed1
  frameCounter2 += speed2; // Increment frameCounter2 by the speed2
  
  babi1X -= 10; // Move both gifs to the left
  monyetX -= 10;
  if (babi1X < -200) {
    babi1X = width;
    monyetX = width + 400; // Ensure a gap between the two gifs
  }
  if (monyetX < -1200) { // Restart from the right side of the screen
    monyetX = width + 400;
    babi1X = width; // Ensure a gap between the two gifs
  }
}
