obstacles o;
int posX=400;
int posY=400;
int rectX=1;
int rectY=1;
void setup()
{
  size(600,600);
o= new obstacles();

  
}
void draw()
{
 background(250,65,90); 
ellipse(posX,posY,50,50);
fill(50,246,134);
o.update();

 
if (mousePressed == true)
 {
  if(dist(posX,posY,mouseX,mouseY)<50)
  {
  posX=mouseX;
  posY=mouseY;
  }
 
 }  

}