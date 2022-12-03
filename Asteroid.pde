class Asteroid extends Floater
{
  PShape ast;
  private double rotateSpeed;
  public Asteroid() {
    corners = 6;
    xCorners = new int[]{-5, -4, 3, 8, 12, 7};
    yCorners = new int[]{-6, 5, 10, 9, 0, -9};
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600); 
    myColor = 180;
    myXspeed = (int)(Math.random()*8);
    myYspeed = (int)(Math.random()*8);
    myPointDirection = (Math.random()*360);
    rotateSpeed = (int)(Math.random()*15);
  }
  public void move() {
    turn(rotateSpeed);
    super.move();
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}
