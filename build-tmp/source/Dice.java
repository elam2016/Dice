import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Dice extends PApplet {

public void setup()
{
	size(200,200);
	noLoop();
}
public void draw()
{
	//your code here
	background(0);
	Die die1 = new Die(50, 50, 50);
	die1.roll();
	die1.show();
}
public void mousePressed()
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
	public void roll()
	{ //your code here
		numRoll = 5;//(int)(Math.random()*6) + 1;
	}
	public void show()
	{ //your code here
		fill(255);
		rect(myX, myY, mySize, mySize);
		fill(0);
		if (numRoll == 5)
		{
			ellipse(myX + 10, myY + 10, mySize - 40, mySize - 40);
			ellipse(myX + 25, myY + 25, mySize - 40, mySize - 40);
			ellipse(myX + 40, myY + 40, mySize - 40, mySize - 40);
		}
		if (numRoll == 2)
		{
			ellipse(myX + 25, myY + 25, mySize - 40, mySize - 40);
		}
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
