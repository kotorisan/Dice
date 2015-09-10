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

Die sinon;

{
  size(500,500);
  noLoop();
}
public void draw()
{
  background(225);
  sinon = new Die(x,y);
  strokeWeight(1);
  stroke(255);
  fill(0);
  rect(350,350,100,100);
  fill(255);
  textSize(25);
  textAlign(CENTER);
  text(sum,400,408);
  //weeb nation 101 cant stop me
}
public void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
	int dx, dy, num;
	Die(int x, int y) //constructor
	{
		dx = x;
		dy = y;
	}
	public void roll()
	{
		num = (int)(Math.random()*6) + 1;
	}
	public void show()
	{
		noStroke();
		fill(255);
		rect(dx,dy,100,100,10);
		fill(0);
		if(num == 1)
		{
			ellipse(dx + 50,dy + 50,18,18);
		}
		else if(num == 2)
		{
			ellipse(dx + 75,dy + 25,18,18);
			ellipse(dx + 25,dy + 75,18,18);
		}
		else if(num == 3)
		{
			ellipse(dx + 50,dy + 50,18,18);
			ellipse(dx + 75,dy + 25,18,18);
			ellipse(dx + 25,dy + 75,18,18);
		}
		else if(num == 4)
		{
			ellipse(dx + 75,dy + 25,18,18);
			ellipse(dx + 25,dy + 75,18,18);
			ellipse(dx + 75,dy + 75,18,18);
			ellipse(dx + 25,dy + 25,18,18);
		}
		else if(num == 5)
		{
			ellipse(dx + 50,dy + 50,18,18);
			ellipse(dx + 75,dy + 25,18,18);
			ellipse(dx + 25,dy + 75,18,18);
			ellipse(dx + 75,dy + 75,18,18);
			ellipse(dx + 25,dy + 25,18,18);
		}
		else if(num == 6)
		{
			ellipse(dx + 75,dy + 25,18,18);
			ellipse(dx + 25,dy + 75,18,18);
			ellipse(dx + 75,dy + 75,18,18);
			ellipse(dx + 25,dy + 25,18,18);
			ellipse(dx + 25,dy + 50,18,18);
			ellipse(dx + 75,dy + 50,18,18);
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
