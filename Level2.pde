class Level2
{
  float x, y, y1;
  float boxwidth = 30.0f;
  float speed = 3.0f;
  float speed1 = 3.0f;
  
  Level2(float x, float y)
  {
    this.x = x;
    this.y = y;
    y1 = 440;
    create();
    
  }
  
  void create()
  {
    noStroke();
    fill(100, 0, 100);
    
    for(int i = 5; i < 510 ; i+= boxwidth + 36)
    {
       rect(i, y, boxwidth, boxwidth);
       println(i);
    }
    
    for(int i = 38; i < 510 ; i+= boxwidth + 36)
    {
       rect(i, y1, boxwidth, boxwidth);
       println(i);
    }
    y1+= speed1;
    y += speed;
    if(y + boxwidth > height - 30 || (y < 30))
    {
      speed = - speed;
    }
    
    if(y1 + boxwidth > height - 30 || (y1 < 30))
    {
      speed1 = - speed1;
    }
  }
}