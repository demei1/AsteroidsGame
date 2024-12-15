class Asteriod extends Floater{
  private double rotSpeed;
  public Asteriod(){
  corners = 8;   
  xCorners = new int[corners];   
  yCorners = new int [corners];   
  xCorners[0]= 15;
  yCorners[0]= 0;
  xCorners[1]= 10;
  yCorners[1]= 13;
  xCorners[2]= 0;
  yCorners[2]= 15;
  xCorners[3]= -16;
  yCorners[3]= 10;
  xCorners[4]= -15;
  yCorners[4]= 0;
  xCorners[5]= -8;
  yCorners[5]= -12;
  xCorners[6]= 0;
  yCorners[6]= -15;
  xCorners[7]= 13;
  yCorners[7]= -13;

  myColor = color(#716252);   
  myCenterX = (int)(Math.random()*600);
  myCenterY = (int)(Math.random()*600); //holds center coordinates   
  myXspeed = .5; 
  myYspeed = .5; //holds the speed of travel in the x and y directions   
  myPointDirection = (int)(Math.random()*360); //holds current direction the ship is pointing in degrees    
  rotSpeed = (int)(Math.random()*6)-2; 
}
 
 
   public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    turn((float)rotSpeed);
    super.move();
  }   
  
  public double getX (){
    return myCenterX;
    }
    
  public double getY (){
    return myCenterY;
  }

}
