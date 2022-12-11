class Star
{
  private int myX, myY;
  private int myColor;
  public Star()
{
  myX = (int)(Math.random()*500);
  myY = (int)(Math.random()*500);
  myColor = color(0, 255, 0, (int)(Math.random()*100));
}
public void draw()
{
  noStroke();
  fill(myColor);
  ellipse(myX, myY, 3, 3);
 }
}
