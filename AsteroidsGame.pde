private boolean[] keys = new boolean[5]; // a, w, d, s, space
private Spaceship ship = new Spaceship(); // spaceship
private Star[] starz = new Star[750]; // stars
private ArrayList <Asteroid> ast=new ArrayList <Asteroid>();
private ArrayList <Bullet> bull = new ArrayList <Bullet> ();
private ArrayList <Superbullet> sup = new ArrayList <Superbullet> ();
private int frameDiff = 0;
private int score=100000;
private String word = "";
private ArrayList <Multishot> mul = new ArrayList <Multishot> ();


public void setup()
{
  size (1500, 750);
  frameRate(144);
  for (int i =0; i<starz.length; i++) { //initializing stars
    starz[i] = new Star();
  }

  for (int k=0; k<18; k++) {
    ast.add(new Asteroid());
  }
}
public void draw()
{
  frameDiff++;
  System.out.println(frameDiff);
  background(0);

  if (score<0)
    score=0;

  textSize(30);
  fill(255, 255, 255);
  text("Score: "+score, 50, 50);




  if (score>=2000) {
    word="Pierce Shot Unlocked! [z]";
    textSize(30);
    fill(255, 0, 0);
    text(word, 50, 80);
    System.out.println(word);
  }

  if (score<2000) {
    word="";
  }




  for (int i = 0; i < starz.length; i++) {  // showing stars
    starz[i].show();
    starz[i].move();
  }

  for (int k=0; k<ast.size(); k++) {
    ast.get(k).move();
    ast.get(k).show();

    double d = dist(ship.getX(), ship.getY(), ast.get(k).getX(), ast.get(k).getY());
    if (d < 35) {
      score=score-1000;
      ast.remove(k);
      ast.add(new Asteroid());
    }
  }
  for (int k = 0; k < bull.size(); k++) {
    bull.get(k).move();
    bull.get(k).show();

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

  for (int p = 0; p < mul.size(); p++) {
    mul.get(p).show();
    mul.get(p).move();
    //ADD GETTER FUNCTIONS FOR MULTISHOT X AND Y
    
  }

  for (int k = 0; k < sup.size(); k++) {
    sup.get(k).move();
    sup.get(k).show();

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



  //buttons
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

  if (keys[4] && frameDiff > 40) {
    bull.add(new Bullet(ship));
    frameDiff=0;
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
    if (frameDiff>720 && score>=5000) {
      for (int i=0; i < 20; i++) {
        mul.add(new Multishot(ship));
      }
      frameDiff=0;
    }
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
    keys[4] = false;
  }
}
