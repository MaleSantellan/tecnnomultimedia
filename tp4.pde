/* ---TRABAJO PRACTICO N4---*/
//-La Fabula de los Tres Hermanos, Harry Potter-//
//__Malena Santellan 
//__Legajo 88115/7
//__Comision 1

color relleno = color(255);
String estado;
float px, py, anchoimg, segundos;
int numImg=0;
int tam=50;
PImage varita, volver;
String [] creditos;
PImage [] HP = new PImage[20];//Historia principal
PImage [] M = new PImage[9];//Muerte
PImage [] HM = new PImage[11];//Hermano Mayor
PImage [] hmed = new PImage[10];//Hermano del medio
PImage [] hmen = new PImage[3];//Hermano Menor
void setup() {
  creditos = loadStrings("creditos.txt");
  varita = loadImage ("varita.gif");
  volver = loadImage ("volver.png");
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
  } else if (estado.equals("intro")) {
    intro();
  } else if (estado.equals("Rio")) {
    Rio();
  } else if (estado.equals("muerte")) {
    muerte();
  } else if (estado.equals("premios")) {
    premios();
  } else if (estado.equals("HermanoMayor")) {
    HermanoMayor();
  } else if (estado.equals("enfrentamiento")) {
    enfrentamiento();
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
  // boton medio, EMPEZAR
  if (botonPressed(mouseX, mouseY, (width/2)-tam, 300, 100, tam) && estado.equals("titulo")) { 
    estado = "intro";
  }
  
  
  //2-Pantalla Introduccion
  //-Avanzar
  if (botonPressed(mouseX, mouseY, width-150, height-100, 100, tam) && estado.equals("intro")) { 
    estado = "Rio";
  }
  //-volver
  if (botonPressed(mouseX, mouseY, tam, tam, tam, tam) && estado.equals("intro")) { 
    estado = "titulo";
  }

  //3-Pantalla Rio
  //-Avanzar
  if (botonPressed(mouseX, mouseY, width-150, height-100, 100, 50) && estado.equals("Rio")) { 
    estado = "muerte";
  }
  //-Volver
  if (botonPressed(mouseX, mouseY, tam, tam, tam, tam) && estado.equals("Rio")) { 
    estado = "intro";
  }

  //4-Pantalla muerte
  //-Avanzar
  if (botonPressed(mouseX, mouseY, (width/2)-50, 330, 100, 50) && estado.equals("muerte")) { 
    estado = "premios";
  }
  //-Volver
  if (botonPressed(mouseX, mouseY, tam, tam, tam, tam) && estado.equals("muerte")) { 
    estado = "Rio";
  }

  //5-Pantalla Premios
  //-Avanzar
  /*if (botonPressed(mouseX, mouseY, tam, tam, tam, tam) && estado.equals("premios")) { 
    estado = "HermanoDelMedio";
  }*/
    if (botonPressed(mouseX, mouseY, width/2, 300, 100, 50) && estado.equals("premios")) { 
    estado = "HermanoMayor";
  }
  if (botonPressed(mouseX, mouseY, width-150, 300, 100, 50) && estado.equals("premios")) { 
    estado = "HermanoMenor";
  }
  //-Volver
  if (botonPressed(mouseX, mouseY, 50, 50, 100, 50) && estado.equals("HermanoDelMedio") || estado.equals("HermanoMayor") || estado.equals("HermanoMenor")) { 
    estado = "premios";
  }
}
