void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  //your code here
  background(239,180,193);
  for (int i = 0; i < 100; i++)
  {
    int lol = (int)(Math.random()*100);
    Die bob = new Die(i*lol,lol);
    bob.show();
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    //numDots = (int)((Math.random()*6)+1);
    myX = x;
    myY = y;
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    //your code here
    strokeWeight(3);
    rect(myX, myY, myX, myY);
  }
}
