//your variable declarations here
boolean wPressed = false;
boolean aPressed = false;
boolean dPressed = false;

Spaceship thousandSunny;
Star []spaceSky = new Star[200];
ArrayList <Asteriod> asteriodsList = new ArrayList <Asteriod>();

ArrayList <Bullet> bulletList = new ArrayList <Bullet>();
public void setup() 
{
  size(600,600);
  background(0);
  
  //Asteriod ArrayList
  for ( int i = 0 ; i < 20; i++){
    Asteriod rock = new Asteriod();
    asteriodsList.add(rock); 
  } 
  
  thousandSunny = new Spaceship(width/2,height/2);
  
  
  //spaceSky stars list
  for ( int i = 0; i < spaceSky.length; i++){
  spaceSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  
  //Show Asteriods
  for ( int i = asteriodsList.size()-1; i >= 0; i--){
  asteriodsList.get(i).move();
  asteriodsList.get(i).show();
  float d = dist((float)thousandSunny.getX(), (float)thousandSunny.getY(), (float)asteriodsList.get(i).getX(), (float)asteriodsList.get(i).getY());
  if (d <50){
    asteriodsList.remove(i);
    asteriodsList.add( new Asteriod());
  } 
  }
  
  //Show SpaceSky 
  for (int i = 0; i < spaceSky.length; i++){
  spaceSky[i].show();
  }
  
  
  //Show Ship
  if (wPressed == true){
    thousandSunny.accelerate(.5);
  }
  if (dPressed == true){
    thousandSunny.turn(5);
  }
  if (aPressed == true){
    thousandSunny.turn(-5);
  }
  thousandSunny.move();
  thousandSunny.show();
  
  //Show Bullets
   if (mousePressed && (mouseButton == LEFT)){
    bulletList.add(new Bullet(thousandSunny));
  }
  
  for ( int i = bulletList.size()-1; i >= 0; i --){
    if (bulletList.get(i).getX() > 599 || bulletList.get(i).getY() > 599){
    bulletList.remove(i);
    }
    else {
       bulletList.get(i).accelerate(6.0);
       bulletList.get(i).move();
       bulletList.get(i).show();
       
  for ( int j = asteriodsList.size()-1; j >= 0; j --){
    float d = dist ((float)bulletList.get(i).getX(), (float)bulletList.get(i).getY(),(float)asteriodsList.get(j).getX(),(float)asteriodsList.get(j).getY());
      if (d < 25){
        asteriodsList.remove(j);    
        bulletList.remove(i);
        asteriodsList.add(new Asteriod());
        break;
      }
      }
    }
   
  }
}


public void keyPressed(){
  if ( key == 'w'){
    wPressed = true;
  }  
  if ( key == 'a'){
    aPressed = true;
  }
  if ( key == 'd'){
    dPressed = true; 
  }
  if ( key == ' '){
  thousandSunny.hyperSpace();  
  }
}

public void keyReleased(){
  if ( key == 'w'){
    wPressed = false;
  }  
  if ( key == 'a'){
    aPressed = false;
  }
  if ( key == 'd'){
    dPressed = false; 
  }
}
