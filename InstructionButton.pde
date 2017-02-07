class InstructionButton
{
  float cx, cy;
  boolean overB = false;
  
  InstructionButton(float cx, float cy)
  {
    this.cx = cx;
    this.cy = cy;
  }
  
  void updateOnButton(int x, int y)
  {
    noStroke();
    if(mouseX >= cx && mouseX <= cx + 150 && mouseY >= cy && mouseY <= cy + 40)
    {
      overB = true;
      fill(255);
      rect(cx, cy, 150, 40);
      fill(0);
    }
    else
    {
      overB = false;
      fill(0);
      rect(cx, cy, 150, 40);
      fill(255);
    }
    textSize(20);
    text("Instructions", cx + 20, cy + 25);
  }
  
  void mousePressed()
  {
    if(mousePressed)
    {
      if(overB)
      {
        lvlscreen = 2;
      }
    }
  }
}