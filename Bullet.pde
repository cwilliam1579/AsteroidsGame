class Bullet extends Floater {
  Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();

    myXspeed = theShip.getXspeed() * 1.5;
    myYspeed = theShip.getYspeed() * 1.5;

    myPointDirection = theShip.getPointDirection();

    accelerate(6);

    myColor = color(255,255,255);
  }
  
  public void show() {
    fill(myColor);
    noStroke();
    ellipse((float) myCenterX, (float) myCenterY, 8, 8);
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
