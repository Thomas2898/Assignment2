float ps = 1.5;// Player speed
void setup()
{
  size(500, 500);
  player = new Player(width / 2, height - 30);
  level1 = new Level1(0.0f, 40.0f);
}

Player player;
Level1 level1;
boolean[] keys = new boolean[1000];

void keyPressed()
{ 
  keys[keyCode] = true;
}
 
void keyReleased()
{
  keys[keyCode] = false; 
}

boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];  
  }
  return false;
}

void draw()
{
  background(0);
  stroke(255);
  player.update();
  player.render();
  level1.create();
}