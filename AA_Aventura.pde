//ctrl + F para buscar 
class Aventura {
  Juego j;
  Texto t;
  Fondo f;
  Boton volver, avanzar, creditos, HM, Hm, hm, pierde, gana, inicio, otrohermano, suicidio, buscahermanos, siguevida ;

  int num, numImg;
  String estado;
  float py;


  Aventura() {

    //variables para llamar a los objetos
    j = new Juego(); 
    t = new Texto();
    f = new Fondo();


    //botones 
    avanzar = new Boton(width/2, 550, 150, 70);
    volver = new Boton(50, 50, 70, 70);
    HM = new Boton(width/2, 500, 150, 70);
    Hm = new Boton(100, 500, 150, 70);
    hm = new Boton(700, 500, 150, 70);
    creditos = new Boton(70, 550, 100, 50);
    pierde = new Boton(width/2-100, 500, 100, 70);
    gana = new Boton(width/2+100, 500, 100, 70);

    inicio = new Boton(width/2-100, 500, 100, 70);
    otrohermano =new Boton(width/2+100, 500, 130, 70);

    buscahermanos = new Boton(width/2-100, 500, 130, 70);
    suicidio =new Boton(width/2+100, 500, 120, 70);


    siguevida =new Boton(width/2+100, 500, 130, 70);





    num = 0; //numero de fondo.
    numImg = 0;

    py= -height;
  }

