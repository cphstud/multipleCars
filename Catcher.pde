class Catcher {
  int xPos,yPos;
  int diameter;
  int colorCatcher;
  
  Catcher(int diameter) {
    this.diameter=diameter;
    this.colorCatcher=120;
  }
  
  void display() {
    fill(colorCatcher);
    circle(xPos,yPos,diameter);
    noFill();
  }
  
  void setPosition(int xPosT, int yPosT) {
    xPos=xPosT;
    yPos=yPosT;
  }
  
  boolean intersects(Drop drop) {
    boolean hit = false;
    float cDist=dist(xPos,yPos,drop.xPos,drop.yPos);
    float randDist=drop.diam+diameter;
    if (cDist < randDist) {
      hit=true;
    }
    return hit;
  }
}
