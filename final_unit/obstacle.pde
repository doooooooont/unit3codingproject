class obstacles
{
//private goes before info we want class to use
 private float speedX;
 private float speedY;
private float radius;
  private float posX;
 private float posY;

  obstacles()
  {
    posX=(random(width));
    posY=(random(height));
    speedX=(random(-3, 3));
    speedY=(random(-3, 3));
    
  }
 public void Draw()
 {
 
 ellipse(posX,posY,radius,radius);
 }
 public void update()
  {
if(posX<0)
{
 posX=(random(width));
 speedX=(random(-3,3));
  
}
if(posY>600)
{
 posY=(random(height));
  speedY=(random(-10,10));
}
    if (posX>=600)
    {
      posX=random(width);
       speedX=(random(-3,3));
    }
    if (posX>=0 && posX<600)
    {
      posX=posX+speedX;
       
    } //<>//
    if (posY<=0)
    {
      posY=random(height);
       speedY=(random(-3,3));
    }
    if (posY>=0 && posY<600)
    {
      posY=posY+speedY;
      
      
    }
     fill(0);
    ellipse(posX, posY, 50, 50);

  }
}