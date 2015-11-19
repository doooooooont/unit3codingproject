int posX=400;
int posY=400;
int rectX=0;
int rectY=400;
void setup()
{
  size(800,800);
  
  
}
void draw()
{
 background(250,65,90); 
ellipse(posX,posY,50,50);
fill(50,246,134);
 rect(rectX, rectY, 50, 50);
if (mousePressed == true)
 {
  if(dist(posX,posY,mouseX,mouseY)<25)
  {
  posX=mouseX;
  posY=mouseY;
  }
 
 }  
}
 