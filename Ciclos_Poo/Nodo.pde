abstract class Nodo {
  PVector posicion;
  int tamano=20;
  boolean seleccion;

  Nodo(PVector p, int s) {
    setPosicion(p);
    setTamano(s);
  }

  abstract void display();

  //abstract boolean pick(int x, int y);

  void setPosicion(PVector pos) {
    posicion = pos;
  }

  void setPosicion(float x, float y) {
    // call original version on the correct type
    setPosicion(new PVector(x, y));
  }

  void setTamano(int s) {
    tamano = s;
  }

  PVector posicion() {
    return posicion;
  }

  float size() {
    return tamano;
  }
}