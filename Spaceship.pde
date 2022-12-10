class Spaceship extends Floater
{
  public Spaceship() {
    corners = 3;
    xCorners = new int[]{-8, 16, -8};
    yCorners = new int[]{-8, 0, 8};
    myCenterX = 300;
    myCenterY = 300;
    myColor = 255;
    if (myCenterX >width)
    {
      myCenterX = 0;
    } else if (myCenterX<0)
    {
      myCenterX = width;
    }
    if (myCenterY >height)
    {
      myCenterY = 0;
    } else if (myCenterY < 0)
    {
      myCenterY = height;
    }
  }

  public void hyperSpace() {
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = (Math.random()*360);
    myCenterX = (Math.random()*width);
    myCenterY = (Math.random()*height);
  }

  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
  public double getXspeed() {
    return myXspeed;
  }
  public double getYspeed() {
    return myYspeed;
  }
  public double getPD() {
    return myPointDirection;
  }
}
