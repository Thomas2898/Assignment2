class ExitButton
{
  float cx, cy;
  boolean overB = false;
  
  ExitButton(float cx, float cy)
  {
    this.cx = cx;
    this.cy = cy;
  }
  
  void updateOnButton(int x, int y)
  {
    noStroke();
    if(mouseX >= cx && mouseX <= cx + 20 && mouseY >= cy && mouseY <= cy + 20)
    {
      overB = true;
      fill(255, 0, 0);
      textSize(20);
      rect(cx, cy, 20, 20);
    }
    else
    {
      overB = false;
      fill(100, 0, 0);
      rect(cx, cy, 20, 20);
    }
    fill(0);
    textSize(20);
    text("X", cx + 5, cy + 18);
  }
  
  void mousePressed()
  {
    if(mousePressed)
    {
      if(overB)
      {
        lvlscreen = 0;
      }
    }
  }
}