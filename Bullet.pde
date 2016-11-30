int bu1, bu2;
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
    myDirectionX = x;
  }
  public double getDirectionX(){
    return myDirectionX;
  }
  public void setDirectionY(double y){
    myDirectionY = y;
  }
  public double getDirectionY(){
    return myDirectionY;
  }
  public void setPointDirection(int degrees){
    myPointDirection = degrees;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
  public Bullet(){
  	myPointDirection = trek.getPointDirection();
  	double dRadians =myPointDirection*(Math.PI/180);
    myCenterX = trek.getX();
    myCenterY = trek.getY();
    myDirectionX = 5 * Math.cos(dRadians) + trek.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + trek.getDirectionY(); 
    myColor = 255;
  }
  public void show(){
  	ellipse(getX(), getY(), 10, 10);
  }
  public void move(){
  	myCenterX += myDirectionX;    
    myCenterY += myDirectionY;
  }
  
	
}