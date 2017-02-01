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
      pos.y = pos.y - 1.5;
    }
    if (checkKey('s'))
    {
      pos.y = pos.y + 1.5;
    }
    if (checkKey('a'))
    {
      pos.x = pos.x - 1.5;
    }
    if (checkKey('d'))
    {
      pos.x = pos.x + 1.5;
    }
  }
  
}