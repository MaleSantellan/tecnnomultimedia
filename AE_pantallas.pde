class Pantalla {
  float seg;
  int nump;
  //arreglo de 4 fotos para el fondo
  int cant = 5;
  //PImage [] fondos = new PImage [cant];
  PImage [] screens = new PImage [cant];

  Pantalla() {
    //cargar las fotos del arreglo, fondo
    //for (int f=0; f<cant; f++) {
    //  fondos[f] = loadImage("fondo"+f+".png");
   // }
    //cargar las fotos del arreglo, pantallas
    for (int p=0; p<cant; p++) {
      screens[p] = loadImage("pantalla"+p+".png");
    }
    
  }
  void dibujar(int num){
    nump = num;
    image(screens[nump],0,0);
  }
  
}
