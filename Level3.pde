class Level3
{
  float cx, cy;
  float boxwidth = 30.0f;
  float speed = 0.015f;
  float theta = 0;
  float theta1 = 0;
  float radius = 200;
  float x, y, x1, y1, x2, y2;

  
  Level3(float cx, float cy)
  {
    this.cx = cx;
    this.cy = cy;
    create();
    
  }
  
  void create()
  {
    noStroke();
    fill(100, 0, 100);
    for(int i = 40 ; i < 440 ; i+=40)
    {
      x = cx + sin(theta) * radius;
      y = cy - cos(theta) * radius;
      x1 = cx + sin(theta) * (radius - i);
      y1 = cy - cos(theta) * (radius - i);
      rect(x, y, 30, 30);
      rect(x1, y1, 30, 30);
    }
    
     for(int i = 40 ; i < 440 ; i+=40)
    {
      x = cx + sin(theta1) * radius;
      y = cy - cos(theta1) * radius;
      x2 = cx + sin(theta1) * (radius - i);
      y2 = cy - cos(theta1) * (radius - i);
      rect(x, y, 30, 30);
      rect(x2, y2, 30, 30);
    }
    theta -= speed;
    theta1 += speed;
   }
}