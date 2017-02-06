float ps = 2; //Player speed
int death; //Counter for deaths
float l = 0; //To change level
float k = 0; //Used to unlock LevelComplete for lvl1
float k1 = 0; //Used to unlock LevelComplete for lvl2
float k2 = 0; //Used to unlock LevelComplete for lvl3
float r = 0;//Used to place the keys back if player hits block for level 1
float r1 = 0;//Used to place the keys back if player hits block for level 2 
float r2 = 0; //Used to place the keys back if player hits block for level 3
float lvl = 0;//Used to change level
float lvlscreen = 0; //Used to show levelscreen

void setup()
{
  size(500, 500);
  player = new Player(width / 2, height - 30);
  levelscreen = new Levelscreen(width/2 - 40, 40);
  level1 = new Level1(0.0f, 40.0f);
  level2 = new Level2(0.0f, 40.0f);
  level3 = new Level3(width/2 - 15, height/2 - 20);
  levelc = new LevelComplete(width/2-15, 0);
  key1 = new Key(20, height/2 + 30);
  key2 = new Key(width/2 - 40, height/2 - 5);
  key3 = new Key(width/2 + 40, height/2 - 5);
  key4 = new Key(width/2 - 40, height/2 + 10);
  death1 = new Death(0, 20);
  smooth();
}

