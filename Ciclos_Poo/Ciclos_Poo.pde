Grafo[] nivel;
Table [] puntos= new Table [9];
String [] Indicador=new String[9];
Table [] Graf=new Table [9];
Table [] Graff=new Table [9];
Table tabladejuego1;
int level, niveles=0, cantidad=8, nodot=20, pruebamouse, nodoin, nodofi, nivelcreado=0, creacion;
boolean control, P, Q, J, K, U, llenar=true;
PVector puntoin, puntofi, puntoprueba, puntoinicial, puntofinal;
ArrayList<PVector> linea1 = new ArrayList<PVector>();
ArrayList<PVector> linea2 = new ArrayList<PVector>();
ArrayList<PVector> lineacrear = new ArrayList<PVector>();
ArrayList<PVector> lineacrear2 = new ArrayList<PVector>();
ArrayList<PVector> puntoscrear = new ArrayList<PVector>();


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
  puntos[8]=loadTable("Puntos9.csv", "header");
  Graf[0]=loadTable("Graf.csv");
  Graf[1]=loadTable("Graf2.csv");
  Graf[2]=loadTable("Graf3.csv");
  Graf[3]=loadTable("Graf4.csv");
  Graf[4]=loadTable("Graf5.csv");
  Graf[5]=loadTable("Graf6.csv");
  Graf[6]=loadTable("Graf7.csv");
  Graf[7]=loadTable("Graf8.csv");
  Graf[8]=loadTable("Graf9.csv"); 
  Graff[0]=loadTable("Graff.csv");
  Graff[1]=loadTable("Graff2.csv");
  Graff[2]=loadTable("Graff3.csv");
  Graff[3]=loadTable("Graff4.csv");
  Graff[4]=loadTable("Graff5.csv");
  Graff[5]=loadTable("Graff6.csv");
  Graff[6]=loadTable("Graff7.csv");
  Graff[7]=loadTable("Graff8.csv");
  Graff[8]=loadTable("Graff9.csv");
  Indicador[0]="Graff.csv";
  Indicador[1]="Graff2.csv";
  Indicador[2]="Graff3.csv";
  Indicador[3]="Graff4.csv";
  Indicador[4]="Graff5.csv";
  Indicador[5]="Graff6.csv";
  Indicador[6]="Graff7.csv";
  Indicador[7]="Graff8.csv";
  Indicador[8]="Graff9.csv";
  P=true;  
  Q=true;
  control=true;
  nivel=new Grafo[cantidad];
  for (int i=0; i<nivel.length; i++) 
    nivel[i]=new Grafo(puntos[i], Graf[i], Graff[i], i);
}
void draw() {
  jugar(niveles);
}
void mousePressed () { 
  if (niveles>0) {
    nivel[niveles-1].mouse1();
  }
  if (creacion==2||creacion==3) {
    mouse4();
  }
}

void mouseReleased () {
  if (niveles>0) {
    nivel[niveles-1].mouse2();
  }
  if (creacion==2||creacion==3) {
    mouse5();
  }
}

void mouseClicked() {
  if (niveles==-2) {
    mouse3();
  }
}