int screenSize = 300;
void setup()
{
	size(screenSize,screenSize);
	noLoop();
}
void draw()
{
	//your code here
	background(0);
	for(int dieY = 0; dieY <= screenSize; dieY += 100)
	{
		for(int dieX = 0; dieX <= screenSize; dieX += 100)
		{
			Die die1 = new Die(dieX, dieY, 50);
			die1.roll();
			die1.show();
		}
	}
	for(int dieY = 50; dieY <= screenSize; dieY += 100)
	{
		for(int dieX = 50; dieX <= screenSize; dieX += 100)
		{
			Die die1 = new Die(dieX, dieY, 50);
			die1.roll();
			die1.show();
		}
	}
	//text()
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{ //variable declarations here
	int myX, myY, mySize, numRoll, pipSize;
	Die(int x, int y, int cubeSize) //constructor
	{ //variable initializations here
		myX = x;
		myY = y;
		mySize = cubeSize;
		pipSize = mySize - 40;
		//sum = numRoll;
	}
	void roll()
	{ //your code here
		numRoll = (int)(Math.random()*6) + 1;
	}
	void show()
	{ //your code here
		fill(255);
		rect(myX, myY, mySize, mySize);
		fill(0);
		if (numRoll == 1)
		{
			ellipse(myX + 25, myY + 25, pipSize, pipSize);
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
			ellipse(myX + 40, myY + 25, pipSize, pipSize);
			ellipse(myX + 10, myY + 25, pipSize, pipSize);
		}
	}
}
