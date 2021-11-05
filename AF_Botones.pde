class Boton {
  //posicion en x, posicion en y, ancho del boton, alto del foton, el estado en el que se encuentre, el proximo 
  int px, py, pancho, palto, actual, proxima;

  //variable de string para ponerle un texto encima
  String textoB;

  //propiedades  a la hora _;amar a _;ion "dibujar boton" en Juego
  //no son variables que se tengan que ir actualizando, sino que cada boton va a tener un valor distinto
  Boton(int px_, int py_, int pancho_, int palto_) {
    px = px_;
    py = py_;
    pancho = pancho_;
    palto = palto_;
  }
  //variables para la pantalla actual, la proxima, y para dar texto al boton
  void dibujarBoton(int actual_, int proxima_, String texto_) {
    actual = actual_;
    proxima = proxima_;
    textoB = texto_;
    if (over(px, py, pancho, palto)) {
    fill(224, 168, 45);
  } else {
    fill(100, 74, 16);
  }
    noStroke();
    //se va a dibujar desde el centro
    rectMode(CENTER);
    //dibujar el cuadrado que representa al boton
    //los valores corresponden a variables, las cuales = las variables indicadas en el() 
    //cuando llame a la funcion, reemplazo el valor de int_, que equivale a int
    rect(px, py, pancho, palto, palto/4);
    textSize(40);
    fill(255);
    textAlign(CENTER, CENTER);
    text(textoB, px, py);
  }
  
  boolean over(int px_, int py_, int pancho_, int palto_){
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
