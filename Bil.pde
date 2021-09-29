class Bil {
  // egenskaber
  int cyl;
  int hk;
  int regnr;
  int xPos;
  int yPos;
  int speed;
  int carColor;
  // konstruktør
  
  Bil() {
  }

  Bil(int carColor, int regnr) {
    this.carColor=carColor;
    this.regnr=regnr;
    this.xPos=52;
    this.yPos=75;
  }
  
  Bil(int carColor, int regnr, int xPos) {
    this.carColor=carColor;
    this.regnr=regnr;
    this.xPos=xPos;
    this.yPos=145;
  }

  // metoder/funktioner 

  void display() {
    fill(carColor,200,200);
    rect(xPos,yPos,width/10,height/10);
    noFill();
  }
}
