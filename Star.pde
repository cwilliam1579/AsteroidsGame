public class  Star extends Floater
{
  private float x, y;
  private int c;

  public Star() {
    x=(int)(Math.random()*751);
    y=(int)(Math.random()*751);
    c=color(255, (int)(Math.random()*155+100), (int)(Math.random()*255));
  }

  public void show () {
    noStroke();
    fill(c);
  beginShape();
  vertex(x-1, y+1);
  vertex(x, y+6);
  vertex(x+1, y+1);
  vertex(x+6, y);
  vertex(x+1, y-1);
  vertex(x, y-6);
  vertex(x-1, y-1);
  vertex(x-6, y);
  vertex(x-1, y+1);
  vertex(x-1, y+1 );
  endShape(CLOSE);
}

  public void move () {
    c=color(255, random(0, 255), random(0, 255));
  }
}
