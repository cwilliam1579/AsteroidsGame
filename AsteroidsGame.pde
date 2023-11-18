public boolean wIsPressed = false;
public boolean aIsPressed = false;
public boolean sIsPressed = false;
public boolean dIsPressed = false;


Spaceship ship = new Spaceship();
Star[] starz = new Star[250];

public void setup()
{
  size (500, 500);

  for (int i =0; i<starz.length; i++) {
    starz[i] = new Star();
  }
}
public void draw()
{
  background(0);

  for (int i = 0; i < starz.length; i++) {
    starz[i].show();
  }

  ship.show();
  ship.move();
}

public void keyPressed() {
  if (key == 'a' || keyCode == LEFT) {
    ship.turn(-PI*4);
  }
  if (key == 's' || keyCode == DOWN) {
    ship.accelerate(-.4);
  }
  if (key == 'w' || keyCode == UP) {
    ship.accelerate(.4);
  }

  if (key == 'd' || keyCode == RIGHT) {
    ship.turn(PI*4);
  }

  if (key == 'r') {
    ship.hyperspace();
  }
  
    if (key == 'e') {
    ship.myXspeed=0;
    ship.myYspeed=0;

}
}
