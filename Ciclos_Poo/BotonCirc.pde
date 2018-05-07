class BotonCirc extends Boton {
  boolean tipo;

  BotonCirc(color col, PVector posi, int val, boolean dib) {
    super(col, posi,val);
    setTipo(dib);
  }

  void setTipo(boolean tip) {
    tipo=tip;
  }
  boolean getTipo () {
    return tipo;
  }


  void display() {
    if (tipo) {
      strokeWeight(2);
      stroke(0, 0, 0);
      //fill(41, 74, 255);
      fill(bcolor);
      ellipseMode(CENTER);
      ellipse(posicion.x, posicion.y, 35, 35);
      stroke(255, 255, 255);
      fill(255, 255, 255);
      rect(755, 37, 10, 10, 1);
      triangle(753, 37, 767, 37, 760, 31);
    } else {
      strokeWeight(2);
      stroke(0, 0, 0);
      //fill(41, 74, 255);
      fill(bcolor);
      ellipseMode(CENTER);
      ellipse(posicion.x, posicion.y, 35, 35);
      stroke(255, 255, 255);
      fill(255, 255, 255);
      triangle(699, 41, 702, 44, 705, 41);
      noFill(); 
      strokeWeight(3);
      arc(710, 40, 15, 15, -PI, PI/2);
    }
  }
  
  void asignarValor(){
    if(mousePressed && sqrt(pow(mouseX-posicion.x,2)+pow(mouseY-posicion.y,2))<=(35/2)){
      niveles=valor;
    }
  }
}