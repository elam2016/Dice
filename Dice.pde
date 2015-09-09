int screenSize = 300;
int myX, myY, mySize, numRoll, pipSize;
void setup()
{
	size(screenSize,screenSize);
	noLoop();
}
void draw()
{
	//your code here
	background(0);
	mySize = 30;
	for(int dieY = 0; dieY <= screenSize; dieY += mySize*2)
	{
		for(int dieX = 0; dieX <= screenSize; dieX += mySize*2)
		{
			Die die1 = new Die(dieX, dieY, mySize);
			die1.roll();
			die1.show();
		}
	}
	for(int dieY = mySize; dieY <= screenSize; dieY += mySize*2)
	{
		for(int dieX = mySize; dieX <= screenSize; dieX += mySize*2)
		{
			Die die1 = new Die(dieX, dieY, mySize);
			die1.roll();
			die1.show();
		}
	}
	fill(197);
	text("Total: " + numRoll, 10, 10);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{ //variable declarations here
	Die(int x, int y, int cubeSize) //constructor
	{ //variable initializations here
		myX = x;
		myY = y;
		mySize = cubeSize;
		pipSize = mySize/5;
		//sum = numRoll;
	}
	void roll()
	{ //your code here
		numRoll = (int)(Math.random()*6) + 1;
	}
	void show()
	{ //your code here
		fill(225);
		rect(myX, myY, mySize, mySize);
		fill(0);
		if (numRoll == 1)
		{
			ellipse(myX + mySize/2, myY + mySize/2, pipSize, pipSize);
		}
		if (numRoll == 2)
		{
			ellipse(myX + mySize/5, myY + mySize/5, pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + (mySize*4/5), pipSize, pipSize);
		}
		if(numRoll == 3)
		{
			ellipse(myX + mySize/2, myY + mySize/2, pipSize, pipSize);
			ellipse(myX + mySize/5, myY + mySize/5, pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + (mySize*4/5), pipSize, pipSize);
		}
		if (numRoll == 4)
		{
			ellipse(myX + mySize/5, myY + mySize/5, pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + (mySize*4/5), pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + mySize/5, pipSize, pipSize);
			ellipse(myX + mySize/5, myY + (mySize*4/5), pipSize, pipSize);
		}
		if (numRoll == 5)
		{
			ellipse(myX + mySize/2, myY + mySize/2, pipSize, pipSize);
			ellipse(myX + mySize/5, myY + mySize/5, pipSize, pipSize);
			ellipse(myX + (mySize*4/5), (myY + mySize*4/5), pipSize, pipSize);
			ellipse(myX +( mySize*4/5), myY + mySize/5, pipSize, pipSize);
			ellipse(myX + mySize/5, myY + (mySize*4/5), pipSize, pipSize);
		}
		if (numRoll == 6)
		{
			ellipse(myX + mySize/5, myY + mySize/5, pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + (mySize*4/5), pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + mySize/5, pipSize, pipSize);
			ellipse(myX + mySize/5, myY + (mySize*4/5), pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + mySize/2, pipSize, pipSize);
			ellipse(myX + mySize/5, myY + mySize/2, pipSize, pipSize);
		}
	}
}
