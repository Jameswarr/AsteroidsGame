class Bullet extends Floater{
  public Bullet(SpaceShip james){
    myCenterX = james.getX();
    myCenterY = james.getY();
    myPointDirection = james.getPointDirection();
    myXspeed = james.getXSpeed();
    myYspeed = james.getYspeed();
    accelerate(8);
  }
  public void show(){
    rect((float)myCenterX,(float)myCenterY,2,2);
  }
public void move ()
  {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
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
