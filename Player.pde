class Player
{
  PVector pos;//Position of the center of the top of the player
  
  PShape shape;
  
  Player(float x, float y)
  {
    pos = new PVector(x, y);
    
    create();
    
  }
  
  void create()
  {
    shape = createShape();
    shape.beginShape();
    shape.noStroke();
    shape.fill(0, 100, 100);
    shape.strokeWeight(5);
    shape.vertex(15, 0);
    shape.vertex(15, 30);
    shape.vertex(-15, 30);
    shape.vertex(-15, 0);
    shape.vertex(0, 0);
    shape.endShape(CLOSE);
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);  
    shape(shape, 0, 0);
    popMatrix();
  }
  
  void update()
  {
    if (checkKey('w'))
    {
      pos.y = pos.y - ps;
    }
    if (checkKey('s'))
    {
      pos.y = pos.y + ps;
    }
    if (checkKey('a'))
    {
      pos.x = pos.x - ps;
    }
    if (checkKey('d'))
    {
      pos.x = pos.x + ps;
    }
    
    //Code to keep the player from going off screen
    if(player.pos.x + 15 >= width)
    {
      pos.x = width - 15;
    }
    
    if(player.pos.x - 15 <= 0)
    {
      pos.x = 15;
    }
    
     if(player.pos.y <= 30 && player.pos.x >= 0 && player.pos.x <= 235 || player.pos.y <= 30 && player.pos.x >= 265 && player.pos.x <= 500 )
    {
      pos.y = 30;
    }
    
    if(player.pos.y + 30 >= height - 30 && player.pos.x >= 0 && player.pos.x <= 235 || player.pos.y + 30 >=  height - 30 && player.pos.x >= 265 && player.pos.x <= 500)
    {
      pos.y = height - 60;
    }
  }
  
}