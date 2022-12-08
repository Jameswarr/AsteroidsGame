class Asteroid extends Floater
{
  private int rotSpeed, mySize;
  public Asteroid()
  {
    rotSpeed = (int)(Math.random()*4)-2;
    mySize = (int)(Math.random()*2)+4;
    corners = 5;
    int[] xS = {4*mySize, 1*mySize, 6*mySize, 3*mySize, 5*mySize};
    int[] yS = {-2*mySize, 0*mySize, 4*mySize, -3*mySize, 2*mySize};
    xCorners = xS;
    yCorners = yS;
      myColor = color(0, 255, 0);
      stroke(50);
    myCenterX = (float) (Math.random()*500);
    myCenterY = (float) (Math.random()*500);
    myXspeed = (float) (Math.random()*2)-2;
    myYspeed = (float) (Math.random()*2)-2;
    myPointDirection = (int) (Math.random()*360);
  }

  public int getX() {
    return (int) myCenterX;
  }
  public int getY() {
    return (int) myCenterY;
  }
  public int getMySize() {
    return mySize;
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
}
    
