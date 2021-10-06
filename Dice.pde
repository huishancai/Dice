Die one;
Die two;
Die three;

void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  //your code here
  background(239,180,193);
  
  one = new Die(25, 25);
  two = new Die(125, 25);
  three = new Die(25, 125);
  one.show();
  two.show();
  three.show();
  
  fill(0);
  
  //for (int i = 0; i < 100; i++)
  //{
    //int lol = (int)(Math.random()*300);
    //Die bob = new Die(i*lol,lol);
    //bob.show();
  //}
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int numDots, myX, myY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    //numDots = (int)((Math.random()*6)+1);
    myX = x;
    myY = y;
    numDots = (int)(Math.random()*6)+1;
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    //your code here
    for(int i = 0; i <= 100; i++)
    {
      strokeWeight(1);
      fill(255);
      rect(myX, myY, 50, 50);
    }
        int size = 10;
    if (numDots == 1)
    {
      fill(0);
      ellipse(myX+25, myY+25, size, size);
    }
    else if (numDots == 2)
    {
      fill(0);
      ellipse(myX+25, myY+15, size, size);
      ellipse(myX+25, myY+35, size, size);
    }
    else if (numDots == 3)
    {
      fill(0);
      ellipse(myX+12.5, myY+12.5, size, size);
      ellipse(myX+25, myY+25, size, size);
      ellipse(myX+37.5, myY+37.5, size, size);
    }
    else if (numDots == 4)
    {
      fill(0);
      ellipse(myX+12.5, myY+12.5, size, size);
    }
    else if (numDots == 5)
    {
      fill(0);
      ellipse(myX+12.5, myY+12.5, size, size);
    }
    else {
      fill(0);
      ellipse(myX+12.5, myY+12.5, size, size);
    }
  }
}
