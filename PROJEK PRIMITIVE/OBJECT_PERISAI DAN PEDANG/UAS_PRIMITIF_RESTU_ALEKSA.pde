void setup() {
  size(600, 700);
  background(255);
  
  // Define colors
  color shieldFill = color(50, 50, 50);
  color shieldStroke = color(139, 69, 19);
  color swordFill = color(192, 192, 192);
  color swordStroke = color(0);
  color handleFill = color(255, 215, 0);

  // Draw shield
  drawShield(300, 350, 200, 250, shieldFill, shieldStroke);
  
  // Draw sword (increase size by changing w and h, and adjust y position)
  drawSword(300, 350, 100, 350, swordFill, swordStroke, handleFill); // Adjusted y to move sword up
}

void drawShield(float x, float y, float w, float h, color fillColor, color strokeColor) {
  noStroke();
  fill(fillColor);
  
  // Draw the main shield shape
  beginShape();
  vertex(x - w * 0.5, y - h * 0.5);
  vertex(x + w * 0.5, y - h * 0.5);
  vertex(x + w * 0.5, y + h * 0.2);
  vertex(x, y + h * 0.5);
  vertex(x - w * 0.5, y + h * 0.2);
  endShape(CLOSE);
  
  // Draw the border of the shield
  stroke(strokeColor);
  strokeWeight(10);
  noFill();
  beginShape();
  vertex(x - w * 0.5, y - h * 0.5);
  vertex(x + w * 0.5, y - h * 0.5);
  vertex(x + w * 0.5, y + h * 0.2);
  vertex(x, y + h * 0.5);
  vertex(x - w * 0.5, y + h * 0.2);
  endShape(CLOSE);
}

void drawSword(float x, float y, float w, float h, color fillColor, color strokeColor, color handleColor) {
  noStroke();
  fill(handleColor);
  
  // Draw the handle
  beginShape();
  vertex(x - w * 0.1, y - h * 0.5);
  vertex(x + w * 0.1, y - h * 0.5);
  vertex(x + w * 0.1, y - h * 0.4);
  vertex(x - w * 0.1, y - h * 0.4);
  endShape(CLOSE);
  
  fill(fillColor);
  stroke(strokeColor);
  strokeWeight(2);
  
  // Draw the blade
  beginShape();
  vertex(x - w * 0.1, y - h * 0.4);
  vertex(x + w * 0.1, y - h * 0.4);
  vertex(x, y + h * 0.5); // Make the blade point sharper
  endShape(CLOSE);
  
  // Draw the crossguard
  fill(handleColor);
  beginShape();
  vertex(x - w * 0.3, y - h * 0.4);
  vertex(x + w * 0.3, y - h * 0.4);
  vertex(x + w * 0.3, y - h * 0.35);
  vertex(x - w * 0.3, y - h * 0.35);
  endShape(CLOSE);
}
