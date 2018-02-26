class walker {
  int x;
  int y;

  int r;
  int g;
  int b;

  walker() {
    x = width/2;
    y = height/2;

    r= int (random(150));
    g= int (random(150));
    b= int (random(150));
  }

  void display() {
    stroke(r,g,b);
    point (x, y);
  }

  void step() {
    int choice = int (random(5));

    if (choice == 0) {
      x++;
    } else if (choice == 3) {
      x--;
    } else if (choice == 4) {
      y++;
    } else {
      y--;
    }
  }
}