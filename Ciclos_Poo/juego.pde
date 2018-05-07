void jugar(int a)
{ 
  Boton[] nivs= new Boton[8];
  color[] cols=new color[3]; cols[0]= color(247, 255, 0); cols[1]=color(35, 255, 0); cols[2]=color(255, 182, 0);
  PVector[] bpos= new PVector[8];  
  PVector dimen= new PVector(110, 60);
  for (int i=0; i<4; i++) {
    for (int j=0; j<2; j++) {
      bpos[(2*i)+j]=new PVector(width/2-110+(200*j), height/2-25+(i*80));
    }
  }
  
  Boton[] tNodo=new Boton[6]; 
  color ctNodo=color(0, 0, 255); 
  PVector[] bnpos= new PVector[6];  
  PVector dime= new PVector(30,30);

  for (int j=0; j<2; j++) {
    for (int i=0; i<3; i++) {
      bnpos[i+(3*j)]=new PVector(width/35+15+(50*i), height/2+95+(j*50));
    }
  }
  
  if (a==0) {
    background(210, 249, 234);

    for (int i=0; i<8; i++) {
      nivs[i]=new BotonRect(cols[floor(i/3)], bpos[i], i+1, 15, 28, dimen, "Nivel "+(i+1), true, 0);
      nivs[i].display();
      nivs[i].asignarValor();
    }
    for (int i=0; i<6; i++) {
      tNodo[i]=new BotonRect(ctNodo, bnpos[i], 20+((i+1)*5), 0, 16, dime, ""+ (20+((i+1)*5)), false, 255);
      tNodo[i].display();
      tNodo[i].asignarValor();
    }
    strokeWeight(1);
    stroke(0, 0, 0);
    textSize(50);
    textAlign(CENTER);   
    textSize(56);
    fill(0);
    text("¡Bienvenido a Connect!", width*1/2, height*1/4 );
    textAlign(CENTER);
    textSize(16);
    fill(0);
    text("Elija el tamaño", width*1/9, height*2/4+30);
    text("de los nodos:", width*1/9, height*2/4+45);
    fill(0, 0, 255);
    stroke(255, 0, 0);
    strokeWeight(10);
    fill(0);
    ellipse(width*1/35+65, height*1/2+220, nodot, nodot);
  } else {
    
    background(255, 255, 255);
    
    Boton reiniciar=new BotonCirc(color(41, 74, 255), new PVector(710,40), 1, false);
    reiniciar.display();
    reiniciar.asignarValor();
    Boton menu=new BotonCirc(color(41, 74, 255), new PVector(760,40), 0, true);
    menu.display();
    menu.asignarValor();
    for (int i=1; i<9; i++) {
      if (a==i) {
        nivel[i-1].display();
      }
    }
  }
}