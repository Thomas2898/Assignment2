class Time
{
  float x, y;
  float timeDelta = 0;
  float timeAccumulator = 0;
  int last = 0;
  
  Time(float x, float y)
  {
    this.x = x;
    this.y = y;
    create();
    
  }
  
  void create()
  {
    int now = millis();
    timeDelta = (now - last) / 1000.0f;  
    last = now;
    timeAccumulator += timeDelta;
    fill(0);
    textSize(20);
    text(timeAccumulator, x + 55, y);
    text("Time:", x, y);
  }
}