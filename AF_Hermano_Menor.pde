class Hmen {
  PImage herm;
  float hx, hy, hancho, halto;//declaro propiedades 
  Hmen() {
    //valor de las propiedades 
    hancho = 100;
    halto = 200;
    hx=width/2;
    hy=height-halto;
    herm = loadImage("herm.png");
  }
  void dibujarHmen() {
    //imagen del hermano menor
    fill(255);
    noStroke();
    image(herm, hx, hy, hancho, halto);
  }
  void moverHmen(int tecla) {
    if (tecla==39 && hx<width-hancho) {
      hx+=5;
    }
    if (tecla==37 && hx>0) {
      hx-=5;
    }
  }
}
