Star[] shtar = new Star[200];
Spaceship garvin;
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();

public void setup()
{
  size(600, 600);
  for (int i = 0; i < shtar.length; i++) {
    shtar[i] = new Star();
  }
  for (int q = 0; q<17; q++) {
    rocks.add(new Asteroid());
  }
  garvin = new Spaceship();
}
public void draw()
{
  background(0);
  for (int i = 0; i < shtar.length; i++) {
    shtar[i].show();
  }
  for (int q = 0; q<rocks.size(); q++) {
    rocks.get(q).show();
    rocks.get(q).move();
    double distance = dist((float)garvin.getCenterX(), (float)garvin.getCenterY(), (float)rocks.get(q).getCenterX(), (float)rocks.get(q).getCenterY());
    if (distance <= 20) {
      rocks.remove(q);
    }
  }
  garvin.show();
  garvin.move();
}

public void keyPressed() {
  if (key=='w') {
    garvin.accelerate(1);
  }
  if (key=='d') {
    garvin.turn(5);
  }
  if (key=='a') {
    garvin.turn(-5);
  }
  if (key == 'h') {
    garvin.hyperSpace();
  }
}
