PImage img;
PImage[] babi1 = new PImage[48];
PImage[] monyet = new PImage[24];
int babi1X = 100;
int monyetX = 400;
float babiScale1 = 0.5; // Scale variable for the first gif
float babiScale2 = 0.4; // Scale variable for the second gif
float speed1 = 5; // Speed variable for the first gif
float speed2 = 3; // Speed variable for the second gif
float frameCounter1 = 0; // Frame counter for the first gif
float frameCounter2 = 0; // Frame counter for the second gif

void setup() {
  size(1300, 800);
  smooth();
  img = loadImage("hutan.png");
  for (int i = 0; i < 48; i++) {
    babi1[i] = loadImage("babi (" + (i + 1) + ").gif");
  }
  for (int i = 0; i < 24; i++) {
    monyet[i] = loadImage("monyet (" + (i + 1) + ").gif"); // Replace with actual filenames for the second gif
  }
}

void draw() {
  image(img, 0, 0, width, height);
  
  // Draw the first gif
  pushMatrix();
  scale(babiScale1);
  image(babi1[(int)frameCounter1 % 48], babi1X / babiScale1, 600 / babiScale1); // Use frameCounter1 for the first gif
  popMatrix();
  
  // Draw the second gif
  pushMatrix();
  scale(babiScale2);
  image(monyet[(int)frameCounter2 % 24], monyetX / babiScale2, 600 / babiScale2); // Use frameCounter2 for the second gif
  popMatrix();
  
  frameCounter1 += speed1; // Increment frameCounter1 by the speed1
  frameCounter2 += speed2; // Increment frameCounter2 by the speed2
  
  babi1X += 20;
  if (babi1X > width) {
    babi1X = -200;
  }
  
  monyetX += 20; // Different speed for the second gif
  if (monyetX > width) {
    monyetX = -200;
  }
}
