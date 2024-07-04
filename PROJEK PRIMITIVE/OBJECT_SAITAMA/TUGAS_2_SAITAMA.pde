void setup() {
  size(250, 300); 
  background(0);
  noStroke();
  smooth();
}

void draw() {
  // Kepala
  fill(240, 208, 176);
  ellipse(125, 150, 180, 220); 

  // Mata
  fill(255);
  ellipse(90, 125, 30, 50);
  ellipse(160, 125, 30, 50);

  // Pupil
  fill(0);
  ellipse(90, 125, 15, 25);
  ellipse(160, 125, 15, 25);

  // Alis
  stroke(0);
  strokeWeight(4);
  line(70, 100, 100, 90);
  line(145, 90, 180, 100);
  noStroke();

  // Mulut
  noFill();
  stroke(0);
  strokeWeight(3);
  arc(125, 190, 80, 60, 0, PI);
}
