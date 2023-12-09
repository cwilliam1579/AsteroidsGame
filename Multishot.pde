class Multishot extends Floater
{
  double myAngle,mySpeed;
  Multishot(Spaceship theShip)
  {

    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myAngle = Math.random()*8*Math.PI;
    mySpeed=7;
  }

  void move() {
   myCenterX += Math.cos(myAngle) * mySpeed;
    myCenterY+= Math.sin(myAngle) * mySpeed;
  }
  void show() {
    noStroke();
    fill(0, 255, 50);
    ellipse((int)myCenterX, (int)myCenterY, 15, 15);
  }
  
  //Getter functions

    public float getY() {
    return (float)myCenterY;
  }

  public float getX() {
    return (float) myCenterX;
  }
  
}
