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
	Die die2 = new Die(100, 100, 50);
	die1.roll();
	die1.show();
	die2.roll();
	die2.show();
	//text()
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{ //variable declarations here
	int myX, myY, mySize, numRoll;
	Die(int x, int y, int cubeSize) //constructor
	{ //variable initializations here
		myX = x;
		myY = y;
		mySize = cubeSize;
		//sum = numRoll;
	}
	void roll()
	{ //your code here
		numRoll = (int)(Math.random()*6) + 1;
	}
	int pipSize = mySize - 40;
	class Pip
	{
		Pip(int pX, int pY, int numPips)
		{
			pipX = pX;
			pipY = pY;
			dots = numPips
		}
		void drawDots()
		{
			ellipse(pipX, pipY, pipSize, pipSize);
		}
	}
	Pip one = new Pip()
	void show()
	{ //your code here
		fill(255);
		rect(myX, myY, mySize, mySize);
		fill(0);
		if (numRoll == 1)
		{
			(myX + 25, myY + 25, pipSize, pipSize);
		}
		if (numRoll == 2)
		{
			ellipse(myX + 10, myY + 10, pipSize, pipSize);
			ellipse(myX + 40, myY + 40, pipSize, pipSize);
		}
		if(numRoll == 3)
		{
			ellipse(myX + 25, myY + 25, pipSize, pipSize);
			ellipse(myX + 10, myY + 10, pipSize, pipSize);
			ellipse(myX + 40, myY + 40, pipSize, pipSize);
		}
		if (numRoll == 4)
		{
			ellipse(myX + 10, myY + 10, pipSize, pipSize);
			ellipse(myX + 40, myY + 40, pipSize, pipSize);
			ellipse(myX + 40, myY + 10, pipSize, pipSize);
			ellipse(myX + 10, myY + 40, pipSize, pipSize);
		}
		if (numRoll == 5)
		{
			ellipse(myX + 25, myY + 25, pipSize, pipSize);
			ellipse(myX + 10, myY + 10, pipSize, pipSize);
			ellipse(myX + 40, myY + 40, pipSize, pipSize);
			ellipse(myX + 40, myY + 10, pipSize, pipSize);
			ellipse(myX + 10, myY + 40, pipSize, pipSize);
		}
		if (numRoll == 6)
		{
			ellipse(myX + 10, myY + 10, pipSize, pipSize);
			ellipse(myX + 40, myY + 40, pipSize, pipSize);
			ellipse(myX + 40, myY + 10, pipSize, pipSize);
			ellipse(myX + 10, myY + 40, pipSize, pipSize);
		}
	}
}
