class Level4
{
  float cx, cy;
  float boxwidth = 30.0f;
  float speed = 0.02f;
  float theta = 0;
  float theta1 = 0;
  float radius = 200;
  float x, y, x1, y1, x2, y2;

  
  Level4(float cx, float cy)
  {
    this.cx = cx;
    this.cy = cy;
    create();
    
  }
  
  void create()
  {
    stroke(255);
    noFill();
  
  for(float i = 0.2 ; i < 5.9 ; i+=0.2)
  {
    x = cx + sin(theta) * (radius - 10);
    y = cy - cos(theta) * (radius - 10);
    x1 = cx + sin(theta + i) * (radius - 10);
    y1 = cy - cos(theta + i) * (radius - 10);
    noStroke();
    fill(100, 0, 100);
    rect(x, y, 30, 30);
    rect(x1, y1, 30, 30);
  }
    theta += speed;
  }
}