float r = 80;
float petalLen =  400;
int resolution = 200;
float theta;
float x;
float y;
float k;
float n = 9;
float d = 11;
float c = 3;

float cFac;
float circle = 0.01;
void setup() {
  size(600,600);
  k = n / d;
}


void draw() {
  background(0);
  pushMatrix();
  translate(width*0.5,height*0.5);
  fill(#FFC4EA);
  stroke(#390025);
  strokeWeight(4);
  
  cFac = cFac + circle;
  
  c = map(cFac,0,3,0,4);
  
  if(cFac > 2) {
    circle = -0.03;
  }
  
  if(cFac < 0) {
    circle = 0.02;
  }
  beginShape();
  clear();
  for(int i = 0; i < resolution*d; i++) {
    
    theta = map(i,0,resolution,0,TWO_PI);
    
    petalLen = cos(k*theta) + c;
    x = r * petalLen * cos(theta);
    y = r * petalLen * sin(theta);
    point(x,y);
    vertex(x,y);
  }
  
  
  endShape(CLOSE);
  popMatrix();
  
 
}