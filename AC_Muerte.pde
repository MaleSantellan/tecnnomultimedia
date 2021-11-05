class Muerte {
  float mtam, my, mx, mvel;
  boolean atrapado;
  PImage muerte;
  Muerte() {
    mtam = 90;
    mx = random (0, width);
    //entra en la pantalla
    my = -height;
    mvel = random (2, 4);
    atrapado = false;
    muerte = loadImage("muerte.png");
  }
  void dibujarMuerte() {
    image(muerte, mx+10, my, mtam, mtam);
  }

  void moverMuerte() {
    if (my>height+mtam || atrapado) { 
      mx = random (0, width);
      my= -height;
      mvel = random (4, 6);
      atrapado = false;
    }
    my+= mvel;
  }
  
  void atrapar(){
    atrapado=true;
  }
}
