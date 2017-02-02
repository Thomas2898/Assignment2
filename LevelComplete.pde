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
    fill(0, 255, 0);
    rect(x, y, boxwidth, boxwidth);
  }
}