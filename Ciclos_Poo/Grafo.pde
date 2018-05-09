class Grafo {
  Table tabladejuego, tabladejuego1, tabladelgrafo, tabladelgrafo1;
  int tnodo, tgrafo=0, indicador;
  Nodo[] nodo;
  Linea[] linea;



  Grafo(Table a, Table b, Table c, int d) {
    setTamanotablas(a);
    setTabladeljuego(a);
    setTamanografo(b);
    setTabladelgrafo(b);
    setTabladelgrafo1(c, b);
    igualartablas(a);
    setIndicador(d);
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
          linea[tlinea]=new Doble(nodo[j].posicion, nodo[i].posicion);
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

  void setTabladelgrafo(Table a) {
    tabladelgrafo=a;
  }

  void setTabladelgrafo1(Table aa, Table ab) {
    for (int i = 0; i < aa.getRowCount(); i++) {
      for (int j = 0; j < aa.getColumnCount(); j++) {
        aa.setInt(i, j, ab.getInt(i, j));
        saveTable(aa, "data/"+Indicador[indicador]);
      }
    }
    tabladelgrafo1=aa;
  }

  void setTamanografo(Table aa) {
    for (int i = 0; i < aa.getRowCount(); i++) {
      for (int j = i; j < aa.getColumnCount(); j++) {
        if (aa.getInt(i, j) > 0) {
          tgrafo=tgrafo+aa.getInt(i, j);
          ;
        }
      }
    }
  }

  void setIndicador(int a) {
    indicador=a;
  }

  int indicador() {
    return indicador;
  }
  void setTamanotablas(Table aa) {
    tnodo=aa.getRowCount();
  }
  Table tabladejuego() {
    return tabladejuego;
  }
  int tgrafo() {
    return tgrafo;
  }
  void mouse1 () {
    for (int i=0; i<tnodo; i++) {
      //if (mouseX<=(nodo[i].posicion.x+nodot) && mouseX>=(nodo[i].posicion.x-nodot) && mouseY<=(nodo[i].posicion.y+nodot) && mouseY>=(nodo[i].posicion.y-nodot)) {
      if (nodo[i].pick(mouseX, mouseY)) {
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

  void mouse2 () {

    for (int i=0; i<tnodo; i++) {
      //if (mouseX<=(nodo[i].posicion.x+nodot) && mouseX>=(nodo[i].posicion.x-nodot) && mouseY<=(nodo[i].posicion.y+nodot) && mouseY>=(nodo[i].posicion.y-nodot)) {
      if (nodo[i].pick(mouseX, mouseY)) {
        puntoprueba =nodo[i].posicion;
        if ( puntoin != null&& puntoprueba != null) {
          if (puntoin.x!=puntoprueba.x || puntoin.y!=puntoprueba.y) {
            puntofi = nodo[i].posicion();
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
      if (((puntoin==linea[i].puntoinicial() && puntofi==linea[i].puntofinal())||(puntofi==linea[i].puntoinicial() && puntoin==linea[i].puntofinal()))&& nodoin>=0 && nodofi>=0) {
        if (!Q && tabladelgrafo1.getInt(nodoin, nodofi)==1) {
          PVector prueba = puntoin;
          PVector prueba2 = puntofi;
          for (int k=0; k<linea2.size()-1; k++) {
            if (linea2.indexOf(prueba)!=-1 && linea2.indexOf(prueba2)!=-1 ) {
              linea2.remove(prueba);
              linea2.remove(prueba2);
            }
          }
          line(puntoin.x, puntoin.y, puntofi.x, puntofi.y);
          linea1.add(puntoin);
          linea1.add(puntofi);
          tabladelgrafo1.setInt(nodofi, nodoin, tabladelgrafo1.getInt(nodoin, nodofi)-1);
          tabladelgrafo1.setInt(nodoin, nodofi, tabladelgrafo1.getInt(nodoin, nodofi)-1);
          control=false;
          if (linea1.size()>1) {         
            puntoin = puntofi;
            nodoin=nodofi;
          }
        }
        if (!Q && tabladelgrafo1.getInt(nodoin, nodofi)== 2) {
          line(puntoin.x, puntoin.y, puntofi.x, puntofi.y);
          linea2.add(puntoin);
          linea2.add(puntofi);
          linea1.add(puntoin);
          linea1.add(puntofi);
          tabladelgrafo1.setInt(nodofi, nodoin, tabladelgrafo1.getInt(nodoin, nodofi)-1);
          tabladelgrafo1.setInt(nodoin, nodofi, tabladelgrafo1.getInt(nodoin, nodofi)-1);
          control=false;
          if (linea1.size()>1) {         
            puntoin = puntofi;
            nodoin=nodofi;
          }
        }
      }
    }
  }

  void lineamouse() {
    if (!P) {
      line(puntoin.x, puntoin.y, mouseX, mouseY);
    }
  }
  void ganar() {
    if (linea1.size()==tgrafo()*2) {
      niveles=-3;
    }
  }
  void display() {
    ganar();
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
    case 9:
      stroke(15, 48, 232);
      break;
    }
    strokeWeight(10);
    fill(0);
    for (int i = 0; i<linea1.size()-1; i++) {
      line(linea1.get(i).x, linea1.get(i).y, linea1.get(i+1).x, linea1.get(i+1).y);
    }
    lineamouse();    

    switch (niveles) {
    case 4:
      stroke(50, 255, 0);
      break;
    case 5:
      stroke(0, 0, 255);
      break;
    case 6:
      stroke(255, 131, 0);
      break;
    case 7:
      stroke(255, 0, 0);
      break;
    case 8:
      stroke(0, 220, 0);
      break;
    case 9:
      stroke(100, 255, 52);
      break;
    }
    for (int i = 0; i<linea2.size()-1; i++) {
      line(linea2.get(i).x, linea2.get(i).y, linea2.get(i+1).x, linea2.get(i+1).y);
    }
    ganar();
    popStyle();
  }
}