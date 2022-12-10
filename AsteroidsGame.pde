Star[] shtar = new Star[200];
Spaceship garvin;
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> bulls = new ArrayList <Bullet>();

boolean aPressed = false;
boolean wPressed = false;
boolean dPressed = false;
boolean spacePressed = false;
boolean hPressed = false;

public void setup()
{
  size(600, 600);
  for (int i = 0; i < shtar.length; i++) {
    shtar[i] = new Star();
  }
  for (int q = 0; q<20; q++) {
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
  for (int v = 0; v<bulls.size(); v++) {
    bulls.get(v).show();
    bulls.get(v).move();
    bulls.get(v).accelerate(6.0);
  }
  for (int s = 0; s<rocks.size(); s++) {
    for (int f = 0; f<bulls.size(); f++) {
      double dis = dist((float)bulls.get(f).getCenterX(), (float)bulls.get(f).getCenterY(), (float)rocks.get(s).getCenterX(), (float)rocks.get(s).getCenterY());
      if (dis <=30) {
        bulls.remove(f);
        rocks.remove(s);
        break;
      }
    }
  }
  garvin.show();
  garvin.move();

  if (aPressed == true) {
    garvin.turn(-5);
  }
  if (wPressed == true) {
    garvin.accelerate(1);
  }
  if (dPressed == true) {
    garvin.turn(5);
  }
  if (spacePressed == true) {
    bulls.add(new Bullet(garvin));
  }
  if (hPressed == true) {
    garvin.hyperSpace();
  }
}

public void keyPressed() {
  if (key=='a') {
    aPressed = true;
  } else if (key == 'w') {
    wPressed = true;
  } else if (key == 'd') {
    dPressed = true;
  } else if (key == ' ') {
    spacePressed = true;
  } else if (key == 'h') {
    hPressed = true;
  }
}

public void keyReleased() {
  if (key=='a') {
    aPressed = false;
  } else if (key == 'w') {
    wPressed = false;
  } else if (key == 'd') {
    dPressed = false;
  } else if (key == ' ') {
    spacePressed = false;
  } else if (key == 'h') {
    hPressed = false ;
  }
}
