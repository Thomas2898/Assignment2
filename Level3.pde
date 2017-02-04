class Level3
{
  float cx, cy;
  float boxwidth = 30.0f;
  float speed = 0.02f;
  float theta = 0;
  float theta1 = 0;
  float radius = 200;

  
  Level3(float cx, float cy)
  {
    this.cx = cx;
    this.cy = cy;
    create();
    
  }
  
  void create()
  {
    stroke(255);
    noFill();
    ellipse(cx, cy, radius * 2, radius * 2);
  
    for(int i = 40 ; i < 440 ; i+=40)
    {
      float x = cx + sin(theta) * radius;
      float y = cy - cos(theta) * radius;
      float x1 = cx + sin(theta) * (radius - i);
      float y1 = cy - cos(theta) * (radius - i);
      line(cx, cy, x, y);
      noStroke();
      fill(100, 0, 100);
      rect(x, y, 30, 30);
      rect(x1, y1, 30, 30);
    }
    
     for(int i = 40 ; i < 440 ; i+=40)
    {
      float x = cx + sin(theta1) * radius;
      float y = cy - cos(theta1) * radius;
      float x1 = cx + sin(theta1) * (radius - i);
      float y1 = cy - cos(theta1) * (radius - i);
      line(cx, cy, x, y);
      noStroke();
      fill(100, 0, 100);
      rect(x, y, 30, 30);
      rect(x1, y1, 30, 30);
    }
    theta += speed;
    theta1 -= speed;
   }
}