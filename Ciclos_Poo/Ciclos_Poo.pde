Grafo[] nivel;
//ArrayList<PVector> puntos = new ArrayList<PVector>();
Table [] puntos= new Table [8];
Table tabladejuego1;
int level, niveles=0, cantidad=8,nodot=20;


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
  tabladejuego1=loadTable("Tabladecambio.csv", "header");
  nivel=new Grafo[cantidad];
  for(int i=0; i<nivel.length;i++) 
  nivel[i]=new Grafo(puntos[i]);
}
void draw() {
  jugar(niveles);
}