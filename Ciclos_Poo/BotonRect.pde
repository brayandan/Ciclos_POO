class BotonRect extends Boton {
  int borde, txtSize;
  PVector dimensiones;
  String  texto;
  boolean tipo;
  color txtColor;

  BotonRect(color col, PVector posi, int val, int bord, int txts, PVector dim, String txt, boolean tip, color txtC) {
    super(col, posi, val);
    setBorde(bord);
    setDimensiones(dim);
    setTexto(txt);
    setTipo(tip);
    setTxtSize(txts);
    setTxtColor(txtC);
  }



  void setTxtColor(color txcolo) {
    txtColor=txcolo;
  }
  color getTxtColor () {
    return txtColor;
  }
  void setBorde(int bord) {
    borde=bord;
  }
  int getBorde () {
    return borde;
  }
  void setTxtSize(int txts) {
    txtSize=txts;
  }
  int getTxtSize () {
    return txtSize;
  }
  void setTipo(boolean tip) {
    tipo=tip;
  }
  boolean getTipo() {
    return tipo;
  }

  void setTexto(String text) {
    texto=text;
  }
  String getTexto () {
    return texto;
  }

  void setDimensiones(PVector dim) {
    dimensiones=dim;
  }
  PVector getDimensiones () {
    return dimensiones;
  }

  void display () {
    pushStyle();
    stroke(0, 0, 0);
    strokeWeight(1);
    fill(bcolor);
    rectMode(CENTER);
    rect(posicion.x, posicion.y, dimensiones.x, dimensiones.y, borde);
    fill(txtColor);

    textSize(txtSize);
    textAlign(CENTER);
    text(texto, posicion.x, posicion.y);
    popStyle();
  }

  void asignarValor() {
    if (mousePressed && mouseX<=posicion.x+(dimensiones.x/2) && mouseX>=posicion.x-(dimensiones.x/2) && mouseY<=posicion.y+(dimensiones.y/2) && mouseY>=posicion.y-(dimensiones.y/2)) {
      if (tipo) {
        niveles=valor;
      } else {
        nodot=valor;
      }
    }
  }
}