  void dibujarAventura() {
    println(num, j.estado );
    f.dibujarfondo(num);

    //---Titulo---//
    if (num==0) {
      textFont(t.titulo);
      textAlign(CENTER);
      textSize(80);
      fill(0);
      text(t.historia[0], width/2, 100);
      fill(255);
      textFont(t.cuerpo);
      textSize(25);
      avanzar.dibujarboton(0, 1, 2, "Empezar");
      creditos.dibujarboton(0, 22, 2, "Creditos");
    }

    //--CREDITOS--//
    if (num==22) {
      textFont(t.cuerpo);
      for (int i=0; i<t.creditos.length; i++) {
        if (py>height) { 
          py= -height;
        }
        textSize(20);
        fill(0);
        textAlign(CENTER, TOP);
        text(t.creditos[i], width/2, py+(i*40));
        py+=0.2;
      }
      volver.dibujarboton(22, 0, 1, " ");
    }

    //---INTRODUCION---//
    if (num==1) {
      textFont(t.cuerpo);
      textSize(25);
      textAlign(CENTER);
      fill(0);
      text(t.historia[1], width/2, height/2);
      avanzar.dibujarboton(1, 2, 0, " ");
      volver.dibujarboton(1, 0, 1, " ");
    }

    //---RIO---//
    if (num==2) {
      textFont(t.cuerpo);
      textSize(25);
      textAlign(CENTER);
      fill(255);
      text(t.historia[2], width/2, height/2);
      volver.dibujarboton(2, 1, 1, " "); 
      avanzar.dibujarboton(2, 27, 0, " ");
    }

    //---APARECE MUERTE---//
    if (num==27) {
      //-Segundero-//
      if (frameCount%7 == 0) { 
        if (numImg<f.M.length-1) {
          numImg++;
        } else { 
          numImg=0;
        }
      }
      imageMode(CENTER);
      image (f.M[numImg], width/2, height/2);
      textSize(25);
      textAlign(CENTER);
      fill(255);
      text(t.historia[3], width/2, height/2);
      avanzar.dibujarboton(27, 3, 0, " ");
      volver.dibujarboton(27, 2, 1, " ");
    }

    //---Reliquias---//
    if (num==3) {
      textFont(t.cuerpo);
      textSize(25);
      textAlign(CENTER);
      fill(255);
      text(t.historia[21], width/2, height/2);
      avanzar.dibujarboton(3, 4, 0, " ");
      volver.dibujarboton(3, 27, 1, " ");
    }

    //---DECISION #1---//
    if (num==4) {
      textFont(t.cuerpo);
      textSize(25);
      textAlign(CENTER);
      fill(255);
      text(t.historia[4], width/2, 50);
      HM.dibujarboton(4, 5, 2, "Hermano \n Mayor");
      Hm.dibujarboton(4, 8, 2, "Hermano \n Medio");
      hm.dibujarboton(4, 9, 2, "Hermano \n Menor");
      volver.dibujarboton(4, 3, 1, "");
    }

    //--Hermano Menor--//
    if (num==9) {
      textFont(t.cuerpo);
      textSize(25);
      textAlign(CENTER);
      fill(255);
      text(t.historia[16], width/2, 50);
      avanzar.dibujarboton(9, 18, 0, "");
      volver.dibujarboton(9, 4, 1, " ");
    }

    //---Juego---//
    if (num==18) {
      j.dibujarJuego();
    }

    //---Hermano Menor se esconde---//
    if (num==17) {
      if (frameCount%20 == 0) { 
        if (numImg<f.hmen.length-1) {
          numImg++;
        } else { 
          numImg=0;
        }
      }
      imageMode(CENTER);
      image (f.hmen[numImg], width/2, height/2);
      textSize(25);
      textAlign(CENTER);
      fill(255);
      text(t.historia[17], width/2, 50);
      volver.dibujarboton(17, 18, 1, "");
      buscahermanos.dibujarboton(17, 25, 2, "Busca a sus\nhermanos");
      siguevida.dibujarboton(17, 19, 2, "sigue con\nsu vida");
    }

    //---Decide buscar a sus hermanos---//
    if (num==25) {
      textSize(25);
      textAlign(CENTER);
      fill(255);
      text(t.historia[18], width/2, 300);
      volver.dibujarboton(25, 17, 1, "");
      avanzar.dibujarboton(25, 21, 0, "");
    }

    //---sigue con su vida---//
    if (num==19) {
      textSize(25);
      textAlign(CENTER);
      fill(255);
      text(t.historia[19], width/2, 300);
      volver.dibujarboton(19, 17, 1, "");
      avanzar.dibujarboton(19, 28, 0, "");
    }

    //---Fin del hermano menor---//
    if (num==28) {
      if (frameCount%4 == 0) { 
        if (numImg<f.finhmen.length-1) {
          numImg++;
        } else { 
          numImg=0;
        }
      }
      imageMode(CENTER);
      image (f.finhmen[numImg], width/2, height/2);
      textSize(25);
      textAlign(CENTER);
      fill(0);
      text(t.historia[23], width/2, 50);
      inicio.dibujarboton(28, 0, 2, "Inicio");
      otrohermano.dibujarboton(28, 4, 2, "Elegir otro\nHermano");
    }

    //--Hermano del Medio---//
    if (num==8) {
      textSize(25);
      textAlign(CENTER);
      fill(255);
      text(t.historia[12], width/2, 400);
      avanzar.dibujarboton(8, 15, 0, " ");
      volver.dibujarboton(8, 4, 1, " ");
    }

    //---Usa la piedra para revivir a su amada---//
    if (num==15) {
      textSize(25);
      textAlign(CENTER);
      fill(255);
      text(t.historia[22], width/2, 100);
      avanzar.dibujarboton(15, 24, 0, " ");
      volver.dibujarboton(15, 8, 1, " ");
    }

    //---esta muy triste---//
    if (num==24) {
      if (frameCount%5 == 0) { 
        if (numImg<f.hmed.length-1) {
          numImg++;
        } else { 
          numImg=0;
        }
      }
      imageMode(CENTER);
      image (f.hmed[numImg], width/2, height/2);
      textSize(25);
      textAlign(CENTER);
      fill(255);
      text(t.historia[13], width/2, 300);
      suicidio.dibujarboton(24, 20, 2, "Se suicida");
      buscahermanos.dibujarboton(24, 29, 2, "Busca a sus\n hermanos");
      volver.dibujarboton(24, 15, 1, "");
    }
    //---Busca a sus hermanos---//
    if (num==29) {
      textSize(25);
      textAlign(CENTER);
      fill(255);
      text(t.historia[15], width/2, 300);
      avanzar.dibujarboton(29, 21, 0, "");
      volver.dibujarboton(29, 24, 1, "");
    }

    //---Suicidio---//
    if (num==20) {
      textSize(25);
      textAlign(CENTER);
      fill(255);
      text(t.historia[14], width/2, height/2);
      inicio.dibujarboton(20, 0, 2, "Inicio");
      otrohermano.dibujarboton(20, 4, 2, "Elegir otro\n hermano");
      volver.dibujarboton(20, 24, 1, "");
    }


    //---Hermano Mayor---//
    if (num==5) {
      textSize(25);
      textAlign(CENTER);
      fill(0);
      text(t.historia[5], width/2, 450);
      avanzar.dibujarboton(5, 23, 0, " ");
      volver.dibujarboton(5, 4, 1, " ");
    }

    //---se enfrenta al mago---//
    if (num==23) {
      if (frameCount%7 == 0) { 
        if (numImg<f.HM.length-1) {
          numImg++;
        } else { 
          numImg=0;
        }
      }
      imageMode(CENTER);
      image (f.HM[numImg], width/2, height/2);

      textSize(25);
      textAlign(CENTER);
      fill(255);
      text(t.historia[6], width/2, 300);
      pierde.dibujarboton(23, 26, 2, "pierde");
      gana.dibujarboton(23, 11, 2, "gana");
      volver.dibujarboton(23, 5, 1, " ");
    }  

    //---Gana el enfrentamiento---//
    if (num==11) {
      textSize(25);
      textAlign(CENTER);
      fill(255);
      text(t.historia[7], width/2, 300);
      avanzar.dibujarboton(11, 13, 0, "");
      volver.dibujarboton(11, 23, 1, "");
    }
    //---Pierde el enfrentamiento---//
    if (num==26) {
      textSize(25);
      textAlign(CENTER);
      fill(255);
      text(t.historia[8], width/2, 200);
      fill(0);
      text(t.historia[9], width/2, 300);
      avanzar.dibujarboton(26, 21, 0, "");
      volver.dibujarboton(26, 23, 1, "");
    }

    //---FIN COMPARTIDO---//
    if (num ==21) {
      textSize(25);
      textAlign(CENTER);
      fill(0);
      text(t.historia[20], width/2, 100);
      otrohermano.dibujarboton(21, 4, 2, "Elegir otro\nHermano");
      inicio.dibujarboton(21, 0, 2, "Inicio");
    }

    //---Un mago del bar lo asesina mientras duerme---//
    if (num ==13) {
      textSize(25);
      textAlign(CENTER);
      fill(255);
      text(t.historia[10], width/2, 300);
      avanzar.dibujarboton(13, 14, 0, "");
    }

    //---la muerte se lo lleva, fin---//
    if (num ==14) {
      textSize(25);
      textAlign(CENTER);
      fill(255);
      text(t.historia[11], width/2, 50);
      inicio.dibujarboton(14, 0, 2, "Inicio");
      otrohermano.dibujarboton(14, 4, 2, "Elegir otro\n Hermano");
      volver.dibujarboton(14, 13, 1, "");
    }
  }





