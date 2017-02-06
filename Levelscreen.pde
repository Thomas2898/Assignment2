class Levelscreen
{
  float x, y;
  float d = 10; //Diameter of the ellipse
  
  Levelscreen(float x, float y)
  {
    this.x = x;
    this.y = y;
    create();
    
  }
  
  void create()
  {
    fill(255);
    textSize(30);
    text("BLOCK", x, y);
  }
}