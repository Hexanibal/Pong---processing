class Ball {
 
  PVector loc;
  PVector velocity;
  int xSpeed;
  int ySpeed;
  
  public Ball() {
      xSpeed = 2;
      ySpeed = 2;
      loc = new PVector(width / 2, height / 2);
      do {
      velocity = new PVector(random(-1 * xSpeed, xSpeed), random(-1 * ySpeed, ySpeed));
      } while(!((velocity.x > 1 || velocity.x < -1) && (velocity.y > 0.4 || velocity.y < -0.4)));
}

  public void update() {
      PVector nLoc = loc;
      nLoc.add(velocity);
       
      if(nLoc.x + 25 >= width) {
        Main.p.death(Main.p.pads[0]); 
        return;
      }
      
      if(nLoc.x - 25 <= 0) {
        Main.p.death(Main.p.pads[1]);
        return; 
      }
      
      if(nLoc.x + 25 >= width - 50 && nLoc.y >= Main.p.pads[1].loc.y && nLoc.y <= Main.p.pads[1].loc.y + Main.p.pads[1].len) velocity.x = -1 * xSpeed + random(-0.4, 0.4);
      if(nLoc.x - 25 <= 50 && nLoc.y >= Main.p.pads[0].loc.y && nLoc.y <= Main.p.pads[0].loc.y  + Main.p.pads[0].len) velocity.x = xSpeed + random(-0.4, 0.4);
      
      if(nLoc.y + 25 >= height) velocity.y = -1 * ySpeed + random(-0.4, 0.4);
      if(nLoc.y - 25 <= 0) velocity.y = ySpeed + random(-0.4, 0.4);
       
      loc.add(velocity);
  }
  
  public void display() {
      fill(255);
      ellipse(loc.x, loc.y, 50, 50);
      stroke(200, 0, 0);
      line(loc.x, loc.y, loc.x + velocity.x * 500, loc.y + velocity.y * 500);
  }
  
}