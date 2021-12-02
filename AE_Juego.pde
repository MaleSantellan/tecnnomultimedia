//Clase Principal
class Juego {
  Hmen h;
  Muerte m;
  Capa c;
  Varita v;
  Piedra p;
  Pantalla pant ;
  Boton empezar;
  Muerte [] ms= new Muerte[7];
  Capa [] cs = new Capa [5];
  Piedra [] ps = new Piedra [5];
  Varita [] vs = new Varita [5];
  int numImg;
  int vidas;
  int puntosc, puntosp, puntosv;
  int fs;
  PImage fondo;
  int pantalla;
  String estado;
  boolean gano; 


  //constructor del juego
  Juego() {
    numImg = 0;

    estado = "Inicio";
    vidas=3;
    //variables para llamar a las clases 
    h = new Hmen();
    m = new Muerte();
    c = new Capa();
    v = new Varita();
    p = new Piedra();
    pant = new Pantalla();
    pantalla=0;
    empezar= new Boton(400, 550, 250, 80);
    //Arreglos de objetos
    for (int i=0; i<ms.length; i++) {
      ms[i] = new Muerte();
    }
    for (int i=0; i<cs.length; i++) {
      cs[i] = new Capa();
    }
    for (int i=0; i<ps.length; i++) {
      ps[i] = new Piedra();
    }
    for (int i=0; i<vs.length; i++) {
      vs[i] = new Varita();
    }
  }


  void click() {
    if (empezar.botonPresionado(400, 550, 250, 80) && pantalla == 1 ) {
      pantalla = empezar.proxima;
      estado= "Jugando";
    }
  }


  void dibujarJuego() {
    pant.dibujar(pantalla);

    //Estados del juego
    if (estado.equals("Inicio")) {
      pantalla=0;
    } 
    if (estado.equals("Instruc")) {
      pantalla=1;
      textSize(40);
      empezar.dibujarboton(1, 2, 2, "EMPEZAR");
    }
    if (estado.equals("Jugando")) { 

      if (frameCount%50 == 0) { 
        if (numImg<pant.fondo.length-1) {
          numImg++;
        } else { 
          numImg=0;
        }
      }
      imageMode(CENTER);
      image (pant.fondo[numImg], width/2, height/2);

      h.dibujarHmen();
      encuentromyh();
      encuentrocyh();
      encuentrovyh();
      encuentropyh();

      for (int i=0; i<ms.length; i++) {
        ms[i].dibujarMuerte();
        ms[i].moverMuerte();
      }

      //capas
      for (int i=0; i<cs.length; i++) {
        cs[i].dibujarCapa();
        cs[i].moverCapa();
      }

      //pieda filosofal
      for (int i=0; i<ps.length; i++) {
        ps[i].dibujarPiedra();
        ps[i].moverPiedra();
      }

      //varita
      for (int i=0; i<vs.length; i++) {
        vs[i].dibujarVarita();
        vs[i].moverVarita();
      }

      textSize(20);
      fill(255);
      textAlign(CENTER);
      text("Vidas", 50, 50);
      text(vidas, 50, 70);

      text("Capas", 750, 50);
      text(puntosc, 750, 70);

      text("Piedras", 650, 50);
      text(puntosp, 650, 70);

      text("Varitas", 550, 50);
      text(puntosv, 550, 70);
    }
    if (estado.equals("Perdiste")) {
      pantalla=3;
    }
    if (estado.equals("Ganaste")) {
      pantalla=4;
      
    }
    //Que pasa para que ganes 
    if (puntosv>= 10 && puntosp>= 10 && puntosc>= 10) {
      estado="Ganaste";
    }
    //que pasa para que pierdas 
    if (vidas==0) {
      estado="Perdiste";
    }
  }

  void avanzar(int tecla) {
    if (tecla==ENTER && !estado.equals("Instruc")) {

      if (estado.equals("Inicio")) {
        estado= "Instruc";
      }
      if (estado.equals("Perdiste")) {
        estado= "Instruc";
        for (int i=0; i<ms.length; i++) {
          ms[i] = new Muerte();
        }
        for (int i=0; i<cs.length; i++) {
          cs[i] = new Capa();
        }
        for (int i=0; i<ps.length; i++) {
          ps[i] = new Piedra();
        }
        for (int i=0; i<vs.length; i++) {
          vs[i] = new Varita();
        }
        vidas= 3;
        puntosv= 0;
        puntosc= 0;
        puntosp= 0;
      }
      //provisorio, para volver a empezar el juego desde ganaste
      //aca avanzaria en la historia 
      if (estado.equals("Ganaste")) {
        a.num=17;
      }
    }
  }


  //---Mover Hermano Menor---//
  void moverPersonaje(int tecla) {
    h.moverHmen(tecla);
  }

  //---Colisiones---//
  void encuentromyh() {
    //establecer la distancia entre el personaje y la muerte
    for (int i = 0; i<ms.length; i++) {
      float esp = dist(h.hx, h.hy, ms[i].mx, ms[i].my);
      if (esp < ms[i].mtam/2+h.hancho/4 || esp<ms[i].mtam/2+h.halto/4) {
        ms[i].atrapar();
        vidas--;
        menosvida.amp(0.3);
        menosvida.play();
      }
    }
  }

  void encuentrocyh() {
    //establecer la distancia entre el personaje y la muerte
    for (int i = 0; i<cs.length; i++) {
      float esp = dist(h.hx, h.hy, cs[i].cx, cs[i].cy);
      if (esp < cs[i].ctam/2+h.hancho/4 || esp<cs[i].ctam/2+h.halto/4) {
        cs[i].atrapar();
        puntosc++;
        punto.amp(0.2);
        punto.play();
      }
    }
  }

  void encuentropyh() {
    //establecer la distancia entre el personaje y la muerte
    for (int i = 0; i<ps.length; i++) {
      float esp = dist(h.hx, h.hy, ps[i].px, ps[i].py);
      if (esp < ps[i].ptam/2+h.hancho/4 || esp<ps[i].ptam/2+h.halto/4) {
        ps[i].atrapar();
        puntosp++;
        punto.amp(0.2);
        punto.play();
      }
    }
  }

  void encuentrovyh() {
    //establecer la distancia entre el personaje y la muerte
    for (int i = 0; i<vs.length; i++) {
      float esp = dist(h.hx, h.hy, vs[i].vx, vs[i].vy);
      if (esp < vs[i].vtam/2+h.hancho/4 || esp<vs[i].vtam/2+h.halto/4) {
        vs[i].atrapar();
        puntosv++;
        punto.amp(0.2);
        punto.play();
      }
    }
  }
}
