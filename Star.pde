class Star //note that this class does NOT extend Floater
{
  private int starX, starY, starC;
  public Star() {
    starX = (int)(Math.random()*600);
    starY = (int)(Math.random()*600);
    starC = color((int)(Math.random()*600),(int)(Math.random()*600),(int)(Math.random()*600));
  }
  public void show() {
    fill(starC);
    ellipse(starX, starY, 4, 4);
  }
}
