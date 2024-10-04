Die newDie;
 void setup()
  {
    size(500,500);
      noLoop();
  }
  void draw()
  {
    background(#B4B4B4);
    int sum = 0;
    int rSum = 0;
    int bSum = 0;
    boolean onRed = true;
      int x = 50;
      int y;
      for(int h = 1; h <= 2; h++){
      for(int g = 1; g <= 2; g++){
        y = 20;
      for(int i = 1; i <= 5; i++){
       newDie = new Die(x,y);
       newDie.roll();
      newDie.show();
      y+=70;
      sum = newDie.num+sum;
      if(onRed)
      rSum = rSum+newDie.num;
      else
      bSum = bSum+newDie.num;
    }
    x+=70;
      } 
      x+=135;
      onRed = false;
      }
      fill(0,0,0);
      textSize(20);
      textAlign(CENTER);
      text("total: "+sum,250,250);
      text(rSum,110,380);
      text(bSum,385,380);
      if(rSum>bSum){
      rect(50,410,120,50,50);
      fill(#FF9D9D);
      text("red wins!",110,442);
      }
      if(bSum>rSum){
      rect(325,410,120,50,50);
      fill(#9DD9FF);
      text("blue wins!",385,442);
      }
  }
  void mousePressed()
  {
      redraw();
  }
  class Die
  {
      int dieX, dieY, num;
      Die(int x, int y)
      {
          dieX = x;
          dieY = y;
      }
      void roll()
      {
       num = (int)((Math.random())*6)+1;
      }
      void show()
      {
        stroke(0,0,0);
        if(dieX<250)
        fill(#FF9D9D);
        else
        fill(#9DD9FF);
        rect(dieX,dieY,50,50,8);
        fill(0,0,0);
        noStroke();
        if(num==1||num==3||num==5)
        ellipse(dieX+25,dieY+25,10,10);
        if(num==2||num==4||num==5||num==6){
          ellipse(dieX+12,dieY+12,10,10);
          ellipse(dieX+38,dieY+38,10,10);
        }
        if(num==3||num==4||num==5||num==6){
          ellipse(dieX+38,dieY+12,10,10);
          ellipse(dieX+12,dieY+38,10,10);
      }
      if(num==6){
        ellipse(dieX+12,dieY+25,10,10);
        ellipse(dieX+38,dieY+25,10,10);
      }
        }
    }
    
