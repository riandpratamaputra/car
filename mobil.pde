Mover mover;

void setup() {
  size(800,600);
  smooth();
  mover = new Mover();
  
}

void draw() {
  background(255);
  
  mover.pembaharuan();
  mover.pengecekan();
  mover.tampilan();  
  
}