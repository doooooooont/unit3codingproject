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
    speedX=(random(-3, 3));
    speedY=(random(-3, 3));
  }
  void update()
  {

    if (posX>=600)
    {
      posX=random(width);
    }
    if (posX>=0 && posX<600)
    {
      posX=posX+speedX;
    }
    if (posY>=600)
    {
      posY=random(width);
    }
    if (posY>=0 && posY<600)
    {
      posY=posY+speedY;
    }
    ellipse(posX, posY, 50, 50);
    fill(50,170,254);
  }
}