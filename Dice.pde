void setup()
{
  size(995, 995);
  noLoop();
  background(0);
}
void draw()
{
  for(int y = 5; y<1000; y += 55)
  {
    for(int x = 5; x<1000; x+= 55)
    {
      Die bob = new Die(x,y);
      bob.show();
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, centerX, centerY, rollNum, r, g, b;

  Die(int x, int y) //constructor
  {
    rollNum = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
    centerX = x + 25;
    centerY = y + 25;
    r = (int)(Math.random()*100 +100);
    g = (int)(Math.random()*100 +100);
    b = (int)(Math.random()*100 +100);
  }
  void roll()
  {
    rollNum = (int)(Math.random()*6)+1;
  }
    void show()
    {
      rect(myX, myY, 50, 50, 10);
      fill(r, g, b);
    if (rollNum == 1) {
      ellipse(centerX, centerY, 10, 10);
    } else if (rollNum == 2) {
      ellipse(centerX-15, centerY-15, 10, 10);
      ellipse(centerX+15, centerY+15, 10, 10);
    } else if (rollNum == 3) {
      ellipse(centerX, centerY, 10, 10);
      ellipse(centerX-15, centerY-15, 10, 10);
      ellipse(centerX+15, centerY+15, 10, 10);
    } else if (rollNum == 4) {
      ellipse(centerX-15, centerY-15, 10, 10);
      ellipse(centerX+15, centerY-15, 10, 10);
      ellipse(centerX+15, centerY+15, 10, 10);
      ellipse(centerX-15, centerY+15, 10, 10);
    } else if (rollNum == 5) {
      ellipse(centerX, centerY, 10, 10);
      ellipse(centerX-15, centerY-15, 10, 10);
      ellipse(centerX+15, centerY-15, 10, 10);
      ellipse(centerX+15, centerY+15, 10, 10);
      ellipse(centerX-15, centerY+15, 10, 10);
    } else {
      ellipse(centerX-15, centerY-15, 10, 10);
      ellipse(centerX+15, centerY-15, 10, 10);
      ellipse(centerX-15, centerY, 10, 10);
      ellipse(centerX+15, centerY, 10, 10);
      ellipse(centerX+15, centerY+15, 10, 10);
      ellipse(centerX-15, centerY+15, 10, 10);
    }
    }
  }
