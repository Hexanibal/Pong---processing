
public static Pong p;

void setup() {
  size(900, 500);
  frameRate(100);

  p = new Pong();
  background(40);
}

void draw() {
  background(40);
  p.update();
  p.display();
}

void keyPressed() {
  int ySpeed = 3;

  if (key == 'z') p.pads[0].setVelocity(0, -1 * ySpeed);
  if (key == 's') p.pads[0].setVelocity(0, ySpeed);
  if (keyCode == UP) p.pads[1].setVelocity(0, -1 * ySpeed);
  if (keyCode == DOWN) p.pads[1].setVelocity(0, ySpeed);
}

void keyReleased() {
  if (key == 'z' || key == 's') p.pads[0].setVelocity(0, 0);
  if (keyCode == UP || keyCode == DOWN) p.pads[1].setVelocity(0, 0);
}