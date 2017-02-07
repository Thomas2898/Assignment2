class Instructions
{
  float x, y;
  
  Instructions(float x, float y)
  {
    this.x = x;
    this.y = y;
    create();
    
  }
  
  void create()
  {
    noStroke();
    fill(255);
    textSize(20);
    text("Move up = W", x + 5, y + 20);
    text("Move down = S", x + 5, y + 60);
    text("Move right = D", x + 5, y + 100);
    text("Move left = A", x + 5, y + 140);
    text("Dont hit", x + 5, y + 200);
    text("Collect", x + 5, y + 240);
    text("to unlock", x + 100, y + 240);
    fill(255, 255, 0);
    ellipse(85, y + 235, 10, 10);
    fill(0, 255, 0);
    rect(x + 200, y + 220, 30, 30);
    fill(100, 0, 100);
    rect(100, y + 180, 30, 30);
  }
}