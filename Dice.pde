void setup()
{
  size(720, 700);
  noLoop();
  background(0);
}
void draw()
{
  int sum = 0;
  for(int y = 5; y<650; y += 55)
  {
    for(int x = 5; x<700; x+= 55)
    {
      Die bob = new Die(x,y);
      bob.show();
      sum = sum + bob.rollNum;
    }
  }
  fill(0);
  rect(5,660,150,100);
  fill(255,255,255);
  textSize(30);
  text("sum:"+sum, 5, 660, 150 , 100);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, centerX, centerY, rollNum, r, g, b, rCircle, gCircle, bCircle;

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
    rCircle = (int)(Math.random()*100 +100);
    gCircle = (int)(Math.random()*100 +100);
    bCircle = (int)(Math.random()*100 +100);
  }
  void roll()
  {
    rollNum = (int)(Math.random()*6)+1;
  }
    void show()
    {
      fill(r, g, b);
      rect(myX, myY, 50, 50, 10);
      fill(rCircle, gCircle, bCircle);
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
