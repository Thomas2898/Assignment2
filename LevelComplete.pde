class LevelComplete
{
  float x, y;
  float boxwidth = 30.0f;
  
  LevelComplete(float x, float y)
  {
    this.x = x;
    this.y = y;
    create();
    
  }
  
  void create()
  {
    noStroke();
    rect(x, y, boxwidth, boxwidth);
    fill(255, 255, 0);
  }
}