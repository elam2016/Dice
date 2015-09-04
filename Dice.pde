void setup()
{
	size(200,200);
	noLoop();
}
void draw()
{
	//your code here
	background(0);
	Die die1 = new Die(50, 50, 50);
	die1.roll();
	die1.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{ //variable declarations here
	int myX;
	int myY;
	int mySize;
	int numRoll;
	Die(int x, int y, int cubeSize) //constructor
	{ //variable initializations here
		myX = x;
		myY = y;
		mySize = cubeSize;
	}
	void roll()
	{ //your code here
		numRoll = 3;//(int)(Math.random()*6) + 1;
	}
	void show()
	{ //your code here
		fill(255);
		rect(myX, myY, mySize, mySize);
		fill(0);
		if (numRoll == 1)
		{
			ellipse(myX + 25, myY + 25, mySize - 40, mySize - 40);
		}
		if(numRoll == 3)
		{
			numRoll = 1;
			ellipse(myX + 10, myY + 10, mySize - 40, mySize - 40);
			ellipse(myX + 40, myY + 40, mySize - 40, mySize - 40);
		}
		if (numRoll == 5)
		{
			ellipse(myX + 40, myY + 10, mySize - 40, mySize - 40);
			ellipse(myX + 10, myY + 40, mySize - 40, mySize - 40);
		}
		if (numRoll == 2)
		{
			ellipse(myX + 10, myY + 10, mySize - 40, mySize - 40);
			ellipse(myX + 40, myY + 40, mySize - 40, mySize - 40);
		}
	}
}
