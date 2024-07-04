float angle = 0;
float armAngle = 0;
float legAngle = 0;
boolean armDirection = true;
boolean legDirection = true;

void setup() {
  size(600, 600);
  background(255);
  smooth();
}

void draw() {
  background(255);
  translate(width/2, height/2);
  rotate(angle);
  drawRobot();
  
  angle += 0.02; // Ubah sudut rotasi

  // Animasi gerakan tangan
  if (armDirection) {
    armAngle += 0.02;
    if (armAngle > 0.5) {
      armDirection = false;
    }
  } else {
    armAngle -= 0.02;
    if (armAngle < -0.5) {
      armDirection = true;
    }
  }

  // Animasi gerakan kaki
  if (legDirection) {
    legAngle += 0.02;
    if (legAngle > 0.5) {
      legDirection = false;
    }
  } else {
    legAngle -= 0.02;
    if (legAngle < -0.5) {
      legDirection = true;
    }
  }
}

void drawRobot() {
  pushMatrix();
  translate(-70, -120);
  noStroke();
  fill(191, 0, 255);
  rect(40, 0, 76, 60); // head
  rect(28, 64, 100, 100); // body

  // Kiri tangan
  pushMatrix();
  translate(12, 64);
  rotate(armAngle);
  rect(-12, 0, 24, 74);
  popMatrix();

  // Kanan tangan
  pushMatrix();
  translate(148, 64);
  rotate(-armAngle);
  rect(-12, 0, 24, 74);
  popMatrix();

  // Kiri kaki
  pushMatrix();
  translate(60, 168);
  rotate(legAngle);
  rect(-16, 0, 32, 100);
  popMatrix();

  // Kanan kaki
  pushMatrix();
  translate(96, 168);
  rotate(-legAngle);
  rect(-16, 0, 32, 100);
  popMatrix();

  fill(222, 222, 249);
  ellipse(60, 24, 24, 24); // left eye
  ellipse(94, 24, 24, 24); // right eye
  popMatrix();
}
