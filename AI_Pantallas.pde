class Pantalla {
  int nump;
  //arreglo de 4 fotos para el fondo
  int cant = 5;
  PImage [] screens = new PImage [cant];
  PImage [] fondo = new PImage [4];

  Pantalla() {
    for (int p=0; p<cant; p++) {
      screens[p] = loadImage("pantalla"+p+".png");
    }
    for (int f=0; f<4; f++) {
      fondo[f] = loadImage("fondo"+f+".jpg");
    }
  }
  void dibujar(int num) {
    nump = num;
    imageMode(CENTER);
    image(screens[nump], width/2, height/2);
  }
}
