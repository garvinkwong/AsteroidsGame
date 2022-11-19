class Spaceship extends Floater
{
  public Spaceship() {
    corners = 4;
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
  public void show() {
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()
    float dRadians = (float)(myPointDirection*(Math.PI/180));

    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);

    for (int i = 0; i<xCorners.length-2; i++) {
      fill(myColor);
      triangle(xCorners[i] + (float)myXspeed, yCorners[i]+ (float)myYspeed,
        xCorners[i+1]+ (float)myXspeed, yCorners[i+1]+ (float)myYspeed,
        xCorners[i+2]+ (float)myXspeed, yCorners[i+2]+ (float)myYspeed);
    }
    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  public void hyperSpace() {
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = (Math.random()*360);
    myCenterX = (Math.random()*width);
    myCenterY = (Math.random()*height);
  }
}
