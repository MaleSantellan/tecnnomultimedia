void botontxt(int px, int py, int ancho, int alto, String mensaje) {
  if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(224, 168, 45);
  } else {
    fill(100, 74, 16);
  }
  noStroke();
  rectMode(CENTER);
  rect(px, py, ancho, alto, alto/4);
  fill(255); 
  textSize(22); 
  textAlign(CENTER, CENTER);
  text(mensaje, px, py);
}

void botonA(int px, int py, int ancho, int alto) {
  if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(224, 168, 45);
  } else {
    fill(100, 74, 16);
  }
  noStroke();
  rectMode(CENTER);
  rect(px, py, ancho, alto, alto/5);
  image(varita, px, py, ancho, alto);
}


void botonV(int px, int py, int ancho, int alto) {
  if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(224, 168, 45);
  } else {
    fill(100, 74, 16);
  }
  noStroke();
  rectMode(CENTER);
  rect(px, py, ancho, alto, alto/4);
  image (volver, px, py, ancho, alto);
}


//                                    del cuadrado
//Boton presionado, mouse x, mouse y, posx, posy, ancho y alto)
boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {
  //para que se dibuje desde el centro, px- la mitad del ancho de la figura 
  //y py menos la mitad del alto de la figura 
  boolean presionado = mx>px-ancho/2 && mx<px+ancho/2 && my>py-alto/2 && my<py+alto/2 == true;
  return presionado;
}

boolean botonOver(int mx, int my, int px, int py, int ancho, int alto) {
  if (mx>px-ancho/2 && mx<px+ancho/2 && my>py-alto/2 && my<py+alto/2) {
    return true;
  } else {
    return false;
  }
}
