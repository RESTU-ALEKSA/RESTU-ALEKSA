PImage bgImg, logo, img, img_1, img_2, img_3, img_4, img_5, img_6, img_7, img_8;
PFont myFont;
float slidingTextX;
float theta = 0;

void setup() {
  size(1350, 550, P3D);
  noStroke();
  slidingTextX = width;  // Initialize text position off-screen
  bgImg = loadImage("planet.jpg");
  logo = loadImage("pct.jpg");

  img = loadImage("sun.jpg");
  img_1 = loadImage("mercury.jpg");
  img_2 = loadImage("venus.png");
  img_3 = loadImage("earth.jpg");
  img_4 = loadImage("mars.jpg");
  img_5 = loadImage("jupiter.jpg");
  img_6 = loadImage("saturn.jpg");
  img_7 = loadImage("uranus.jpg");
  img_8 = loadImage("neptune.jpg");

  // Preload font
  myFont = loadFont("tnr.ttf");
}

void draw() {
  background(255);

  pushMatrix();
  translate(-width / 2, -height / 2);
  image(bgImg, 0, 0, width, height);

  fill(255);
  textFont(myFont);  // Use the loaded font
  textSize(70);
  textAlign(CENTER);
  text("Animasi Tata Surya", width / 2, 100);

  textSize(20);
  text("Gustiar Dwi Saputra S | Restu Aleksa | Alfiqry", width / 2, 130);

  float logoX = width / 2 - logo.width / 2;
  float logoY = height / 2 - 210;
  image(logo, logoX, logoY);
  popMatrix();

  // Sun
  pushMatrix();
  rotateY(radians(theta));
  texture(img);
  sphere(100);
  popMatrix();

  // Mercury
  drawPlanet(img_1, 3.15, 150, 10);
  // Venus
  drawPlanet(img_2, 2.62, 200, 20);
  // Earth
  drawPlanet(img_3, 2.18, 250, 30);
  // Mars
  drawPlanet(img_4, 0.53, 300, 20);
  // Jupiter
  drawPlanet(img_5, 1.20, 350, 50);
  // Saturn
  drawPlanet(img_6, 1.40, 400, 40);
  // Uranus
  drawPlanet(img_7, 1.22, 450, 50);
  // Neptune
  drawPlanet(img_8, 1.00, 500, 40);

  // Scrolling Text
  textSize(20);
  fill(255);
  textAlign(CENTER, BOTTOM);
  text("Selamat datang di Animasi Tata Surya kami! Nikmati eksplorasi planet-planet.", slidingTextX - width / 2, height / 2 + 300);

  // Update text position
  slidingTextX -= 1;

  // Reset text position
  if (slidingTextX < -textWidth("Selamat datang di Animasi Tata Surya kami! Nikmati eksplorasi planet-planet.")) {
    slidingTextX = width;
  }

  theta += 0.5;
}

void drawPlanet(PImage textureImg, float speed, float distance, float size) {
  pushMatrix();
  rotateY(radians(theta * speed));
  translate(distance, 0, 0);
  rotateY(radians(theta));
  texture(textureImg);
  sphere(size);
  popMatrix();
}
