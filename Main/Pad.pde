class Pad {
 
  PVector loc;
  PVector velocity;
  int len;
  int points;
  
  public Pad(int x, int y) {
      this.loc = new PVector(x, y);
      this.velocity = new PVector(0, 0);
      len = 150;
      points = 0;
  }
  
  public void update(){
    if(loc.y + velocity.y + len > height || loc.y + velocity.y < 0)  return;
    
    loc.add(velocity);
  }
  
  public void display() {
     fill(255);
     rect(loc.x, loc.y, 25, len);
  }
  
  public void setVelocity(PVector v) {
     velocity = v; 
  }
  
  public void setVelocity(int x, int y) {
     velocity = new PVector(x, y); 
  }
  
  public void addPoint() {
    points++;
    if(len >= 40) len -= 20;
  }
}