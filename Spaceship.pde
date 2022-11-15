class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4
      xCorners = new int[]{-8, 16, -8, -2};
      yCorners = new int[]{-8, 0, 8, 0};
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
