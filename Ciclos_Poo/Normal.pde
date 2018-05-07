class Normal extends Linea{
      Normal(PVector a, PVector b) {
      super(a,b);
  }
  @Override
    void display() {
    pushStyle();
    strokeWeight(8);
    stroke(208, 206, 212);
    fill(0, 0, 0);
    //if (pick(mouseX, mouseY) && mousePressed) {
    //  stroke(0, 0, 255);
    //  fill(0, 0, 0);
    //  this.seleccion = true;
    //}
    line(puntoinicial.x, puntoinicial.y, puntofinal.x, puntofinal.y);    
    popStyle();
  }
}
