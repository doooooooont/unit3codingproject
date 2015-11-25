obstacles o;
int posX=400;
int posY=400;
int rectX=1;
int rectY=1;
int r=25;
int r2=25;
void setup()
{
  size(600, 600);
  o= new obstacles();
}

void draw()
{
  background(250, 65, 90); 
  ellipse(posX, posY, r*2, r2*2);
  fill(50, 246, 134);
  o.update();


  if (mousePressed)
  {
    if (dist(posX, posY, mouseX, mouseY) < 50)
    {
      posX=mouseX;
      posY=mouseY;
    }
  }  
  if (dist(posX, posY, rectX, rectY) < r+r2)
  {
    posX=400;
    posY=400;
  }
}