ArrayList<Ball> balls;

void setup(){
  size(700,700);
 
  balls = new ArrayList<Ball>(20);
  for (int i = 0; i < 20; i++) {
    balls.add(new Ball((int)random(40) + 20));    
  }
}

void draw() {
  background(0);
  ArrayList<Ball> explodes = new ArrayList<Ball>();
  for(Ball b : balls) {
    if(b.state > 0) { explodes.add(b); }
  }
  for(int i = 0; i < balls.size(); i++) {
   balls.get(i).frame(explodes);// make big!
  }
}

void mousePressed() {
  balls.add(new Ball(mouseX, mouseY));
}