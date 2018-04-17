PVector location;
PVector velocity;
int i=0;

void setup() {
  size(800,600);
  smooth();
  background(255);
  location = new PVector(0,0);
  velocity = new PVector(5,5);
}

void draw() {
  background(255);
  noStroke();
  fill(255,10);
  
  location.add(velocity);

  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }

  stroke(0);
  fill(175);
  ellipse(location.x,location.y,16,16);
  velocity.x *=0.9999;
  velocity.y+=0.5;
}
