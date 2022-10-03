void setup()
{
  size(400, 400);
  noLoop();
}
void draw()
{
  background(0, 0, 0);
  Die bob = new Die(200, 200);
  bob.show();
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int number;
  int myX, myY;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    //roll();
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    rect(150, 150, 50, 50, 0);
  }
}
