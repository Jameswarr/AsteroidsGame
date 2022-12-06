SpaceShip [] james = new SpaceShip[1];
Star [] sue = new Star[100];
private boolean wPressed, aPressed, sPressed, dPressed, qPressed;
public void setup() 
{
  size(500,500);
  background(0);
   for (int i = 0; i < james.length; i ++) {
    james[i] = new SpaceShip();
   }
    for (int i = 0; i < sue.length; i++) {
      sue[i] = new Star();
  }
  james[0].setX(james[0].getX());
  wPressed = false;
  aPressed = false;
  sPressed = false;
  dPressed = false;
  qPressed = false;
}
public void draw() 
{
  background(0);
  for (int i = 0; i < sue.length; i ++) {
    sue[i].draw();
  }
 for (int i =0; i< james.length; i++) {
    james[i].move();
    james[i].show();
  }
  if (qPressed) {
    for (int i = 0; i < james.length; i ++) {
      james[i].setXspeed(0);
      james[i].setYspeed(0);
      james[i].setX((int)(Math.random()*500));
      james[i].setY((int)(Math.random()*500));
      james[i].setPointDirection((int) (Math.random()*360));
    }
  }
  if (aPressed)
    for (int i = 0; i < james.length; i ++) {
      james[i].turn(-10);
    }
     if (dPressed)
    for (int i = 0; i < james.length; i ++) {
      james[i].turn(10);
    }
    if (wPressed) {
    for (int i = 0; i < james.length; i ++) {
      james[i].accelerate(.1);
      james[i].show();
     }
    }
     if (sPressed)
    for (int i = 0; i < james.length; i ++) {
      james[i].accelerate(-.1);
    }
  }
  
  public void keyPressed() {
  if (key == 'w'||key=='W') {
    wPressed = true;
  }
  if (key == 'a'||key=='A') {
    aPressed = true;
  }
  if (key == 's'||key=='S') {
    sPressed = true;
  }
  if (key == 'd'||key=='D') {
    dPressed = true;
  }
  if (key == 'q'||key=='Q') {
    qPressed = true;
  }
 }
public void keyReleased() {
  if (key == 'w'||key=='W') {
    wPressed = false;
  }
  if (key == 'a'||key=='A') {
    aPressed = false;
  }
  if (key == 's'||key=='S') {
    sPressed = false;
  }
  if (key == 'd'||key=='D') {
    dPressed = false;
  }
  if (key == 'q'||key=='Q') {
    qPressed = false;
  }
}
