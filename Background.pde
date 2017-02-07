class Background
{
  float x, y;
  
  Background(float x, float y)
  {
    this.x = x;
    this.y = y;
    create();
    
  }
  
  void create()
  {
    fill(255);
    rect(0, 0, 235, 30);
    rect(265, 0, 510, 30);
    rect(0, height - 30, 235, 30);
    rect(265, height - 30, 510, 30);
  }
}