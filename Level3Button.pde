class Level3Button
{
  float cx, cy;
  boolean overB = false;
  
  Level3Button(float cx, float cy)
  {
    this.cx = cx;
    this.cy = cy;
  }
  
  void updateOnButton(int x, int y)
  {
    noStroke();
    if(mouseX >= cx && mouseX <= cx + 100 && mouseY >= cy && mouseY <= cy + 40)
    {
      overB = true;
      fill(255);
      rect(cx, cy, 100, 40);
      text("D:", cx + 105, cy + 25);
      text(d3, cx + 125, cy + 25);
      text("T:", cx + 185, cy + 25);
      text(t2, cx + 205, cy + 25);
      fill(0);
    }
    else
    {
      overB = false;
      fill(0);
      rect(cx, cy, 100, 40);
      fill(255);
    }
    textSize(20);
    text("Level3", cx + 20, cy + 25);
  }
  
  void mousePressed()
  {
    if(mousePressed)
    {
      if(overB)
      {
        lvl = 2;
        lvlscreen = 1;
        levelc.x = width/2-15;
        levelc.y = 0;
        player.pos.x = width/2;
        player.pos.y = height - 30;
      }
    }
  }
}