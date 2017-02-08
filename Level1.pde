class Level1
{
  float x, y;
  float boxwidth = 30.0f;
  float speed = 6.0f;
  
  Level1(float x, float y)
  {
    this.x = x;
    this.y = y;
    create();
    
  }
  
  void create()
  {
    noStroke();
    fill(100, 0, 100);
    
    for(int i = 40; i < 440 ; i+= boxwidth + 36)
    {
       rect(x, i, boxwidth, boxwidth);
    }
    x += speed;
    if(x + boxwidth > width || (x < 0))
    {
      speed = - speed;
    }
  }
}