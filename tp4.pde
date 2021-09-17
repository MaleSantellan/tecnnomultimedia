/* ---TRABAJO PRACTICO N4---*/
//-La Fabula de los Tres Hermanos, Harry Potter-//
//__Malena Santellan 
//__Legajo 88115/7
//__Comision 1
/*Tuve problemas con los botones. si bien les puse el estado en el que se tienen que encontrar para que me lleve
a determinada pantalla, algunos me mandaban a otro estado diferente, y aunque lei mil veces no supe entender como solucionarlo.
Por otro lado queria saber si use correctamente arreglos y funciones, porque me costo un poco entenderlo. 
mil disculpas por entregarlo incompleto
 */
color relleno = color(255);
String estado;
float px, py, anchoimg, segundos;
int numImg=0;
PImage [] HP = new PImage[20];//Historia principal
PImage [] M = new PImage[9];//Muerte
PImage [] HM = new PImage[11];//Hermano Mayor
PImage [] hmed = new PImage[10];//Hermano del medio
PImage [] hmen = new PImage[3];//Hermano Menor
void setup() {
  size(800, 400);
  anchoimg =800;
  estado = "titulo";
  for (int f=0; f<HP.length; f++) {
    HP[f] = loadImage("HP"+f+".jpeg");
  }
  for (int f=0; f<M.length; f++) {
    M[f] = loadImage("M"+f+".jpeg");
  }
  for (int f=0; f<HM.length; f++) {
    HM[f] = loadImage("HM"+f+".jpeg");
  }
  for (int f=0; f<hmed.length; f++) {
    hmed[f] = loadImage("hmed"+f+".jpeg");
  }
  for (int f=0; f<hmen.length; f++) {
    hmen[f] = loadImage("hmen"+f+".jpeg");
  }
}
void draw() {
  background(0);
  if (estado.equals("titulo")) {
    titulo();
  } else if (estado.equals("introduccion")) {
    introduccion();
  } else if (estado.equals("rio")) {
    rio();
  } else if (estado.equals("muerte")) {
    muerte();
  } else if (estado.equals("premios")) {
    premios();
  } else if (estado.equals("HermanoMayor")) {
    HermanoMayor();
  } else if (estado.equals("HermanoDelMedio")) {
    HermanoDelMedio();
  } else if (estado.equals("HermanoMenor")) {
    HermanoMenor();
  }

  println("Estado " + estado);
}
void mousePressed() {
  //BOTONES//
  //1-Pantalla inicio
  if (botonPressed(mouseX, mouseY, (width/2)-50, 300, 100, 50) && estado.equals("titulo")) { // boton medio, EMPEZAR
    estado = "introduccion";
  }
  //2-Pantalla Introduccion
  //-Avanzar
  if (botonPressed(mouseX, mouseY, width-150, height-100, 100, 50) && estado.equals("introduccion")) { 
    estado = "rio";
  }
  //-volver
  if (botonPressed(mouseX, mouseY, 50, height-100, 100, 50) && estado.equals("introduccion")) { 
    estado = "titulo";
  }
  //3-Pantalla Rio
  //-Avanzar
  if (botonPressed(mouseX, mouseY, width-150, height-100, 100, 50) && estado.equals("rio")) { 
    estado = "muerte";
  }
  //-Volver
  if (botonPressed(mouseX, mouseY, 50, height-100, 100, 50) && estado.equals("rio")) { 
    estado = "introduccion";
  }
  //4-Pantalla muerte
  //-Avanzar
  if (botonPressed(mouseX, mouseY, (width/2)-50, 330, 100, 50) && estado.equals("muerte")) { 
    estado = "premios";
  }
  //5-Pantalla Premios
  //-Avanzar
  if (botonPressed(mouseX, mouseY, width/2, 300, 100, 50) && estado.equals("premios")) { 
    estado = "HermanoMayor";
  }
  if (botonPressed(mouseX, mouseY, 50, height-100, 100, 50) && estado.equals("premios")) { 
    estado = "HermanoDelMedio";
  }
  if (botonPressed(mouseX, mouseY, width-150, 300, 100, 50) && estado.equals("premios")) { 
    estado = "HermanoMenor";
  }
  //-Volver
  if (botonPressed(mouseX, mouseY, 50, 50, 100, 50) && estado.equals("HermanoDelMedio") || estado.equals("HermanoMayor") || estado.equals("HermanoMenor")) { 
    estado = "premios";
  }
  //6-Pantalla Hermano Mayor
}

void botonDibujado(int px, int py, int ancho, int alto) {
  if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(224, 168, 45);
  } else {
    fill(100, 74, 16);
  }
  noStroke();
  rect(px, py, ancho, alto, alto/4);
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

boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {// mouse, ubicacion y tamaño
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

void keyPressed() {
  estado = "introduccion";
}
