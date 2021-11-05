class Capa {
  float ctam, cy, cx, cvel;
  boolean atrapado;
  PImage capa;
  Capa() {
    ctam = 70;
    cx = random (0, width);
    //entra en la pantalla
    cy = -ctam;
    cvel = random (2, 4);
    atrapado = false;
    capa = loadImage("capa.png");
  }
  void dibujarCapa() {
    image(capa, cx, cy, ctam, ctam);
  }

  void moverCapa() {
    if (cy>height+ctam || atrapado) { 
      cx = random (0, width);
      cy = -ctam;
      cvel = random (4, 6);
      atrapado = false;
      capa = loadImage("capa.png");
    }
    cy+= cvel;
  }
  
  void atrapar(){
    atrapado=true;
  }
}


class Piedra {
  float ptam, py, px, pvel;
  boolean atrapado;
  PImage piedrafilo;
  Piedra() {
    ptam = 50;
    px = random (0, width);
    //entra en la pantalla
    py = -ptam;
    pvel = random (2, 4);
    atrapado = false;
    piedrafilo = loadImage("piedrafilo.png");
  }
  void dibujarPiedra() {
    image(piedrafilo, px, py, ptam, ptam);
  }

  void moverPiedra() {
    if (py>height+ptam || atrapado) { 
      px = random (0, width);
      py = -ptam;
      pvel = random (4, 6);
      atrapado = false;
    }
    py+= pvel;
  }
  
  void atrapar(){
    atrapado=true;
  }
}

class Varita {
  float vtam, vy, vx, vvel;
  boolean atrapado;
  PImage varita;
  Varita() {
    vtam = 70;
    vx = random (0, width);
    //entra en la pantalla
    vy = -vtam;
    vvel = random (2, 4);
    atrapado = false;
    varita = loadImage("varita.png");
  }
  void dibujarVarita() {
    image(varita, vx, vy, vtam, vtam);
  }

  void moverVarita() {
    if (vy>height+vtam || atrapado) { 
      vx = random (0, width);
      vy = -vtam;
      vvel = random (4, 6);
      atrapado = false;
    }
    vy+= vvel;
  }
  
  void atrapar(){
    atrapado=true;
  }
}
