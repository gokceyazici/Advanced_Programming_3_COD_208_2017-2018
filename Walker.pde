class Walker {
  float x;
  float y;
  float tx;
  float ty;
  
  int r;
  int g;
  int b;
  float a;
  
  Walker() {
    //println("I am in the game");
   x = width/2;
   y = height/2;
   
   tx = 200;
   ty = 200;
   
   r = int(random(25));
   g = int(random(25));
   b = int(random(25));
  }
  
  void display() {
   point(x,y);
   
   float r  = map(noise(tx),0,10,0,200);
   a = map(noise(ty),0,1,10,200);
   ellipse(x,y,r,r);
  }
  
  void step() {
    x = map(noise(tx),0,1,0,width);
    y = map(noise(ty),0,1,0,height);
    
    tx += 5;
    ty += 55;
  }

}