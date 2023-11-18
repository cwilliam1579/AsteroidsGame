public class Star //note that this class does NOT extend Floater
{
  private int x, y, c;

  public Star() {
    x=(int)(Math.random()*1001);
    y=(int)(Math.random()*1001);
    c=color(255, (int)(Math.random()*155+100), (int)(Math.random()*255));
  }


  public void show () {
    noStroke();
    fill(c);
    ellipse(x, y, 3, 3);
  }
}
