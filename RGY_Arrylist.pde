ArrayList<walker> clones = new ArrayList<walker>();
int numwalkers = 250;

ArrayList<WalkerEllipse> clones2 = new ArrayList<WalkerEllipse>();
int numWalkerEllipse = 250;

ArrayList<WalkerLine> clones3 = new ArrayList<WalkerLine>();
int numWalkerLine = 250;

ArrayList<WalkerRect> clones4 = new ArrayList<WalkerRect>();
int numWalkerRect = 250;





void setup() {
  size (800,800);
  background (200);
  
  for (int i = 0; i < numwalkers; i++) {
    walker c = new walker();
    c.x = int(150);
    c.y = int(400);
    clones.add(c);
  }
  
    for (int i = 0; i < numWalkerEllipse; i++) {
    WalkerEllipse c2 = new WalkerEllipse();
    c2.x = int(400);
    c2.y = int(350);
    clones2.add(c2);
  }
  
      for (int i = 0; i < numWalkerLine; i++) {
    WalkerLine c3 = new WalkerLine();
    c3.x = int(400);
    c3.y = int(550);
    clones3.add(c3);
  }
  
      for (int i = 0; i < numWalkerRect; i++) {
    WalkerRect c4 = new WalkerRect();
    c4.x = int(650);
    c4.y = int(350);
    clones4.add(c4);
  }
  
  
  
  
  
  


  //instantiate walker class

}

void draw (){
    for (int i = 0; i < numwalkers; i++) {
    clones.get(i).step();
    clones.get(i).display();
  }
     for (int i = 0; i < numWalkerEllipse; i++) {
    clones2.get(i).step();
    clones2.get(i).display();
  }
  
     for (int i = 0; i < numWalkerLine; i++) {
    clones3.get(i).step();
    clones3.get(i).display();
  }
     for (int i = 0; i < numWalkerRect; i++) {
    clones4.get(i).step();
    clones4.get(i).display();
  }
  
  
  
  

}