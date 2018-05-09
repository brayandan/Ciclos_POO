void jugar(int a)
{ 
  Boton[] nivs= new Boton[8];
  color[] cols=new color[3]; 
  cols[0]= color(247, 255, 0); 
  cols[1]=color(35, 255, 0); 
  cols[2]=color(255, 182, 0);
  PVector[] bpos= new PVector[8];  
  PVector dimen= new PVector(110, 60);
  for (int i=0; i<4; i++) {
    for (int j=0; j<2; j++) {
      bpos[(2*i)+j]=new PVector(width/2-110+(200*j), height/2-85+(i*80));
    }
  }


  color ccre=color(255, 16, 16); 
  PVector[] bnnnpos= new PVector[1];  
  PVector dimennn= new PVector(160, 60);
  bnnnpos[0]=new PVector(width/2+275, height/2);

  color ccren=color(99, 16, 252); 
  PVector[] bnnpos= new PVector[1];  
  PVector dimenn= new PVector(110, 60);
  bnnpos[0]=new PVector(width/2, height/2+225);

  color cganar=color(55, 243, 66); 
  PVector[] posganar= new PVector[1];  
  PVector dimennnn= new PVector(220, 60);
  posganar[0]=new PVector(width/2, height/16+60);  

  Boton[] tNodo=new Boton[6]; 
  color ctNodo=color(0, 0, 255); 
  PVector[] bnpos= new PVector[6];  
  PVector dime= new PVector(30, 30);

  Boton[] botonc=new Boton[3]; 
  color cbotonc=color(255, 255, 255); 
  PVector[] poscc= new PVector[4];  
  PVector dimenc= new PVector(110, 60);

  Boton[] guardar=new Boton[1]; 
  color cguardar=color(255, 255, 255); 
  PVector posguardar= new PVector(width*10/12, 40);  
  PVector dimenguardar= new PVector(70, 60);

  for (int i=0; i<3; i++) {
    poscc[i]=new PVector(width*(1+i)/4, height*11/12);
  }

  for (int j=0; j<2; j++) {
    for (int i=0; i<3; i++) {
      bnpos[i+(3*j)]=new PVector(width/35+15+(50*i), height/2+25+(j*50));
    }
  }
  if (a==0) {
    background(210, 249, 234);
    llenar=true;
    for (int i=0; i<8; i++) {
      nivs[i]=new BotonRect(cols[floor(i/3)], bpos[i], i+1, 15, 28, dimen, "Nivel "+(i+1), 1, 0);
      nivs[i].display();
      nivs[i].asignarValor();
    }
    for (int i=0; i<6; i++) {
      tNodo[i]=new BotonRect(ctNodo, bnpos[i], 15+((i+1)*5), 0, 16, dime, ""+ (15+((i+1)*5)), 2, 255);
      tNodo[i].display();
      tNodo[i].asignarValor();
    }
    if (nivelcreado!=0) {
      Boton nivelcreado=new BotonRect(ccren, bnnpos[0], 9, 15, 28, dimenn, "Nivel 9", 1, 0);
      nivelcreado.display();
      nivelcreado.asignarValor();
    }
    Boton crear=new BotonRect(ccre, bnnnpos[0], -2, 15, 28, dimennn, "Crear nivel", 1, 0);
    crear.display();
    crear.asignarValor();

    strokeWeight(1);
    stroke(0, 0, 0);
    textSize(50);
    textAlign(CENTER);   
    textSize(56);
    fill(0);
    text("¡Bienvenido a Connect!", width*1/2, height*3/16 );
    textAlign(CENTER);
    textSize(16);
    fill(0);
    text("Elija el tamaño", width*1/9, height*13/32+30);
    text("de los nodos:", width*1/9, height*13/32+45);
    fill(0, 0, 255);
    stroke(255, 0, 0);
    strokeWeight(10);
    fill(0);
    ellipse(width*1/35+65, height*11/32+230, nodot, nodot);
  } else if (a==-2) {
    pushStyle();
    background(255, 255, 255);
    for (int i=0; i<3; i++) {
      botonc[i]=new BotonRect(cbotonc, poscc[i], i+1, 15, 16, dimenc, "", 3, 255);
      botonc[i].display();
      botonc[i].asignarValor();
    }
    guardar[0]=new BotonRect(cguardar, posguardar, 4, 15, 16, dimenguardar, "Guardar", 3, 0);
    guardar[0].display();
    guardar[0].asignarValor();

    Boton menu=new BotonCirc(color(41, 74, 255), new PVector(760, 40), 0, true);
    menu.display();
    menu.asignarValor();
    stroke(0, 0, 0);
    strokeWeight(4);
    fill(0);
    textAlign(CENTER);
    textSize(28);  
    text("Creación de niveles", width/2, height/12);
    fill(255);
    rectMode(CENTER);
    rect(width/2, height/2, 600, 400);
    fill(0);    
    strokeWeight(8);
    stroke(15, 48, 232);
    ellipse(width/4, height*11/12, nodot, nodot);
    line(width*2/4+30, height*11/12, width*2/4-30, height*11/12);    
    line(width*3/4+30, height*11/12, width*3/4-30, height*11/12);
    triangle(width*3/4, height*11/12+4, width*3/4, height*11/12-4, width*3/4+4, height*11/12);
    for (int i = 0; i<puntoscrear.size(); i++) {
      ellipse(puntoscrear.get(i).x, puntoscrear.get(i).y, nodot, nodot);
    }
    for (int i = 0; i<lineacrear.size(); i+=2) {
      line((int)lineacrear.get(i).x, (int)lineacrear.get(i).y, (int)lineacrear.get(i+1).x, (int)lineacrear.get(i+1).y);
    }
    for (int i = 0; i<lineacrear2.size(); i+=2) {
      line((int)lineacrear2.get(i).x, (int)lineacrear2.get(i).y, (int)lineacrear2.get(i+1).x, (int)lineacrear2.get(i+1).y);
      float z, x, y, m, u, k, o, p, b;
      m=((lineacrear2.get(i+1).y-lineacrear2.get(i).y)/(lineacrear2.get(i+1).x-lineacrear2.get(i).x));
      u=((lineacrear2.get(i).x+lineacrear2.get(i+1).x)/2);
      k=((lineacrear2.get(i).y+lineacrear2.get(i+1).y)/2);
      b=(sqrt(sq(lineacrear2.get(i).x+lineacrear2.get(i+1).x)+sq(lineacrear2.get(i).y+lineacrear2.get(i+1).y)))/100;
      o=(k-(u*m));
      p=(k-(u*(-1/m)));    
      z=(((u+5)*m)+o);
      x=(((u+5)*(-1/m))+p);
      y=(((u-5)*(-1/m))+p);
      triangle((5+u), z, (5+u), x, (u-5), y);
    }
    crearlinea();
    poner();
    popStyle();
  } else if (a==-3) {
    background(55, 84, 243);
    strokeWeight(1);
    stroke(0);
    fill(255, 255, 255);
    textAlign(CENTER);
    textSize(56);
    text("GANASTE!!", width/2, height/2);
    fill(55, 243, 66);   
    llenar=true;
    Boton crear=new BotonRect(cganar, posganar[0], 0, 15, 28, dimennnn, "Volver al menú", 1, 0);
    crear.display();
    crear.asignarValor();
    control=true;
    P=true;
    Q=true;
    if (mousePressed ) {
      if (width/2-210/2<=mouseX && mouseX<=width/2-210/2+210 && height*1/6-70/2<=mouseY && mouseY<=height*1/6-70/2+60) {
        level=0;
        for (int i = linea1.size() - 1; i >= 0; i--) {
          linea1.remove(i);
        }
      }
    }
  } else if (a>0) {

    background(255, 255, 255);

    Boton reiniciar=new BotonCirc(color(41, 74, 255), new PVector(710, 40), niveles, false);
    reiniciar.display();
    reiniciar.asignarValor();
    Boton menu=new BotonCirc(color(41, 74, 255), new PVector(760, 40), 0, true);
    menu.display();
    menu.asignarValor();
    for (int i=1; i<9; i++) {
      if (a==i) {
        //nivel[i-1].Grafo(puntos[i-1], Graf[i-1], Graff[i-1], i-1);
        if (llenar) {
          nivel[i-1].setTabladelgrafo1(Graff[i-1], Graf[i-1]);
          llenar=false;
        }
        nivel[i-1].jugar1();
        nivel[i-1].display();
      }
    }
  }
}

