class Key
{
  float x, y;
  float d = 10; //Diameter of the ellipse
  
  Key(float x, float y)
  {
    this.x = x;
    this.y = y;
    create();
    
  }
  
  void create()
  {
    noStroke();
    fill(255, 255, 0);
    ellipse(x, y, d, d);
  }
}