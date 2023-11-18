boolean[] keys = new boolean[5]; // a, w, d, s, space

Spaceship ship = new Spaceship(); // spaceship
Star[] starz = new Star[400]; // stars

public void setup()
{
  size (1000, 1000);

  for (int i =0; i<starz.length; i++) { //initializing stars
    starz[i] = new Star();
  }
}
public void draw()
{
  background(0);

  for (int i = 0; i < starz.length; i++) {  // showing stars
    starz[i].show();
  }




//buttons
  if (keys[0]) { 
    ship.turn(-5);
  }

  if (keys[1]) {
    ship.accelerate(0.09);
  }

  if (keys[2]) {
    ship.turn(5);
  }

  if (keys[3]) {
    ship.accelerate(-0.09);
  }

  if (keys[4]) {
    //firing method later
  }

  ship.move();
  ship.show();
}

public void keyPressed() {
  if (key == 'a' || keyCode == LEFT) {
    keys[0] = true;
  }

  if (key == 'w' || keyCode == UP) {
    keys[1] = true;
  }

  if (key == 'd' || keyCode == RIGHT) {
    keys[2] = true;
  }

  if (key == 's' || keyCode==DOWN) {
    keys[3] = true;
  }

  if (key ==  ' ') {
    keys[4] = true;
  }
  
  if (key=='r'){
  ship.hyperspace();
  }
  
  if (key=='e'){
    ship.myXspeed=0;
    ship.myYspeed=0;
  }
}

public void keyReleased() {
  if (key == 'a' || keyCode == LEFT) {
    keys[0] = false;
  }

  if (key == 'w' || keyCode == UP) {
    keys[1] = false;
  }

  if (key == 'd' || keyCode == RIGHT) {
    keys[2] = false;
  }

  if (key == 's' || keyCode==DOWN) {
    keys[3] = false;
  }
  if (key ==  ' ') {
    keys[4] = true;
  }
}

