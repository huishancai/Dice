Die one;
Die two;
Die three;
int addSum = 0;

void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  //your code here
  background(239,180,193);
  
  for(int y = 25 ; y <= 400 ; y += 50 ) //8 rows
  {
    for(int x = 25 ; x <= 450 ; x +=50) //9 columns
    {
      Die ramen = new Die(x,y);
      ramen.show();
    }
  }
  textSize(40);
  text("Total Sum: " + addSum,105,475);
}
void mousePressed()
{
  addSum = 0;
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int numDots, myX, myY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    //your code here
    numDots = (int)(Math.random()*6)+1;
    addSum += numDots;
  }
  void show()
  {
    //your code here
    for(int square = 0; square <= 100; square++)
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
      ellipse(myX+37.5, myY+12.5, size, size);
      ellipse(myX+12.5, myY+37.5, size, size);
      ellipse(myX+37.5, myY+37.5, size, size);
    }
    else if (numDots == 5)
    {
      fill(0);
      ellipse(myX+12.5, myY+12.5, size, size);
      ellipse(myX+37.5, myY+12.5, size, size);
      ellipse(myX+12.5, myY+37.5, size, size);
      ellipse(myX+37.5, myY+37.5, size, size);
      ellipse(myX+25, myY+25, size, size);
    }
    else {
      fill(0);
      ellipse(myX+12.5, myY+12.5, size, size);
      ellipse(myX+37.5, myY+12.5, size, size);
      ellipse(myX+25, myY+12.5, size, size);
      ellipse(myX+25, myY+37.5, size, size);
      ellipse(myX+12.5, myY+37.5, size, size);
      ellipse(myX+37.5, myY+37.5, size, size);
    }
  }
}
