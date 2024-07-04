void setup() {
  size(800, 1000);
  background(255);

  // Body of the violin
  fill(210, 105, 30);
  beginShape();
  vertex(400, 300);
  bezierVertex(350, 250, 300, 350, 350, 400);
  bezierVertex(300, 450, 300, 550, 350, 600);
  bezierVertex(300, 650, 350, 750, 400, 700);
  bezierVertex(450, 750, 500, 650, 450, 600);
  bezierVertex(500, 550, 500, 450, 450, 400);
  bezierVertex(500, 350, 450, 250, 400, 300);
  endShape(CLOSE);

  // Neck of the violin
  fill(100, 50, 0);
  rect(375, 150, 50, 200);
  
  // Pegs of the violin
  ellipse(375, 150, 20, 20);
  ellipse(425, 150, 20, 20);
  ellipse(375, 120, 20, 20);
  ellipse(425, 120, 20, 20);
  
  // Strings of the violin
  stroke(0);
  for (int i = 0; i < 4; i++) {
    line(390 + i*10, 150, 390 + i*10, 700);
  }
  
  // f-holes of the violin
  noFill();
  stroke(0);
  beginShape();
  vertex(340, 450);
  bezierVertex(330, 440, 330, 460, 340, 470);
  bezierVertex(350, 480, 350, 420, 340, 430);
  endShape();
  
  beginShape();
  vertex(460, 450);
  bezierVertex(470, 440, 470, 460, 460, 470);
  bezierVertex(450, 480, 450, 420, 460, 430);
  endShape();
  
  // Tailpiece of the violin
  fill(0);
  rect(375, 680, 50, 20);
  
  // Bow of the violin
  fill(150, 75, 0);
  stroke(150, 75, 0);
  rect(550, 100, 10, 700);
  fill(255, 0, 0);
  rect(540, 150, 30, 10);
  // Bow hair
  stroke(255, 255, 255);
  line(555, 160, 555, 800);
}

void draw() {
  // No continuous drawing needed
}
