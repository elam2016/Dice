int screenSize = 400;
int myX, myY, mySize, numRoll, pipSize;
int numTotal = 0;
void setup()
{
	size(screenSize,screenSize);
	noLoop();
}
void draw()
{
	//your code here
	background(0);
	mySize = screenSize/10;
	numTotal = 0;
	for(int dieY = 0; dieY <= screenSize; dieY += mySize*2) //first rows
	{
		for(int dieX = 0; dieX <= screenSize; dieX += mySize*2)
		{
			Die die1 = new Die(dieX, dieY, mySize);
			die1.show();
		}
	}
	for(int dieY = mySize; dieY <= screenSize; dieY += mySize*2) //second rows
	{
		for(int dieX = mySize; dieX <= screenSize; dieX += mySize*2)
		{
			Die die2 = new Die(dieX, dieY, mySize);
			die2.show();
		}
	}
	fill(200);
	text("Total: " + numRoll, 50, 10);
	fill(255);
}
void mousePressed()
{
	redraw();
	numTotal = 0;
}
class Die //models one single dice cube
{ //variable declarations here
	Die(int x, int y, int cubeSize) //constructor
	{ //variable initializations here
		myX = x;
		myY = y;
		mySize = cubeSize;
		pipSize = mySize/5;
		numRoll = ((int)(Math.random()*6) + 1);
	}
	void show()
	{ //your code here
		fill(225);
		rect(myX, myY, mySize, mySize);
		fill((Math.random()*100) + 100, (Math.random()*100) + 100, (Math.random()*100) + 100);
		if (numRoll == 1)
		{
			//numTotal = 1;
			ellipse(myX + mySize/2, myY + mySize/2, pipSize, pipSize);
		} else if (numRoll == 2)
		{
			//numTotal = 2;
			ellipse(myX + mySize/5, myY + mySize/5, pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + (mySize*4/5), pipSize, pipSize);
		} else if(numRoll == 3)
		{
			//numTotal = 3;
			ellipse(myX + mySize/2, myY + mySize/2, pipSize, pipSize);
			ellipse(myX + mySize/5, myY + mySize/5, pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + (mySize*4/5), pipSize, pipSize);
		} else if (numRoll == 4)
		{
			//numTotal = 4;
			ellipse(myX + mySize/5, myY + mySize/5, pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + (mySize*4/5), pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + mySize/5, pipSize, pipSize);
			ellipse(myX + mySize/5, myY + (mySize*4/5), pipSize, pipSize);
		} else if (numRoll == 5)
		{
			//numTotal = 5;
			ellipse(myX + mySize/2, myY + mySize/2, pipSize, pipSize);
			ellipse(myX + mySize/5, myY + mySize/5, pipSize, pipSize);
			ellipse(myX + (mySize*4/5), (myY + mySize*4/5), pipSize, pipSize);
			ellipse(myX +( mySize*4/5), myY + mySize/5, pipSize, pipSize);
			ellipse(myX + mySize/5, myY + (mySize*4/5), pipSize, pipSize);
		} else
		{
			//numTotal = 6;
			ellipse(myX + mySize/5, myY + mySize/5, pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + (mySize*4/5), pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + mySize/5, pipSize, pipSize);
			ellipse(myX + mySize/5, myY + (mySize*4/5), pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + mySize/2, pipSize, pipSize);
			ellipse(myX + mySize/5, myY + mySize/2, pipSize, pipSize);
		}
	}
}
