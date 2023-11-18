class Spaceship extends Floater
{

  Spaceship() {
    corners = 13;

    xCorners = new int[corners];
    yCorners = new int[corners];


    xCorners[0] = 16;
    yCorners[0] = 0;
    xCorners[1] = 6;
    yCorners[1] = 4;
    xCorners[2] = -2;
    yCorners[2] = 6;
    xCorners[3] = -4;
    yCorners[3] = 10;
    xCorners[4] = -16;
    yCorners[4] = 10;
    xCorners[5] = -10;
    yCorners[5] = 6;
    xCorners[6] = -16;
    yCorners[6] = 4;
    xCorners[7] = -16;
    yCorners[7] = -4;
    xCorners[8] = -10;
    yCorners[8] = -6;
    xCorners[9] = -16;
    yCorners[9] = -10;
    xCorners[10] = -4;
    yCorners[10] = -10;
    xCorners[11] = -2;
    yCorners[11] = -6;
    xCorners[12] = 6;
    yCorners[12] = -4;



    myColor=color(255);

    myCenterX=250;
    myCenterY=250;

    myXspeed=0;
    myYspeed=0;


    myPointDirection=0;
  }

  public void hyperspace() {
    myCenterX=(int)(Math.random()*500);
    myCenterY=(int)(Math.random()*500);
    myXspeed=0;
    myYspeed=0;
    myPointDirection=(int)(Math.random()*360);
  }
}