void poner() {
  switch(creacion) {
  case 1:
    ellipse(mouseX, mouseY, nodot, nodot);
    break;
  case 2:
    break;
  case 3:
    break;
  case 4:
    for (int i=1; i<puntos[8].getRowCount(); i++) {
      puntos[8].removeRow(i);  
      saveTable(puntos[8], "data/puntos9.csv");
    }
    for (int i=1; i<puntos[8].getRowCount(); i++) {
      for (int j=1; j<2; j++) {
        puntos[8].setInt(i, j, (int)puntoscrear.get(i).x);
        puntos[8].setInt(i, j, (int)puntoscrear.get(i).y);
        saveTable(puntos[8], "data/puntos9.csv");
      }
    }
    break;
  }
}


void mouse3() {
  if (mouseX>100&&mouseX<700&&mouseY>100&&mouseY<500) {
    switch(creacion) {
    case 1:
      PVector a=new PVector(mouseX, mouseY);
      puntoscrear.add(a);
      break;
    case 2:
      break;
    case 3:

      break;
    }
  }
}
void mouse4() {
  for (int i=0; i<puntoscrear.size(); i++) {
    if (mouseX<=(puntoscrear.get(i).x+nodot) && mouseX>=(puntoscrear.get(i).x-nodot) && mouseY<=(puntoscrear.get(i).y+nodot) && mouseY>=(puntoscrear.get(i).y-nodot)) {
      switch(pruebamouse) {
      case 0:
        if (control==true) {
          puntoinicial = puntoscrear.get(i);
        }
        K=false;
        break;
      case 1:
        pruebamouse=0;
        break;
      }
    }
  }
}
void mouse5() {
  for (int i=0; i<puntoscrear.size(); i++) {
    if (mouseX<=(puntoscrear.get(i).x+nodot) && mouseX>=(puntoscrear.get(i).x-nodot) && mouseY<=(puntoscrear.get(i).y+nodot) && mouseY>=(puntoscrear.get(i).y-nodot)) {
      puntoprueba = puntoscrear.get(i);
      if (puntoinicial.x!=puntoprueba.x || puntoinicial.y!=puntoprueba.y) {
        puntofinal = puntoscrear.get(i);
        J=false;
        K=true;
        U=true;
        pruebamouse=0;
      }
      if (puntoinicial.x==puntoprueba.x && puntoinicial.y==puntoprueba.y) {
        P=true;
        pruebamouse=1;
      }
    }
  }
}
void crearlinea() {
  if (creacion==2) {
    if (K) {
      line(puntoinicial.x, puntoinicial.y, puntofinal.x, puntofinal.y);
      lineacrear.add(puntoinicial);
      lineacrear.add(puntofinal);
      control=false;
      if (lineacrear.size()>1||lineacrear2.size()>1) {         
        puntoinicial = puntofinal;
        K=false;
      }
    }
  }
  if (creacion==3) {
    if (K) {
      line(puntoinicial.x, puntoinicial.y, puntofinal.x, puntofinal.y);
      lineacrear2.add(puntoinicial);
      lineacrear2.add(puntofinal);
      control=false;
      if (lineacrear.size()>1||lineacrear2.size()>1) {         
        puntoinicial = puntofinal;
        K=false;
      }
    }
  }
}


//void Nivelcreado(Table a) {
//  for (int i = 0; i < a.getRowCount(); i++) {
//    for (int j = i; j < a.getColumnCount(); j++) {
//      if (a.getInt(i, j) != 0) {
//        nivelcreado++;
//      }
//    }
//  }
//}