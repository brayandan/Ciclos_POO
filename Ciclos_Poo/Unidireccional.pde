class Unidireccional extends Linea {
  float z, x, y,m, u, i, o, p;
  Unidireccional(PVector a, PVector b) {
    super(a, b);
    triangulo();
  }
  void triangulo() {
    m=((puntofinal.y-puntoinicial.y)/(puntofinal.x-puntoinicial.x));
    u=((puntoinicial.x+puntofinal.x)/2);
    i=((puntoinicial.y+puntofinal.y)/2);
    o=(i-(u*m));
    p=(i-(u*(-1/m)));    
    z=(((u+10)*m)+o);
    x=(((u+10)*(-1/m))+p);
    y=(((u-10)*(-1/m))+p);
  }
  @Override
    void display() {
    pushStyle();
    strokeWeight(8);
    stroke(208, 206, 212);
    fill(0, 0, 0);
    line(puntoinicial.x, puntoinicial.y, puntofinal.x, puntofinal.y);
    fill(208,206,212);
    triangle((u+10),z, (u+10), x, (u-10),y);
    println(m,u,i,o,z,x,y);
    popStyle();
  }
}
