class obstacles
{

  float speedX;
  float speedY;
  
  float posX;
  float posY;
 
 obstacles()
 {
 posX=(random(width));
 posY=(random(width));
 speedX=(random(-2,2));
 speedY=(random(-2,2));
 }
 void update()
 {
 
if(posX>=600)
{
posX=random(width);

}
if(posX>=0 && posX<600)
{
posX=posX+speedX; 

}
if(posY>=600)
{
posY=random(width);
speedY=
}
if(posY>=0 && posY<600)
{
posY=posY+speedY; 
}
 rect(posX, posY,50,50);
}

 
}