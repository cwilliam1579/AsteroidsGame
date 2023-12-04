private boolean[] keys = new boolean[5]; // a, w, d, s, space
private  Spaceship ship = new Spaceship(); // spaceship
private  Star[] starz = new Star[250]; // stars
private ArrayList <Asteroid> ast=new ArrayList <Asteroid>();


public void setup()
{
  size (750, 750);
  frameRate(144);
  for (int i =0; i<starz.length; i++) { //initializing stars
    starz[i] = new Star();
  }
  
  for (int k=0;k<8;k++){
  ast.add(new Asteroid());
  }
}
public void draw()
{
  background(0);

  for (int i = 0; i < starz.length; i++) {  // showing stars
    starz[i].show();
    starz[i].move();
  }

for (int k=0;k<ast.size();k++){
ast.get(k).move();
ast.get(k).show();

double d = dist(ship.getX(), ship.getY(), ast.get(k).getX(), ast.get(k).getY());  
    if (d < 35) {
      ast.remove(k);
    }
}



  //buttons
  if (keys[0]) {
    ship.turn(-3);
  }

  if (keys[1]) {
    ship.accelerate(0.020);
  }

  if (keys[2]) {
    ship.turn(3);
  }

  if (keys[3]) {
    ship.accelerate(-0.020);
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

  if (key=='r') {
    ship.hyperspace();
  }

  if (key=='e') {
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
