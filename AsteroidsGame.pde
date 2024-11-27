//your variable declarations here
boolean wPressed = false;
boolean aPressed = false;
boolean dPressed = false;
Spaceship thousandSunny;
Star []spaceSky = new Star[200];
public void setup() 
{
  size(600,600);
  background(0);
  thousandSunny = new Spaceship(width/2,height/2);
  //your code here
  for ( int i = 0; i < spaceSky.length; i++){
  spaceSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < spaceSky.length; i++){
  spaceSky[i].show();
  }
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
  //your code here
 
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
