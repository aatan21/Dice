void setup()
{
  size(600, 600);
  noLoop();
}

int counter;
void draw()
{
  background(0, 0, 0);
  counter = 0;
  for (int r = 50; r <= 350; r+= 100) {
    for (int c = 50; c <= 550; c+= 100) {
      Die bob = new Die(c, r);
      bob.show();
      counter += bob.number;
    }
  }
  fill(55, 198, 255);
  textSize(30);
  text("Total: " + counter, 235, 500);
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
    roll();
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
    rect(myX-35, myY-35, 70, 70, 15);
    if (number == 1) {
      fill(55, 198, 255);
      ellipse(myX, myY, 10, 10);
    }
    if (number == 2) {
      fill(55, 198, 255);
      ellipse(myX-20, myY-20, 10, 10);
      ellipse(myX+20, myY+20, 10, 10);
    }
    if (number == 3) {
      fill(55, 198, 255);
      ellipse(myX, myY, 10, 10);
      ellipse(myX-20, myY-20, 10, 10);
      ellipse(myX+20, myY+20, 10, 10);
    }
    if (number == 4) {
      fill(55, 198, 255);
      ellipse(myX-20, myY-20, 10, 10);
      ellipse(myX+20, myY+20, 10, 10);
      ellipse(myX+20, myY-20, 10, 10);
      ellipse(myX-20, myY+20, 10, 10);
    }
    if (number == 5) {
      fill(55, 198, 255);
      ellipse(myX, myY, 10, 10);
      ellipse(myX-20, myY-20, 10, 10);
      ellipse(myX+20, myY+20, 10, 10);
      ellipse(myX+20, myY-20, 10, 10);
      ellipse(myX-20, myY+20, 10, 10);
    }
    if (number == 6) {
      fill(55, 198, 255);
      ellipse(myX-20, myY-20, 10, 10);
      ellipse(myX+20, myY+20, 10, 10);
      ellipse(myX+20, myY-20, 10, 10);
      ellipse(myX-20, myY+20, 10, 10);
      ellipse(myX-20, myY, 10, 10);
      ellipse(myX+20, myY, 10, 10);
    }
  }
}

