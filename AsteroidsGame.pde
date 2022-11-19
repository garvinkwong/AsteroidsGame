Star[] shtar = new Star[200];
Spaceship garvin;
public void setup() 
{
  size(600, 600);
  for (int i = 0; i < shtar.length; i++) {
    shtar[i] = new Star();
  }
  garvin = new Spaceship();
}
public void draw() 
{
  background(0);
  for (int i = 0; i < shtar.length; i++) {
    shtar[i].show();
  }
  garvin.move();
  garvin.show();
}

public void keyPressed() {
  if (key=='a') {
   garvin.accelerate(1.5);
  }
  if (key=='w') {
   garvin.turn(7);
  }
  if (key=='s'){
    garvin.turn(-7);
  }
  if (key=='h'){
    garvin.hyperSpace();
    garvin.move();
    garvin.show();
  }
}
