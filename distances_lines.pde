Paltar p1;
ArrayList<Paltar> minnoss;
int numMinnoss = 100;

void setup() {
  size(800, 500);
  background(255);

  minnoss = new ArrayList<Paltar>();

  for (int i= 0; i < numMinnoss; i++) {

    Paltar p = new Paltar();
    minnoss.add(p);
  }




}
void draw() {

  background(30, 60, 90); // set bg color
  //remove stroke from shape
  noStroke();

  for (int i= 0; i < numMinnoss; i++) {
    for ( int j = 0; j< numMinnoss; j++) {
      float distance = dist(minnoss.get(i).posx, minnoss.get(i).posy, 
        minnoss.get(j).posx, minnoss.get(j).posy);

      if (distance < 100) {
        stroke(150, 250, 300);
        line(minnoss.get(i).posx, minnoss.get(i).posy, 
          minnoss.get(j).posx, minnoss.get(j).posy);
      }
    }

    minnoss.get(i).display();

  }
}