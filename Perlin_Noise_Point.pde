ArrayList<Walker> clones = new ArrayList<Walker>();
int numWalkers = 600;

void setup() {
  size(600, 600);
  background(0);
  
  for (int i = 0; i < numWalkers; i++) {
    Walker c = new Walker();
    c.r = 100;
    c.g = 100;
    c.b = 100;
    
    c.x = int(random(width));
    c.y = int(random(height));
    clones.add(c);
  }
}

void draw() {

  for (int i = 90; i < numWalkers; i++) {
    clones.get(i).step();
    clones.get(i).display();
  }
}