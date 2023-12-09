public class Asteroid extends Floater {

  private double rotatespeed;

  Asteroid() {
    corners = 8;

    xCorners = new int[corners];
    yCorners = new int[corners];

    xCorners[0] = -30 ;
    yCorners[0] = 0;
    xCorners[1] = -17;
    yCorners[1] = 26;
    xCorners[2] = 1;
    yCorners[2] = 30;
    xCorners[3] = 15;
    yCorners[3] = 24;
    xCorners[4] = 30;
    yCorners[4] = 5;
    xCorners[5] = 20;
    yCorners[5] = -20;
    xCorners[6] = 0;
    yCorners[6] = -25;
    xCorners[7] = -15;
    yCorners[7] = -15;



    myColor=color(169, 169, 169);

    myCenterX= Math.random()*1500;
    myCenterY= Math.random()*1500;

    myXspeed=Math.random()*2-1;
    myYspeed=Math.random()*2-1;


    myPointDirection=0;


    if (Math.random() > 0.5) {
      rotatespeed = -1;
    } else {
      rotatespeed = 1;
    }
  }
  public void move () {
    turn(rotatespeed);
    super.move();
  }
  
//Getter functions
  public float getY() {
    return (float)myCenterY;
  }

  public float getX() {
    return (float) myCenterX;
  }
}
