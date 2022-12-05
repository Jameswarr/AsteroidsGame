class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4
      int[] xS = {-8,16,-8,-2};
     int[] yS = {-8,0,8,0};
     xCorners = xS;
     yCorners = yS;
     myCenterX = 250;
      myCenterY = 250;
      myDirectionX = 0;
      myDirectionY = 0;
      myPointDirection = 0;
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
 public void setDirectionX(double x) {
    myDirectionX = x;
  }
  public double getDirectionX() {
    return myDirectionX;
  }
  public void setDirectionY(double y) {
    myDirectionY = y;
  }
  public double getDirectionY() {
    return myDirectionY;
  }
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
  public double getPointDirection() {
    return (int)myPointDirection;
  }
  public void show (boolean jets) {
    fill(myColor);
    stroke(myColor);
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    translate((float)myCenterX, (float)myCenterY);
    rotate((float)dRadians);
    beginShape();
    for (int nI = 0; nI < corners; nI++) {
      vertex(xCorners[nI], yCorners[nI]);
    }
    if (jets)
    {
      line(-30, -4, -20, -6);
      line(-30, 0, -20, 0);
      line(-30, 4, -20, 6);
    }

    endShape(CLOSE);
    rotate(-1*(float)dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
}
