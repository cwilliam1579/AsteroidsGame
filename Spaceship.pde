class Spaceship extends Floater
{

  Spaceship() {
    corners = 13;

    xCorners = new int[corners];
    yCorners = new int[corners];


    xCorners[0] = 24;
    yCorners[0] = 0;
    xCorners[1] = 9;
    yCorners[1] = 6;
    xCorners[2] = -3;
    yCorners[2] = 9;
    xCorners[3] = -6;
    yCorners[3] = 15;
    xCorners[4] = -24;
    yCorners[4] = 15;
    xCorners[5] = -15;
    yCorners[5] = 9;
    xCorners[6] = -24;
    yCorners[6] = 6;
    xCorners[7] = -24;
    yCorners[7] = -6;
    xCorners[8] = -15;
    yCorners[8] = -9;
    xCorners[9] = -24;
    yCorners[9] = -15;
    xCorners[10] = -6;
    yCorners[10] = -15;
    xCorners[11] = -3;
    yCorners[11] = -9;
    xCorners[12] = 9;
    yCorners[12] = -6;




    myColor=color(255);

    myCenterX=375;
    myCenterY=375;

    myXspeed=0;
    myYspeed=0;


    myPointDirection=0;
  }

  public void hyperspace() {
    myCenterX=(int)(Math.random()*751);
    myCenterY=(int)(Math.random()*751);
    myXspeed=0;
    myYspeed=0;
    myPointDirection=(int)(Math.random()*360);
  }

  public float getY() {
    return (float)myCenterY;
  }

  public float getX() {
    return (float) myCenterX;
  }

  public float getXspeed() {
    return (float) myXspeed;
  }

  public float getYspeed() {
    return (float) myYspeed;
  }
  
  public float getPointDirection(){
  return (float) myPointDirection;
  }
}
