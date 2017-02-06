class Levelscreen
{
  float x, y;
  
  Levelscreen(float x, float y)
  {
    this.x = x;
    this.y = y;
    create();
    
  }
  
  void create()
  {
    fill(255);
    textSize(40);
    text("BLOCK", x - 20, y);
  }
}