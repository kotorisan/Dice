int count = 0;
int highest = 0;
void setup()
{
  noLoop();
  size(500,650);
  
}
void draw()
{
  background(255,255,0);
  //trying to make this confusing for you
 for(int Sinon = 50;  Sinon<= 350; Sinon+=150)
 {
   for(int Asuna = 50; Asuna<=350; Asuna += 150)
   {
     new Die(Sinon,Asuna);
   }
 }
fill(0,255,255);
textSize(32);

text("Total:" + count,120,525);
text("Umi is Lyfe", 120,600);

 
}

void mousePressed()
{
  redraw();
  
  count = 0;
 
}
class Die //models one single dice cube
{
  int side;
  int myX;
  int myY;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
    show();
  }
  void roll()
  {
    side = (int)(Math.random()*6 + 1);
    
    
  
  }
  
  void show()
  {
    count = count + side;
    
    
    if (count > highest)
    {
      highest = count;
      
    }
    
    int Umi = 20;
    //int it called umi because umi is lyfe
    
    fill(255);
    rect(myX,myY,100,100);
    
    if(side == 1)
    {
      
      fill(255,0,0);
      ellipse(myX+50,myY+50,Umi,Umi);
      
    }
    else if(side == 2)
    {
      
      fill(255,0,0);
      ellipse(myX+25,myY+25,Umi,Umi);
      ellipse(myX+75,myY+75,Umi,Umi);
    }
    else if(side == 3)
    {
      fill(0,255,0);
      ellipse(myX+25,myY+25,Umi,Umi);
      ellipse(myX+75,myY+75,Umi,Umi);
      ellipse(myX+50,myY+50,Umi,Umi);
    }
    else if (side == 4)
    {
      fill(0,255,0);
      ellipse(myX+25,myY+75,Umi,Umi);
      ellipse(myX+25,myY+25,Umi,Umi);
      ellipse(myX+75,myY+75,Umi,Umi);
      ellipse(myX+75,myY+25,Umi,Umi);
      
    }
    else if (side == 5)
    {
      fill(0,0,255);
      ellipse(myX+25,myY+75,Umi,Umi);
      ellipse(myX+25,myY+25,Umi,Umi);
      ellipse(myX+75,myY+75,Umi,Umi);
      ellipse(myX+75,myY+25,Umi,Umi);
      ellipse(myX+50,myY+50,Umi,Umi);
    }
     else if (side == 6)
    {
      fill(0,0,255);
      ellipse(myX+25,myY+75,Umi,Umi);
      ellipse(myX+25,myY+25,Umi,Umi);
      ellipse(myX+75,myY+75,Umi,Umi);
      ellipse(myX+75,myY+25,Umi,Umi);
      ellipse(myX+50,myY+25,Umi,Umi);
      ellipse(myX+50,myY+75,Umi,Umi);
    }
  }
}