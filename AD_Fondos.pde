class Fondo {
  float seg;
  int nump;
  //arreglo de 4 fotos para el fondo
  int cant = 30;
  PImage [] HP = new PImage [cant];
  PImage [] M = new PImage[9];//Muerte
  PImage [] HM = new PImage[11];//Hermano Mayor
  PImage [] hmed = new PImage[10];//Hermano del medio
  PImage [] hmen = new PImage[6];//Hermano Menor
  PImage [] finhmen = new PImage[26];//finhmen

  Fondo() {
    //cargar las fotos del arreglo, pantallas
    for (int p=0; p<cant; p++) {
      HP[p] = loadImage("HP"+p+".jpg");
    }
    for (int f=0; f<M.length; f++) {
      M[f] = loadImage("M"+f+".jpg");
    }
    for (int f=0; f<HM.length; f++) {
      HM[f] = loadImage("HM"+f+".jpg");
    }
    for (int f=0; f<hmed.length; f++) {
      hmed[f] = loadImage("hmed"+f+".jpg");
    }
    for (int f=0; f<hmen.length; f++) {
      hmen[f] = loadImage("hmen"+f+".jpg");
    }
    for (int f=0; f<finhmen.length; f++) {
      finhmen[f] = loadImage("finhmen"+f+".jpg");
    }
  }


  void dibujarfondo(int num) {
    nump = num;
    imageMode(CENTER);
    image(HP[nump], width/2, height/2);
  }
}
