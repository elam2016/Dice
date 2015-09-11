int screenSize = 600;
int myX, myY, mySize, numRoll, pipSize;
int numTotal = 0;
int wordSize = (screenSize*3/40);
void setup()
{
	size(screenSize, (screenSize + wordSize));
	noLoop();
}
void draw()
{
	background(0);
	mySize = screenSize/20; //the cubes will always be prportional to screenSize/#
	numTotal = 0;
	for(int dieY = 0; dieY <= screenSize - wordSize; dieY += mySize*2) //first rows
	{
		for(int dieX = 0; dieX <= screenSize - wordSize; dieX += mySize*2)
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
	fill(100);
	textSize(wordSize);
	text("Total: " + numTotal, 10, screenSize + wordSize); //total at bottom of screen
	fill(255);
}
void mousePressed()
{
	redraw();
	numTotal = 0; //total always starts at zero
}
class Die //models one single dice cube
{
	Die(int x, int y, int cubeSize) //constructor
	{
		myX = x;
		myY = y;
		mySize = cubeSize;
		pipSize = mySize/5; //the pips will always be proportional to mySize/#
		numRoll = ((int)(Math.random()*6) + 1);
	}
	void show()
	{
		fill(225);
		rect(myX, myY, mySize, mySize);
		fill((int)(Math.random()*100) + 125, (int)(Math.random()*100) + 125, (int)(Math.random()*100) + 125);
		if (numRoll == 1)
		{
			numTotal ++;
			ellipse(myX + mySize/2, myY + mySize/2, pipSize, pipSize);
		} else if (numRoll == 2)
		{
			numTotal += 2;
			ellipse(myX + mySize/5, myY + mySize/5, pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + (mySize*4/5), pipSize, pipSize);
		} else if(numRoll == 3)
		{
			numTotal += 3;
			ellipse(myX + mySize/2, myY + mySize/2, pipSize, pipSize);
			ellipse(myX + mySize/5, myY + mySize/5, pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + (mySize*4/5), pipSize, pipSize);
		} else if (numRoll == 4)
		{
			numTotal += 4;
			ellipse(myX + mySize/5, myY + mySize/5, pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + (mySize*4/5), pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + mySize/5, pipSize, pipSize);
			ellipse(myX + mySize/5, myY + (mySize*4/5), pipSize, pipSize);
		} else if (numRoll == 5)
		{
			numTotal += 5;
			ellipse(myX + mySize/2, myY + mySize/2, pipSize, pipSize);
			ellipse(myX + mySize/5, myY + mySize/5, pipSize, pipSize);
			ellipse(myX + (mySize*4/5), (myY + mySize*4/5), pipSize, pipSize);
			ellipse(myX +( mySize*4/5), myY + mySize/5, pipSize, pipSize);
			ellipse(myX + mySize/5, myY + (mySize*4/5), pipSize, pipSize);
		} else //if not 1-5, will be 6
		{
			numTotal += 6;
			ellipse(myX + mySize/5, myY + mySize/5, pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + (mySize*4/5), pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + mySize/5, pipSize, pipSize);
			ellipse(myX + mySize/5, myY + (mySize*4/5), pipSize, pipSize);
			ellipse(myX + (mySize*4/5), myY + mySize/2, pipSize, pipSize);
			ellipse(myX + mySize/5, myY + mySize/2, pipSize, pipSize);
		}
	}
}
