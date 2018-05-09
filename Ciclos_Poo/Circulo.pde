class Circulo extends Nodo {
  Circulo(PVector p, int s) {
    super(p, s);
  }
  @Override
    void display() {
    pushStyle();
    strokeWeight(8);
    switch (niveles) {
    case 1:
      stroke(255, 0, 0);
      break;
    case 2:
      stroke(255, 255, 0);
      break;
    case 3:
      stroke(81, 254, 0);
      break;
    case 4:
      stroke(0, 0, 255);
      break;
    case 5:
      stroke(131, 35, 197);
      break;
    case 6:
      stroke(255, 131, 0);
      break;
    case 7:
      stroke(0, 224, 225);
      break;
    case 8:
      stroke(255, 0, 232);
      break;
    }
    fill(0, 0, 0);
    //if (pick(mouseX, mouseY) && mousePressed) {
    //  stroke(0, 0, 255);
    //  fill(0, 0, 0);
    //  this.seleccion = true;
    //}
    ellipse(posicion.x, posicion.y, nodot, nodot);    
    popStyle();
  }
     @Override
      boolean pick(int x, int y) {
      return sqrt(sq(x-posicion().x) + sq(y-posicion().y)) <= nodot/2;
    } 
}