private boolean[] keys = new boolean[5]; // a, w, d, s, space
private Spaceship ship = new Spaceship(); // spaceship
private Star[] starz = new Star[750]; // stars
private ArrayList <Asteroid> ast=new ArrayList <Asteroid>(); //asteroids
private ArrayList <Bullet> bull = new ArrayList <Bullet> (); //bulllets
private ArrayList <Superbullet> sup = new ArrayList <Superbullet> (); //supershot
private int frameDiff = 0; //framecount for shooting delay
private int score=0; //score
private String word = ""; //Display word
private ArrayList <Multishot> mul = new ArrayList <Multishot>();//multishot


public void setup()
{
  size (1500, 750);
  frameRate(144);

  for (int i =0; i<starz.length; i++) { //initializing stars
    starz[i] = new Star();
  }

  for (int k=0; k<18; k++) { //initializing Asteroids
    ast.add(new Asteroid());
  }
}


public void draw()
{
  frameDiff++;
  background(0);

  //Display
  //Regular Scorekeeping
  if (score<0)
    score=0;

  textSize(30);
  fill(255, 255, 255);
  text("Score: "+score, 50, 50);

  //Pierce shot score


  if (score>=2000) {
    word="Pierce Shot Unlocked! [z]";
    textSize(30);
    fill(255, 0, 0);
    text(word, 50, 80);
  }

  if (score<2000) {
    word="";
  }

  //Multishot score

  if (score>=5000) {
    word="Multishot Unlocked! [v]";
    textSize(30);
    fill(0, 255, 0);
    text(word, 50, 110);
  }

  if (score<5000) {
    word="";
  }

  //Calling functions

  for (int i = 0; i < starz.length; i++) {  // showing stars
    starz[i].show();
    starz[i].move();
  }

  //Asteroids
  for (int k=0; k<ast.size(); k++) {
    ast.get(k).move();
    ast.get(k).show();
    //Destroy Asteroids when hit with body of Spaceship
    double d = dist(ship.getX(), ship.getY(), ast.get(k).getX(), ast.get(k).getY()); //
    if (d < 35) {
      score=score-1000;
      ast.remove(k);
      ast.add(new Asteroid());
    }
  }


  //Normal Bullet
  for (int k = 0; k < bull.size(); k++) {
    bull.get(k).move();
    bull.get(k).show();
    //Destroy Bullet and Asteroid when hit
    for (int l = 0; l < ast.size(); l++) {
      double d = dist((float) bull.get(k).getX(), (float) bull.get(k).getY(), (float) ast.get(l).getX(), (float) ast.get(l).getY());
      if (d < 35) {
        ast.remove(l);
        bull.remove(k);
        score=score+200;
        ast.add(new Asteroid());
        break;
      }
    }
  }

  //Multishot Bullet
  for (int p = 0; p < mul.size(); p++) {
    mul.get(p).show();
    mul.get(p).move();
    //Destroy Multishot and Asteroid when hit
    for (int l = 0; l < ast.size(); l++) {
      double d = dist((float) mul.get(p).getX(), (float) mul.get(p).getY(), (float) ast.get(l).getX(), (float) ast.get(l).getY());
      if (d < 35) {
        ast.remove(l);
        mul.remove(p);
        ast.add(new Asteroid());
        score=score+200;
        break;
      }
    }
  }

  //Superbullet
  for (int k = 0; k < sup.size(); k++) {
    sup.get(k).move();
    sup.get(k).show();
    //Destroy Asteroids when hit
    for (int l = 0; l < ast.size(); l++) {
      double d = dist((float) sup.get(k).getX(), (float) sup.get(k).getY(), (float) ast.get(l).getX(), (float) ast.get(l).getY());
      if (d < 35) {
        ast.remove(l);
        ast.add(new Asteroid());
        score=score+200;
        break;
      }
    }
  }



  //buttons in Array
  if (keys[0]) {
    ship.turn(-2);
  }

  if (keys[1]) {
    ship.accelerate(0.025);
  }

  if (keys[2]) {
    ship.turn(2);
  }

  if (keys[3]) {
    ship.accelerate(-0.025);
  }

  if (keys[4] && frameDiff > 77) {
    bull.add(new Bullet(ship));
    frameDiff=0;
  }
  ship.move();
  ship.show();
}
//More buttons :)
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

  if (key=='z') {
    if (frameDiff > 144 && score>=2000) {
      if (ship.myXspeed==0 && ship.myYspeed==0) {
        sup.add(new Superbullet(ship));
        ship.accelerate(-2);
        frameDiff=0;
      }
    }
  }

  if (key=='v') {
    if (frameDiff>350 && score>=5000) {
      for (int i=0; i < 5; i++) {
        mul.add(new Multishot(ship));
      }
      frameDiff=0;
    }
  }
}


//Even more buttons :(
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
    keys[4] = false;
  }
}
