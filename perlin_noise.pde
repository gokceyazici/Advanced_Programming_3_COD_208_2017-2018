float t= 0;

void setup() {
  size(400,200);
  frameRate(60);
}

void draw() {
  background(200);
  fill(#E51010);
  noStroke();
  
  t = t+0.05;
  t = t+20;
  
  float x = noise(t);
  x = map(x,0,1,0,width);
  rect(x,height/2,40,40);
  rect(x,height/4,40,40);
}