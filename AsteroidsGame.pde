private boolean wPressed, aPressed, sPressed, dPressed, qPressed, ePressed;
ArrayList <Asteroid> chan = new ArrayList <Asteroid>();
ArrayList <Bullet> raymond = new ArrayList <Bullet>();
SpaceShip [] james = new SpaceShip[1];
Star [] pham = new Star[120];
public void setup() 
{
  size(500,500);
  background(0);
   for (int i = 0; i < james.length; i ++) {
    james[i] = new SpaceShip();
   }
    for (int i = 0; i < pham.length; i++) {
      pham[i] = new Star();
  }
  for(int j = 0; j < 10; j++){
    chan.add(new Asteroid());
  }
  wPressed = false;
  aPressed = false;
  ePressed = false;
  sPressed = false;
  dPressed = false;
  qPressed = false;
}
public void draw() 
{
  background(0);
  for (int i = 0; i < pham.length; i ++) {
    pham[i].draw();
  }
 for (int i = 0; i < james.length; i++) {
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
    }{
    fill(200);
    textSize(25);
    text("Pew", 50, 35);
  }
    if (wPressed) {
    for (int i = 0; i < james.length; i ++) {
      james[i].accelerate(.1);
      james[i].show();
     }
    }
    if (ePressed)
    for (int i = 0; i < james.length; i ++) {
      raymond.add(new Bullet(james[i]));
    }
      if (sPressed)
    for (int i = 0; i < james.length; i ++) {
      james[i].accelerate(-.1);
    }
    for (int i = 0; i < raymond.size(); i ++)
  {
    raymond.get(i).show();
    raymond.get(i).move();
  }
  for (int k = 0; k < raymond.size(); k++)
  {
    for (int i = 0; i< chan.size(); i ++)
   
      if (dist(raymond.get(k).getX(), raymond.get(k).getY(), chan.get(i).getX(), chan.get(i).getY()) < 10)
      {
        chan.remove(i);
        chan.add(new Asteroid());
      }
  }
    for(int c = 0; c < chan. size(); c++){
      chan.get(c).show();
      chan.get(c).move();
      for(int i = 0; i < james.length; i++){
          if (dist(chan.get(c).getX(), chan.get(c).getY(), james[i].getX(), james[i].getY()) < 30 + 2 * chan.get(c).getMySize()) {
      chan.remove(c);
      chan.add(new Asteroid());
  }
      }
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
     if (key == 'e'||key=='E') {
    ePressed = true;
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
    if (key == 'e'||key=='E') {
    ePressed = false;
  }
}
