ArrayList<Asteroids> rocks = new ArrayList<Asteroids>();
SpaceShip trek = new SpaceShip();
Star[] rats;

public void setup() 
{
  size(600, 600);
  background(80, 60, 100);
  // rocks = new Asteroids[15];
  rats = new Star[(int)(Math.random()*200+100)];
  for(int i = 0; i<rats.length; i ++){
    rats[i] = new Star();
  }
  for(int i = 0; i < rocks.size(); i ++){
    rocks.add(new Asteroids());
  }
  // for(int i = 0; i<rocks.length; i ++){
  //   rocks[i] = new Asteroids();
  // }
}

public void keyTyped(){
  if (key == 'h') {
    trek.setX((int)(Math.random()*600+1));
    trek.setY((int)(Math.random()*600+1));
    trek.setDirectionX(Math.random()*100);
  }
  if(key == 'a'){
    trek.rotate(15);
  }
  if(key == 'd'){
    trek.rotate(-15);
  }
  if(key == 'w'){
    trek.accelerate(0.1);
  }
  if(key == 's'){
    trek.accelerate(-0.1);
  }
}

public void draw() {  
  background(80, 60, 100);
  trek.show();
  trek.move();
  for (Star stars : rats)
    {
      stars.show();
  }
  for(int i = 0; i<rocks.size(); i ++){
    Asteroids first = (Asteroids)rocks.get(i);
    System.out.println("Im shook");
    first.show();
    System.out.println("Im shown");
  }
}


class SpaceShip extends Floater  
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

  public SpaceShip(){
    corners = 4;
    int[] xS = {-8, 16, -8, -6};
    int[] yS = {-8, 0, 8, 0};
    xCorners = xS; 
    yCorners = yS;
    myCenterX = 300;
    myCenterY = 300;
    myDirectionX = 0;
    myDirectionY = 0; 
    myPointDirection = 0;
    myColor = 255;
  }
}

class Asteroids extends Floater
{
  private int rotSpeed;
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

  public Asteroids(){
    rotSpeed = (int)(Math.random()*11-5);
    corners = 6;
    int[] xS = {-11, 7, 10, 6, -10, -10};
    int[] yS = {-8, -8, 0, 10, 8, 0};
    xCorners = xS;
    yCorners = yS;
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myColor = color(210, 167, 210);
    myDirectionX = (int)(Math.random()*11 - 3);
    myDirectionY = (int)(Math.random()*11 - 3);
  }

  public void move(){
    rotate(rotSpeed);
    super.move();
  }
}

//background stars
class Star {
  int starX, starY;
  float starSize;
  public Star(){
    starX = (int)(Math.random()*600);
    starY = (int)(Math.random()*600);
    starSize = 1.5;
  }
  public void show(){
     noStroke();
     fill(255);
     ellipse(starX, starY, starSize, starSize);
  }
}


abstract class Floater //Do NOT modify the Floater class! Make changes in the SpaceShip class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    
  abstract public void setX(int x);  
  abstract public int getX();   
  abstract public void setY(int y);   
  abstract public int getY();   
  abstract public void setDirectionX(double x);   
  abstract public double getDirectionX();   
  abstract public void setDirectionY(double y);   
  abstract public double getDirectionY();   
  abstract public void setPointDirection(int degrees);   
  abstract public double getPointDirection(); 

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myDirectionX += ((dAmount) * Math.cos(dRadians));    
    myDirectionY += ((dAmount) * Math.sin(dRadians));       
  }   
  public void rotate (int nDegreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;   
    }   
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    //convert degrees to radians for sin and cos         
    double dRadians = myPointDirection*(Math.PI/180);                 
    int xRotatedTranslated, yRotatedTranslated;    
    beginShape();         
    for(int nI = 0; nI < corners; nI++)    
    {     
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
    }   
    endShape(CLOSE);  
  }   
} 

