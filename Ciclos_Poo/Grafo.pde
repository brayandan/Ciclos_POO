class Grafo {
  Table tabladejuego;
  int tnodo;
  Nodo[] nodo;


  Grafo(Table a) {
    setTamanotablas(a);
    setTabladeljuego(a);
    nodo = new Nodo[tnodo];
    for (int i = 0; i < tnodo; i++) {
      TableRow row=tabladejuego.getRow(i);
      nodo[i]=new Circulo(new PVector(row.getInt(0), row.getInt(1)),nodot);
    }
  }

  void setTabladeljuego(Table aa) {
    tabladejuego=aa;
  }
  void setTamanotablas(int aa) {
    tnodo=aa;
  }
  void setTamanotablas(Table aa) {
    tnodo=aa.getRowCount();
  }
  Table tabladejuego() {
    return tabladejuego;
  }
//Botón de volver al menú
void home() {
  strokeWeight(2);
  stroke(0, 0, 0);
  fill(41, 74, 255);
  ellipse(760, 40, 35, 35);
  stroke(255, 255, 255);
  fill(255, 255, 255);
  rect(755, 37, 10, 10, 1);
  triangle(753, 37, 767, 37, 760, 31);
  if (mousePressed) {
    if (760-17<=mouseX && mouseX<=760+17 && 40-17<=mouseY && mouseY<=40+17) {
      niveles=0;
    }
  }
}

  void display() {
    pushStyle();
    strokeWeight(8);
    stroke(255, 255, 0);
    //for (int i=0; i<10; i++) {  
    //  for (int j=0; j<10; j++) {
    //    if (graf[i][j]==1) {
    //      stroke(208, 206, 212);
    //      line((int)puntos.get(i).x, (int)puntos.get(i).y, (int)puntos.get(j).x, (int)puntos.get(j).y);
    //    }
    //  }
    //}
    strokeWeight(3);
    for (int i = 0; i < nodo.length; i++)
      nodo[i].display();
    popStyle();
    home();
  }
}