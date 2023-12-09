class Superbullet extends Floater {
  Superbullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();

    myXspeed = theShip.getXspeed() * 2.5;
    myYspeed = theShip.getYspeed() * 2.5;

    myPointDirection = theShip.getPointDirection();

    accelerate(10);

    myColor = color(255, 100, 100);
  }

  public void show() {
    fill(myColor);
    noStroke();
    ellipse((float) myCenterX, (float) myCenterY, 15, 15);
  }

  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  
  //Getter functions

  public float getY() {
    return (float)myCenterY;
  }

  public float getX() {
    return (float) myCenterX;
  }
}
