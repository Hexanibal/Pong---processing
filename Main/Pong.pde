class Pong {
  
  public Pad[] pads;
  Ball ball;
  
  public Pong() {
    pads = new Pad[2];
    pads[0] = new Pad(25, 50);
    pads[1] = new Pad(width - 50, 50);
    ball = new Ball();
  }
  
  public void update() {
     pads[0].update();
     pads[1].update();
    
     ball.update();
  }
  
  public void death(Pad p) {
    p.addPoint();
    ball = new Ball();
  }
  
  public void display() {
    pads[0].display();
    pads[1].display();
    ball.display();
  }
  
}