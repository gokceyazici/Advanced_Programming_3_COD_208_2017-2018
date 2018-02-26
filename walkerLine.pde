class WalkerLine {

  int x;
  int y;

  int r;
  int g;
  int b;

  WalkerLine() {


    r= int (random(100,255));
    g= int (random(100,255));
    b= int (random(100,255));
  }

  void display() {
    stroke (r,g,b);
    line (400,400,x,y);
  }

  void step() {
    int choice = int (random(4));

    if (choice == 1) {
      x++;
    } else if (choice == 2) {
      x--;
    } else if (choice == 3) {
      y++;
    } else {
      y--;
    }
  
}
}