Player player;
Levelscreen levelscreen;
Level1 level1;
Level2 level2;
Level3 level3;
LevelComplete levelc;
Key key1;
Key key2;
Key key3;
Key key4;
Death death1;
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
  if(lvlscreen == 0)
  {
    levelscreen.create();
  }
  else
  {
    death1.create();
    player.update();
    player.render();
    if(lvl == 0)//To stop level1 when levelcomplete box is hit
    {
      level1.create();
      key1.create();
    }
    if(lvl == 1)
    {
      level2.create();
      key4.create();
    }
    if(lvl == 2)
    {
      level3.create();
      key2.create();
      key3.create();
    }
    levelc.create();
    println(death);
  }
  
  
    //Key1 collision
    if(key1.x >= player.pos.x - 15 && key1.x <= player.pos.x + 15 && key1.y >= player.pos.y && key1.y <= player.pos.y + 30)
    {
      k = 1;
      key1.x = -15;
      r = 0;
    }
    
    //Key2 collision
    if(key2.x >= player.pos.x - 15 && key2.x <= player.pos.x + 15 && key2.y >= player.pos.y && key2.y <= player.pos.y + 30)
    {
      k2++;
      key2.x = -100;
      r2 = 0;
    }
    
    //Key3 collision
    if(key3.x >= player.pos.x - 15 && key3.x <= player.pos.x + 15 && key3.y >= player.pos.y && key3.y <= player.pos.y + 30)
    {
      k2++;
      key3.x = -100;
      r2 = 0;
    }
    
    //Key 4 collision
    if(key4.x >= player.pos.x - 15 && key4.x <= player.pos.x + 15 && key4.y >= player.pos.y && key4.y <= player.pos.y + 30)
    {
      k1++;
      key4.x = -100;
      r1 = 0;
    }
    
   
    if(r==1)
    {
      key1.x = 20;
      key1.y = height/2 + 30;
      k = 0;
    }
    
     if(r1==1)
    {
      key4.x = width/2 - 40;
      key4.y = height/2 + 10;
      k1 = 0;
    }
    
    //Used for when player is killed, key2 goes back to spawn location
    if(r2==1)
    {
      key2.x = width/2 - 40;
      key2.y = height/2 - 5;
      key3.x = width/2 + 40;
      key3.y = height/2 - 5;
      k2 = 0;
    }
    
    if(lvl == 0)
    {
      //Used to make sure the player grabs the yellow ball
      if(k == 1)
      {
        //LevelComplete hit box for level1
        if(player.pos.x - level1.boxwidth/2 >= levelc.x && player.pos.x - level1.boxwidth/2 <= levelc.x + level1.boxwidth && player.pos.y >=levelc.y && player.pos.y <= levelc.y + level1.boxwidth || player.pos.x + level1.boxwidth/2 >= levelc.x && player.pos.x + level1.boxwidth/2 <= levelc.x + level1.boxwidth && player.pos.y >=levelc.y && player.pos.y <= levelc.y + level1.boxwidth )
        {
           lvl++;
           background(0);
           player.pos.x = width/2;
           player.pos.y = height - 30;
        }
      }
    }
    
    if(lvl == 1)
    {
      ////Used to make sure the player grabs the yellow ball
      if(k1 == 1)
      {
        //LevelComplete hit box for level2
        if(player.pos.x - level1.boxwidth/2 >= levelc.x && player.pos.x - level1.boxwidth/2 <= levelc.x + level1.boxwidth && player.pos.y >=levelc.y && player.pos.y <= levelc.y + level1.boxwidth || player.pos.x + level1.boxwidth/2 >= levelc.x && player.pos.x + level1.boxwidth/2 <= levelc.x + level1.boxwidth && player.pos.y >=levelc.y && player.pos.y <= levelc.y + level1.boxwidth )
        {
           lvl++;
           background(0);
           player.pos.x = width/2;
           player.pos.y = height - 30;
        }
      }
    }
    
    if(lvl == 2)
    {
      ////Used to make sure the player grabs the yellow ball
      if(k2 == 2)
      {
        //LevelComplete hit box for level3
        if(player.pos.x - level1.boxwidth/2 >= levelc.x && player.pos.x - level1.boxwidth/2 <= levelc.x + level1.boxwidth && player.pos.y >=levelc.y && player.pos.y <= levelc.y + level1.boxwidth || player.pos.x + level1.boxwidth/2 >= levelc.x && player.pos.x + level1.boxwidth/2 <= levelc.x + level1.boxwidth && player.pos.y >=levelc.y && player.pos.y <= levelc.y + level1.boxwidth )
        {
           lvl++;
           background(0);
           player.pos.x = width/2;
           player.pos.y = height - 30;
        }
      }
    }
      
   //Level 1 hit boxs 
   if(lvl == 0)
   {
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
   
   
   //Level2 hit boxs
   if(lvl == 1)
   {
    for(int i = 5; i < 510 ; i+= level2.boxwidth + 36)
    {
       if(player.pos.x - 15 >= i && player.pos.x - 15 <= i + 30 && player.pos.y >= level2.y && player.pos.y <= level2.y + 15 || player.pos.x + 15 >= i && player.pos.x + 15 <= i + 30 && player.pos.y >= level2.y && player.pos.y <= level2.y + 15)
      {
        println("HIT");
        player.pos.x = width/2;
        player.pos.y = height - 30;
        death++;
        r = 1;
      }
    
       if(player.pos.x - 15 >= i && player.pos.x - 15 <= i + 30 && player.pos.y + 30 >= level2.y + 12 && player.pos.y + 30 <= level2.y + 30 || player.pos.x + 15 >= i && player.pos.x + 15 <= i + 30 && player.pos.y + 30 >= level2.y + 12 && player.pos.y + 30 <= level2.y + 30)
      {
        println("HIT2");
        player.pos.x = width/2;
        player.pos.y = height - 30;
        death++;
        r = 1;
      }
    }
    
    for(int i = 38; i < 510 ; i+= level2.boxwidth + 36)
    {
        if(player.pos.x - 15 >= i && player.pos.x - 15 <= i + 30 && player.pos.y >= level2.y1 && player.pos.y <= level2.y1 || player.pos.x + 15 >= i && player.pos.x + 15 <= i + 30 && player.pos.y >= level2.y1 && player.pos.y <= level2.y1)
      {
        println("HIT");
        player.pos.x = width/2;
        player.pos.y = height - 30;
        death++;
        r = 1;
      }
    
       if(player.pos.x - 15 >= i && player.pos.x - 15 <= i + 30 && player.pos.y + 30 >= level2.y1 + 12 && player.pos.y + 30 <= level2.y1 + 30 || player.pos.x + 15 >= i && player.pos.x + 15 <= i + 30 && player.pos.y + 30 >= level2.y1 + 12 && player.pos.y + 30 <= level2.y1 + 30)
      {
        println("HIT2");
        player.pos.x = width/2;
        player.pos.y = height - 30;
        death++;
        r = 1;
      }
    }
   }
   
   //Level 3 hit boxs 
   if(lvl == 2)
   {
     for(int i = 40 ; i < 440 ; i+=40)
     {
        level3.x1 = level3.cx + sin(level3.theta) * (level3.radius - i);
        level3.y1 = level3.cy - cos(level3.theta) * (level3.radius - i);
       if(player.pos.x - 15 >= level3.x1 && player.pos.x - 15 <= level3.x1 + 30 && player.pos.y >= level3.y1 && player.pos.y <= level3.y1 + 30 || player.pos.x + 15 >= level3.x1 && player.pos.x + 15 <= level3.x1 + 30 && player.pos.y >= level3.y1 && player.pos.y <= level3.y1 + 30)
      {
        println("HIT");
        player.pos.x = width/2;
        player.pos.y = height - 30;
        death++;
        r2 = 1;
      }
    
       if(player.pos.x - 15 >= level3.x1 && player.pos.x - 15 <= level3.x1 + 30 && player.pos.y + 30 >= level3.y1 && player.pos.y + 30 <= level3.y1 || player.pos.x + 15 >= level3.x1 && player.pos.x + 15 <= level3.x1 + 30 && player.pos.y + 30 >= level3.y1 && player.pos.y + 30 <= level3.y1)
      {
        println("HIT2");
        player.pos.x = width/2;
        player.pos.y = height - 30;
        death++;
        r2 = 1;
      }
      
        level3.x2 = level3.cx + sin(level3.theta1) * (level3.radius - i);
        level3.y2 = level3.cy - cos(level3.theta1) * (level3.radius - i);
       if(player.pos.x - 15 >= level3.x2 && player.pos.x - 15 <= level3.x2 + 30 && player.pos.y >= level3.y2 && player.pos.y <= level3.y2 + 30 || player.pos.x + 15 >= level3.x2 && player.pos.x + 15 <= level3.x2 + 30 && player.pos.y >= level3.y2 && player.pos.y <= level3.y2 + 30)
      {
        println("HIT");
        player.pos.x = width/2;
        player.pos.y = height - 30;
        death++;
        r2 = 1;
      }
    
       if(player.pos.x - 15 >= level3.x2 && player.pos.x - 15 <= level3.x2 + 30 && player.pos.y + 30 >= level3.y2 && player.pos.y + 30 <= level3.y2 || player.pos.x + 15 >= level3.x2 && player.pos.x + 15 <= level3.x2 + 30 && player.pos.y + 30 >= level3.y2 && player.pos.y + 30 <= level3.y2)
      {
        println("HIT2");
        player.pos.x = width/2;
        player.pos.y = height - 30;
        death++;
        r2 = 1;
      }
   }
 }
}