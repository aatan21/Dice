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
    number = (int)(Math.random() * 6 + 1);
  }
  void show()
  {
    strokeWeight(2);
    stroke(55, 198, 255);
    noFill();
    rect(myX-25, myY-25, 50, 50, 15);
    fill(55, 198, 255);
    ellipse(myX, myY, 8, 8);
  }
}
