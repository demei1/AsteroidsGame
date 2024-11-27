class Spaceship extends Floater  
{   
    //your code here
    
    public Spaceship(double x, double y){
    myColor = color(255);
    myCenterX = x;
    myCenterY = y;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    corners = 41;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = 0;
    yCorners[0] = 30;
    xCorners[1] = 25;
    yCorners[1] = 20;
    xCorners[2] = 35;
    yCorners[2] = 15;
    xCorners[3] = 40;
    yCorners[3] = 15;
    xCorners[4] = 40;
    yCorners[4] = 17;
    xCorners[5] = 50;
    yCorners[5] = 17;
    xCorners[6] = 50;
    yCorners[6] = -17;
    xCorners[7] = 40;
    yCorners[7] = -17;
    xCorners[8] = 40;
    yCorners[8] = -15;
    xCorners[9] = 35;
    yCorners[9] = -15;
    xCorners[10] = 35;
    yCorners[10] = -20;
    xCorners[11] = 45;
    yCorners[11] = -20;
    xCorners[12] = 45;
    yCorners[12] = -25;
    xCorners[13] = 40;
    yCorners[13] = -25;
    xCorners[14] = 40;
    yCorners[14] = -30;
    xCorners[15] = 45;
    yCorners[15] = -30;
    xCorners[16] = 43;
    yCorners[16] = -37;
    xCorners[17] = 40;
    yCorners[17] = -37;
    xCorners[18] = 25;
    yCorners[18] = -30;
    xCorners[19] = 30;
    yCorners[19] = -30;
    xCorners[20] = 30;
    yCorners[20] = -25;
    xCorners[21] = 25;
    yCorners[21] = -25;
    xCorners[22] = 25;
    yCorners[22] = -20;
    xCorners[23] = 30;
    yCorners[23] = -20;
    xCorners[24] = 30;
    yCorners[24] = -15;
    xCorners[25] = 15;
    yCorners[25] = -15;
    xCorners[26] = 15;
    yCorners[26] = -5;
    xCorners[27] = 8;
    yCorners[27] = -5;
    xCorners[28] = 5;
    yCorners[28] = 5;
    xCorners[29] = 0;
    yCorners[29] = 5;
    xCorners[30] = -5;
    yCorners[30] = 5;
    xCorners[31] = -10;
    yCorners[31] = -15;
    xCorners[32] = -35;
    yCorners[32] = -15;
    xCorners[33] = -40;
    yCorners[33] = -13;
    xCorners[34] = -45;
    yCorners[34] = -5;
    xCorners[35] = -50;
    yCorners[35] = -3;
    xCorners[36] = -50;
    yCorners[36] = 3;
    xCorners[37] = -45;
    yCorners[37] = 5;
    xCorners[38] = -40;
    yCorners[38] = 15;
    xCorners[39] = -35;
    yCorners[39] = 15;
    xCorners[40] = -25;
    yCorners[40] = 20;
    
    }
    public void hyperSpace(){
    myCenterX = width/2;
    myCenterY = height/2;
    myXspeed = 0;
    myYspeed = 0;
    }
    
    public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    //flag poles
    line(25,-15, 25, -50);
    line(0,5, 0, -50);
    //flag
    beginShape(TRIANGLES);
    vertex(25, -50);
    vertex(20,-40);
    vertex(27, -37);
    endShape();
    beginShape(TRIANGLES);
    vertex(0,-50);
    vertex(-8, -25);
    vertex(8, -20);
    endShape();
    
    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
    
  }  
}
