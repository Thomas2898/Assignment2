float ps = 1.5; //Player speed
float death; //Counter for deaths
float l = 0; //To change level
float k = 0; //Used to unlock LevelComplete
float r = 0;

void setup()
{
  size(500, 500);
  player = new Player(width / 2, height - 30);
  level1 = new Level1(0.0f, 40.0f);
  levelc = new LevelComplete(width/2-15, 0);
  key1 = new Key(20, height/2 + 30);
}

Player player;
Level1 level1;
LevelComplete levelc;
Key key1;
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
  key1.create();
  player.update();
  player.render();
  if(l == 0)//To stop level1 when levelcomplete box is hit
  {
    level1.create();
  }
  levelc.create();
  println(death);
  
  
    //Collision used between player and circle
    if(key1.x >= player.pos.x - 15 && key1.x <= player.pos.x + 15 && key1.y >= player.pos.y && key1.y <= player.pos.y + 30)
    {
      k = 1;
      fill(0);
      key1.x = -15;
      r = 0;
    }
    
    if(r==1)
    {
      key1.x = 20;
      key1.y = height/2 + 30;
      k = 0;
    }
  //Used to make sure the player grabs the yellow ball
    if(k == 1)
    {
      //LevelComplete hit box
      if(player.pos.x - level1.boxwidth/2 >= levelc.x && player.pos.x - level1.boxwidth/2 <= levelc.x + level1.boxwidth && player.pos.y >=levelc.y && player.pos.y <= levelc.y + level1.boxwidth || player.pos.x + level1.boxwidth/2 >= levelc.x && player.pos.x + level1.boxwidth/2 <= levelc.x + level1.boxwidth && player.pos.y >=levelc.y && player.pos.y <= levelc.y + level1.boxwidth )
      {
         l = 1;
         background(0);
         player.pos.x = width/2;
         player.pos.y = height - 30;
      }
    }
      
   //Level 1 hit boxs 
   for(int i = 30; i < 400 ; i+= 30 + 36)
   {
     if(player.pos.x - 15 >= level1.x && player.pos.x - 15 <= level1.x + 30 && player.pos.y >= i + 5 && player.pos.y <= i + 30 + 8 || player.pos.x + 15 >= level1.x && player.pos.x + 15 <= level1.x + 30 && player.pos.y >= i && player.pos.y <= i + 30 + 8)
    {
      println("HIT");
      player.pos.x = width/2;
      player.pos.y = height - 30;
      death++;
      r = 1;
    }
    
     if(player.pos.x - 15 >= level1.x && player.pos.x - 15 <= level1.x + 30 && player.pos.y + 30 >= i + 12 && player.pos.y + 30 <= i + 30 || player.pos.x + 15 >= level1.x && player.pos.x + 15 <= level1.x + 30 && player.pos.y + 30 >= i + 12 && player.pos.y + 30 <= i + 30)
    {
      println("HIT2");
      player.pos.x = width/2;
      player.pos.y = height - 30;
      death++;
      r = 1;
    }
   }
}