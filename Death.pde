class Death
{
  float x, y;
  
  Death(float x, float y)
  {
    this.x = x;
    this.y = y;
    create();
    
  }
  
  void create()
  {
    fill(255, 255, 0);
    textSize(20);
    text(death, x + 75, y);
    text("Deaths:", x, y);
  }
}