class Drop {
  //xPosArr, yPosArr, diamArr, colArr, speedArr;
  int xPos,yPos,diam,col,speed;
  
  Drop(int xPos,int yPos,int diam,int col, int speed) {
    this.xPos=xPos;
    this.yPos=yPos;
    this.diam=diam;
    this.col=col;
    this.speed=speed;
  }
  
  void display() {
    fill(col);
    circle(xPos,yPos,diam);
    noFill();
  }
  void move() {
    yPos=yPos+speed;
  }
  
}
