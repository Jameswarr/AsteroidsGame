class SpaceShip extends Floater  
{   
    public SpaceShip(){
      corners = 8;
     int[] xS = {-8,0,12,20,12,0,-8,-2};
     int[] yS = {-8,-12,-4,0,4,12,8,0};
     xCorners = xS;
     yCorners = yS;
      myCenterX = 250;
      myCenterY = 250;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 200;
      myColor = color(255,255,255);
    }
    public void setX(int x){
      myCenterX = x;
    }
    public int getX(){
      return (int) myCenterX;
    }
        public void setY(int y){
      myCenterY = y;
    }
    public int getY(){
      return (int) myCenterY;
    }
 public void setXspeed(double x) {
    myXspeed = x;
  }
  public double getXSpeed() {
    return (double) myXspeed;
  }
  public void setYspeed(double y) {
    myYspeed = y;
  }
  public double getYspeed() {
    return (double) myYspeed;
  }
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
  public double getPointDirection() {
    return (double)myPointDirection;
    
 }
}