  //---CONEXION CON EL JUEGO---//
  void avanzar(int k) {
    j.avanzar(k);
  }
  void moverhermanomenor(int k) {
    j.moverPersonaje(k);
  }
  void click() {
    j.click();
  }


  void clickbot() {
    //Boton para avanzar
    /*if (empezar.botonPresionado(400, 550, 250, 80) && pantalla == 1 ) {
     pantalla = empezar.proxima;
     estado= "Jugando";
     }*/
    if (avanzar.botonPresionado(width/2, 550, 150, 70) && num == avanzar.actual ) {
      num = avanzar.proxima;
    }
    //Boton para volver
    if (volver.botonPresionado(50, 50, 70, 70) && num == volver.actual ) {
      num = volver.proxima;
    }
    //Boton para elegir al Hermano Mayor
    if (HM.botonPresionado(width/2, 500, 150, 70)&& num == HM.actual ) {
      num = HM.proxima;
    }
    //Boton para elegir al Hermano del Medio
    if (Hm.botonPresionado(100, 500, 150, 70) && num == Hm.actual ) {
      num = Hm.proxima;
    }
    //Boton para elegir al Hermano del Menor
    if (hm.botonPresionado(700, 500, 150, 70) && num == hm.actual ) {
      num = hm.proxima;
    }
    //Boton para ir a los creditos
    if (creditos.botonPresionado(70, 550, 100, 50) && num == creditos.actual ) {
      num = creditos.proxima;
    }
    //Boton para que el Hermano Mayor pierda
    if (pierde.botonPresionado(width/2-100, 500, 100, 70)&& num == pierde.actual ) {
      num = pierde.proxima;
    }
    //Boton para que el Hermano Mayor gane
    if (gana.botonPresionado(width/2+100, 500, 100, 70) && num == gana.actual ) {
      num = gana.proxima;
    }
    if (suicidio.botonPresionado(width/2+100, 500, 120, 70) && num == suicidio.actual ) {
      num = suicidio.proxima;
    }
    if (inicio.botonPresionado(width/2-100, 500, 100, 70) && num == inicio.actual ) {
      num = inicio.proxima;
    }
    if (otrohermano.botonPresionado(width/2+100, 500, 130, 70) && num == otrohermano.actual ) {
      num = otrohermano.proxima;
    }
    if (buscahermanos.botonPresionado(width/2-100, 500, 130, 70) && num == buscahermanos.actual ) {
      num = buscahermanos.proxima;
    }
      if (siguevida.botonPresionado(width/2+100, 500, 130, 70) && num == siguevida.actual ) {
        num = siguevida.proxima;
    }
  }
}
