class Asteroid extends Floater
{
  private int rotSpeed, mySize;
  public Asteroid()
  {
    rotSpeed = (int)(Math.random()*4)-2;
    mySize = (int)(Math.random()*4)+1;
    corners = 4;
     int[] xS = {-1*mySize,8*mySize,-1*mySize,-5*mySize};
     int[] yS = {-8*mySize,0*mySize,8*mySize,0*mySize};
    xCorners = xS;
    yCorners = yS;
      myColor = color(50, 55, 50);
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
    
