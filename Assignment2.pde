float ps = 1.5;// Player speed
float death;
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
  println(death);
   //Level 1 hit boxs 
   for(int i = 30; i < 400 ; i+= 30 + 36)
   {
     if(player.pos.x - 15 >= level1.x && player.pos.x - 15 <= level1.x + 30 && player.pos.y >= i + 5 && player.pos.y <= i + 30 + 8 || player.pos.x + 15 >= level1.x && player.pos.x + 15 <= level1.x + 30 && player.pos.y >= i && player.pos.y <= i + 30 + 8)
    {
      println("HIT");
      player.pos.x = width/2;
      player.pos.y = height - 30;
      death++;
    }
    
     if(player.pos.x - 15 >= level1.x && player.pos.x - 15 <= level1.x + 30 && player.pos.y + 30 >= i + 12 && player.pos.y + 30 <= i + 30 || player.pos.x + 15 >= level1.x && player.pos.x + 15 <= level1.x + 30 && player.pos.y + 30 >= i + 12 && player.pos.y + 30 <= i + 30)
    {
      println("HIT2");
      player.pos.x = width/2;
      player.pos.y = height - 30;
      death++;
    }
   }
}