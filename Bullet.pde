class Bullet extends Floater 
{
  public void setX(int x){
    myCenterX = x;
  }
  public int getX(){
    return (int)myCenterX;
  }
  public void setY(int y){
    myCenterY = y; 
  }
  public int getY(){
    return (int)myCenterY;
  }
  public void setDirectionX(double x){
    myDirectionX = 0;
  }
  public double getDirectionX(){
    return myDirectionX;
  }
  public void setDirectionY(double y){
    myDirectionY = 0;
  }
  public double getDirectionY(){
    return myDirectionY;
  }
  public void setPointDirection(int degrees){
    myPointDirection = 0;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
  Bullet(Spaceship theShip){
	corners = 4;
    int[] xS = {-8, 16, -8, -6};
    int[] yS = {-8, 0, 8, 0};
    xCorners = xS; 
    yCorners = yS;
    myCenterX = 300;
    myCenterY = 300;
    myDirectionX = 5 * Math.cos(dRadians) + trek.getDirectionX;
    myDirectionY = 5 * Math.sin(dRadians) + trek.getDirectionY; 
    myPointDirection = double dRadians =myPointDirection*(Math.PI/180);
    myColor = 255;
  }
  public void show(){
  	ellipse(getDirectionX(), getDirectionY(), 10, 10);
  }
  
	
}