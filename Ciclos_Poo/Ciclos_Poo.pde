Grafo[] nivel;
Table [] puntos= new Table [8];
Table [] Graf=new Table [8];
Table tabladejuego1;
PVector puntoin, puntofi;
boolean control, P, Q;
int level, niveles=0, cantidad=8, nodot=20, nodoin, nodofi;

void setup() {
  size (800, 600);
  puntos[0]=loadTable("Puntos.csv", "header");   
  puntos[1]=loadTable("Puntos2.csv", "header");
  puntos[2]=loadTable("Puntos3.csv", "header");
  puntos[3]=loadTable("Puntos4.csv", "header");
  puntos[4]=loadTable("Puntos5.csv", "header");
  puntos[5]=loadTable("Puntos6.csv", "header");
  puntos[6]=loadTable("Puntos7.csv", "header");
  puntos[7]=loadTable("Puntos8.csv", "header");
  Graf[0]=loadTable("Graf.csv");
  Graf[1]=loadTable("Graf2.csv");
  Graf[2]=loadTable("Graf3.csv");
  Graf[3]=loadTable("Graf4.csv");
  Graf[4]=loadTable("Graf5.csv");
  Graf[5]=loadTable("Graf6.csv");
  Graf[6]=loadTable("Graf7.csv");
  Graf[7]=loadTable("Graf8.csv");
  nivel=new Grafo[cantidad];
  for (int i=0; i<nivel.length; i++) 
    nivel[i]=new Grafo(puntos[i], Graf[i]);
}
void draw() {
  jugar(niveles);
}
void mousePressed () {
  if (niveles!=0) {
    nivel[niveles-1].mouse1();
  }
}
void mouseReleased() {
  if (niveles!=0) {
    nivel[niveles-1].mouse2();
  }
}
