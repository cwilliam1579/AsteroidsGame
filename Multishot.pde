class Multishot extends Floater
{
  double myAngle,mySpeed;
  Multishot(Spaceship theShip)
  {

    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myAngle = Math.random()*2*Math.PI;
    mySpeed=7;
  }

  void move() {
   myCenterX += Math.cos(myAngle) * mySpeed;
    myCenterY+= Math.sin(myAngle) * mySpeed;
  }
  void show() {
    noStroke();
    fill(255, 255, 255);
    ellipse((int)myCenterX, (int)myCenterY, 15, 15);
  }
}
