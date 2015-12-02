obstacles o;
obstacles arrayofobstacle []= new obstacles[5];
float posX=400;
float posY=400;
int rectX=1;
int rectY=1;
int rect2X=1;
int r=25;
int r2=25;
void setup()
{
  size(600, 600);
  o= new obstacles();
for (int i=0; i<5; i++)
  {
  arrayofobstacle[i]=new obstacles();

}
}
void draw()
{
   
  fill(50, 246, 134);
  background(250, 65, 90); 
  ellipse(posX, posY, r*2, r2*2);
 
  o.update();
 for (int i=0; i<5; i++)
 {
  arrayofobstacle[i].update();
  if(dist(posX,posY,arrayofobstacle[i].posX,arrayofobstacle[i].posY)< r+r2)
 {
 posX=random(0,600);
 posY=random(0,600);
 textSize(32);
text("Game over", 10, 30); 
fill(0, 102, 153);
stop();
 }
 }

  if (mousePressed)
  
  {
    if (dist(posX, posY, mouseX, mouseY) < 50)
    {
      posX=mouseX;
      posY=mouseY;
    }
  }  
  if (dist(posX, posY, o.posX, o.posY) < r+r2)
  {
    posX=random(0,600);
    posY=random(0,600);
}
}