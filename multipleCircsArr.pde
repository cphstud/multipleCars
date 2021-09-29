int[] xPosArr, yPosArr, diamArr, colArr, speedArr;
Drop[] drops;
Catcher catcher;
int numberOfCircles;
int endY;
int step;
Bil minBil,dinBil;
int carColor;
int regNr,regNr2;

void setup() {
  colorMode(HSB);
  size(400, 400);
  numberOfCircles=100;
  catcher = new Catcher(width/30);
  drops = new Drop[numberOfCircles];
  initArrays();
  endY=10;
  step=30;
  carColor=100;
  regNr=1234;
  regNr2=1235;
  minBil = new Bil(carColor, regNr);
  dinBil = new Bil(carColor+20, regNr2,67);
}

void draw() {
  background(255);
  catcher.setPosition(mouseX,mouseY);
  catcher.display();
  for (int i=0; i<endY-3; i++) {
    drops[i].move();
    drops[i].display();
    if (catcher.intersects(drops[i])) {
      drops[i].xPos=1230;
      println("Action needed");
      // action?
    }

  }
  if (endY < drops.length) { 
    if (frameCount%step==0) {
      endY=endY+3;
    }
  } else {
    endY=10;
    initArrays();
  }

}

void drawCircle(int x, int y, int diam, int col) {
  fill(col);
  circle(x, y, diam);
}

void moveCircle() {
}

void initArrays() {
  for (int i=0; i<drops.length; i++) {
    drops[i] = new Drop((int)random(20, width),30,(int)random(5, width/10),(int)random(255),(int)random(1, 3));
  }
}
