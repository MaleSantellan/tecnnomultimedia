
void botonA(int px, int py, int ancho, int alto) {
  //(variable,ubicacion,ancho,alto);
  if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(224, 168, 45);
  } else {
    fill(100, 74, 16);
  }
  noStroke();
  rect(px, py, ancho, alto, alto/4);
  image (varita,px+45,py+25,ancho, alto);
}
void botonV(int px, int py, int ancho, int alto) {
  //(variable,ubicacion,ancho,alto);
  if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(224, 168, 45);
  } else {
    fill(100, 74, 16);
  }
  noStroke();
  rect(px, py, ancho, alto, alto/4);
  image (volver,px+25,py+25,ancho, alto);
}


void botontxt(int px, int py, int ancho, int alto, String mensaje) {
  if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(224, 168, 45);
  } else {
    fill(100, 74, 16);
  }
  noStroke();
  rect(px, py, ancho, alto, alto/4);
  fill(200); 
  textSize(22); 
  textAlign(LEFT);
  text(mensaje, px, py+30);
}

boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {
  boolean presionado = mx>px && mx<px+ancho && my>py && my<py+alto == true;
  return presionado;
}
boolean botonOver(int mx, int my, int px, int py, int ancho, int alto) {
  if (mx>px && mx<px+ancho && my>py && my<py+alto) {
    return true;
  } else {
    return false;
  }
}
