class Bullet extends Floater{
  public Bullet(Spaceship theShip){
  myCenterX = theShip.getX();
  myCenterY = theShip.getY();
  myPointDirection = theShip.getMyPointDirection();
  
  
  }

  
  public double getX(){
  return myCenterX;
  }
  public double getY(){
  return myCenterY;
  }
  
  public void show(){
    ellipse ((float) myCenterX, (float) myCenterY, 10, 10);
  }
  public void move(){
  myXspeed = -myXspeed;
  myYspeed = -myYspeed;
    super.move();
}
}
