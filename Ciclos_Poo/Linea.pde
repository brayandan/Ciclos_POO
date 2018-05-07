abstract class Linea{
  PVector puntoinicial,puntofinal;
  
  Linea(PVector a,PVector b){
  setPuntoinicial(a);
  setPuntofinal(b);
  }


  abstract void display();

  void setPuntoinicial(PVector a){
    puntoinicial=a;
  }
  void setPuntofinal(PVector a){
    puntofinal=a;
  }
  
  PVector puntoinicial(){
  return puntoinicial;
  }  
  PVector puntofinal(){
  return puntofinal;
  }
  
  
}