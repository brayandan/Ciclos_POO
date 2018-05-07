class Grafo {
  Table tabladejuego, tabladejuego1;
  int tnodo, tgrafo=0, pruebamouse;
  ArrayList<PVector> linea1 = new ArrayList<PVector>();
  ArrayList<PVector> linea2 = new ArrayList<PVector>();
  Nodo[] nodo;
  Linea[] linea;



  Grafo(Table a, Table b) {
    setTamanotablas(a);
    setTabladeljuego(a);
    setTamanografo(b);
    igualartablas(a);
    nodo = new Nodo[tnodo];
    for (int i = 0; i < tnodo; i++) {
      TableRow row=tabladejuego.getRow(i);
      nodo[i]=new Circulo(new PVector(row.getInt(0), row.getInt(1)), nodot);
    }
    linea= new Linea[tgrafo];
    int tlinea=0;
    for (int i = 0; i < b.getRowCount(); i++) {
      for (int j = i; j < b.getColumnCount(); j++) {
        if (b.getInt(i, j) == 1 && b.getInt(j, i) == 1) {
          linea[tlinea]=new Normal(nodo[i].posicion, nodo[j].posicion);
          tlinea++;
        }
        if ((b.getInt(i, j) == 0 && b.getInt(j, i) == 1) || (b.getInt(i, j) == 1 && b.getInt(j, i) == 0)) {
          linea[tlinea]=new Unidireccional(nodo[i].posicion, nodo[j].posicion);
          tlinea++;
        }
        if (b.getInt(i, j) == 2 && b.getInt(j, i) == 2) {
          linea[tlinea]=new Doble(nodo[i].posicion, nodo[j].posicion);
          tlinea++;
        }
      }
    }
  }

  void igualartablas(Table bb) {
    //for (int i = 0; i < bb.getRowCount(); i++) {
    //  for (int j = 0; j < bb.getColumnCount(); j++) {
    //    tabladejuego1.setInt(i, j, bb.getInt(i, j));
    //  }
    //}
    tabladejuego1=bb;
  }
  void setTabladeljuego(Table aa) {
    tabladejuego=aa;
  }

  void setTamanografo(Table aa) {
    for (int i = 0; i < aa.getRowCount(); i++) {
      for (int j = i; j < aa.getColumnCount(); j++) {
        if (aa.getInt(i, j) != 0) {
          tgrafo++;
        }
      }
    }
  }
  void setTamanotablas(Table aa) {
    tnodo=aa.getRowCount();
  }
  Table tabladejuego() {
    return tabladejuego;
  }



  void mouse1() {
    for (int i=0; i<tnodo; i++) {
      if (mouseX<=(nodo[i].posicion.x+nodot) && mouseX>=(nodo[i].posicion.x-nodot) && mouseY<=(nodo[i].posicion.y+nodot) && mouseY>=(nodo[i].posicion.y-nodot)) {
        switch(pruebamouse) {
        case 0:
          if (control==true) {
            puntoin = nodo[i].posicion;
            nodoin=i;
          }
          P=false;
          break;
        case 1:
          pruebamouse=0;
          break;
        }
      }
    }
  }

  void mouse2() {
    for (int i=0; i<tnodo; i++) {
      if (mouseX<=(nodo[i].posicion.x+nodot) && mouseX>=(nodo[i].posicion.x-nodot) && mouseY<=(nodo[i].posicion.y+nodot) && mouseY>=(nodo[i].posicion.y-nodot)) {
        PVector puntoprueba;
        puntoprueba =nodo[i].posicion;
        if ( puntoin != null&& puntofi != null) {
          if (puntoin.x!=puntoprueba.x || puntoin.y!=puntoprueba.y) {
            puntofi = nodo[i].posicion;
            nodofi=i;
            Q=false;
            P=true;
            pruebamouse=0;
          }
          if (puntoin.x==puntoprueba.x && puntoin.y==puntoprueba.y) {
            P=true;
            pruebamouse=1;
          }
        }
      }
    }
  }

  void jugar1() {
    for (int i=0; i<linea.length; i++) {
      if (puntoin==linea[i].puntoinicial && puntofi==linea[i].puntofinal) {
        if (!Q && tabladejuego.getInt(nodoin, nodofi)!= 0) {
          line(puntoin.x, puntoin.y, puntofi.x, puntofi.y);
          linea1.add(puntoin);
          linea1.add(puntofi);
          tabladejuego.setInt(nodoin, nodofi, 0);
          tabladejuego.setInt(nodofi, nodoin, 0);
          control=false;
          if (linea1.size()>1) {         
            puntoin = puntofi;
          }
        }
      }
    }
  }

  void display() {
    pushStyle();
    strokeWeight(8);
    stroke(255, 255, 0);
    strokeWeight(3);  
    for (int i = 0; i < linea.length; i++)
      linea[i].display();
    for (int i = 0; i < nodo.length; i++)
      nodo[i].display();  
    popStyle();
    pushStyle();
    stroke(255, 0, 0);
    strokeWeight(10);
    fill(0);
    for (int i = 0; i<linea1.size()-1; i++) {
      line(linea1.get(i).x, linea1.get(i).y, linea1.get(i+1).x, linea1.get(i+1).y);
    }

    println(puntoin, puntofi);
    println(pruebamouse);
    popStyle();
  }
}
