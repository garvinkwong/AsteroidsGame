class Bullet extends Floater
{
  public Bullet(Spaceship bull) {
    myCenterX = bull.getCenterX();
    myCenterY = bull.getCenterY();
    myXspeed = bull.getXspeed();
    myYspeed = bull .getYspeed();
    myPointDirection = bull.getPD();
  }
  public void show() {
    fill(0, 255, 0);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}
