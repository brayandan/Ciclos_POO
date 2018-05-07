class Circulo extends Nodo {
    Circulo(PVector p, int s) {
      super(p,s);
  }
  @Override
    void display() {
    pushStyle();
    strokeWeight(8);
    stroke(255, 0, 0);
    fill(0, 0, 0);
    //if (pick(mouseX, mouseY) && mousePressed) {
    //  stroke(0, 0, 255);
    //  fill(0, 0, 0);
    //  this.seleccion = true;
    //}
    ellipse(posicion.x, posicion.y, nodot, nodot);    
    popStyle();
  }

  //@Override
  //  boolean pick(int x, int y) {
  //  return sqrt(sq(x-posicion().x) + sq(y-posicion().y)) <= size()/2;
  //}
}
