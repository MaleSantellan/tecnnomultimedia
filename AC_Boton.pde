class Boton {
  int px, py, pancho, palto, actual, proxima;
  String textoB;
  PImage [] adorno = new PImage [3];
 
  //no son variables que se tengan que ir actualizando, sino que cada boton va a tener un valor distinto
  Boton(int px_, int py_, int pancho_, int palto_) {
    px = px_;
    py = py_;
    pancho = pancho_;
    palto = palto_;
    for (int p=0; p<3; p++) {
      adorno[p] = loadImage("adorno"+p+".png");
    }
  }

  //variables para la pantalla actual, la proxima
  void dibujarboton(int actual_, int proxima_, int ID, String texto_) {
    actual = actual_;
    proxima = proxima_;
    textoB = texto_;
    if (over(px, py, pancho, palto)) {
      fill(224, 168, 45);
    } else {
      fill(100, 74, 16);
    }
    noStroke();
    rectMode(CENTER);
    //dibujar el cuadrado que representa al boton
    //los valores corresponden a variables, las cuales = las variables indicadas en el() 
    //cuando llame a la funcion, reemplazo el valor de int_, que equivale a int
    rect(px, py, pancho, palto, palto/4);
    imageMode(CENTER);
    image(adorno[ID], px, py);
    fill(255);
    textAlign(CENTER, CENTER);
    text(textoB, px, py);
  }

  boolean over(int px_, int py_, int pancho_, int palto_) {
    px = px_;
    py = py_;
    pancho = pancho_;
    palto = palto_;
    if (mouseX>px-pancho/2 && mouseX<px+pancho/2 && mouseY>py-palto/2 && mouseY<py+palto/2) {
      return true;
    } else {
      return false;
    }
  }
  boolean botonPresionado(int px_, int py_, int pancho_, int palto_) {
    px = px_;
    py = py_;
    pancho = pancho_;
    palto = palto_;
    boolean presionado = mouseX>px-pancho/2 && mouseX<px+pancho/2 && mouseY>py-palto/2 && mouseY<py+palto/2 == true; 
    return presionado;
  }
}
