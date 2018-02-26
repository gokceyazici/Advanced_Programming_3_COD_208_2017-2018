class WalkerEllipse {

  int x;
  int y;

  int r;
  int g;
  int b;

  WalkerEllipse() {
    x = width/2;
    y = height/2;

    r= int (random(255));
    g= int (random(255));
    b= int (random(255));
  }

  void display() {
    
    stroke(r,g,b);
    fill (r,g,b);
    ellipse (x,y,100,100);
  }

  void step() {
    int choice = int (random(5));

    if (choice == 0) {
      x++;
    } else if (choice == 1) {
      x--;
    } else if (choice == 2) {
      y++;
    } else {
      y--;
    }
  
}
}