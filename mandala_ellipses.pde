void setup() {
size(600,600);
background(#89C3FF);
}

void draw() {
 if(mousePressed){
  PVector mouse = new PVector(mouseX-width/2, mouseY-height/2);
  translate(width/2, height/2);
  float diameter = random(15);
  stroke(255, 100);
  strokeWeight(diameter*0.2);
  fill(#003E7E);
  ellipse(mouse.x, mouse.y, diameter, diameter);
  ellipse(-mouse.x, mouse.y, diameter, diameter);
  ellipse(mouse.x, -mouse.y, diameter, diameter);
  ellipse(-mouse.x, -mouse.y, diameter, diameter);
  
 }
}
 