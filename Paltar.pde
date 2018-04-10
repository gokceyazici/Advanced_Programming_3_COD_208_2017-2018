// Name of the class
class Paltar {
  
float posx;
float posy;


//describe move
float vx;
float vy;


float radius;

  
 // Constructer function
 Paltar() {
  radius = random(4,30);
  
  posx = random(width);
  posy = random(height);
  
 // about move
  vx = random(-2,2);
  vy = random(-2,2);
  
   
 }

void display() {
  
  // move the ellipse with vx and vy
  posx = posx + vx;
  posy = posy + vy;
  
  // çıkıp geri gelmesi için ve smooth gözükmesi
  if(posx > width+ radius/2) {
    posx = width + radius/2;
  }
  
  if(posy> height + radius/2) {
    posy = -radius/2;
  }
 // her koordinattan geri dönebilmesi için
   if(posx < -radius/2) {
    posx = width+radius / 2;
  }
  
  if(posy < -radius/2) {
    posy = height+ radius /2;
  }
  
    //set fill color
  fill(150, 250, 300);
  ellipse(posx, posy, radius, radius); // draw ellipse
  
  
}
}