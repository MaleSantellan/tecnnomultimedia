/* ---TRABAJO PRACTICO N4---*/
//-La Fabula de los Tres Hermanos, Harry Potter-//
//__Malena Santellan 
//__Legajo 88115/7
//__Comision 1
// Link del vide: https://youtu.be/yXDFKOpNn-U 
color relleno = color(255);
String estado;
float px, py, anchoimg, segundos;
int numImg=0;
int ubic=50;
PImage varita, volver, papiro;
String [] historia ={"La Fabula de los Tres Hermanos \n Harry Potter", //0
  "Habia una vez tres hermanos que viajaban por una solitaria \ny sinuosa carretera. En un momento llegaron a un río \n demasiado profundo para rodearlo", //1
  "Como los tres hombres eran muy diestros en las artes mágicas\n no tuvieron más que agitar sus varitas\n e hicieron aparecer un puente para salvar las traicioneras aguas.", //2
  "Cuando se hallaban hacia la mitad del puente, una figura \nencapuchada les cerró el paso. Y la Muerte les habló. \nEstaba contrariada porque acababa de\n perder a tres posibles víctimas, ya que normalmente\n los viajeros se ahogaban en el río.", //3
  "Seguir historia de...", //4
  "El hermano mayor pide la varita\n mas poderosa que existiera.", //5
  "Viajó y buscó a un mago con el que se llevaba muy mal\n y decidio tener un enfrentamiento con este.", //6
  "Ganó el enfrentamiento y fué \n a una taberna a presumir su poderosa varita", //7
  "El mago rival logra sacarle la\n varita y pierde el enfrentamiento,\n sinembargo sobrevive y se escapa muy lejos", //8
  "Despues de un tiempo de estar\n solo se da cuenta que extraña\n a sus hermanos asi que decide buscarlos", //9
  "Otro mago que lo escucho en la taberna,\npor la noche le robó la varita y, \npor si acaso, le cortó el cuello.", //10
  "Asi la muerte se llevo al hermano mayor.", //11
  "El hermano del medio pidio que le diera\n el poder de revivir a los muertos. \nLa Muerte sacó una piedra de la orilla del río y se la entregó", //12
  "La muchacha estaba triste y distante, \nseparada de él, y a pesar de que estuviera con ella, sufria ", //13
  "finalmente el segundo hermano enloqueció \n a causa de su desesperada nostalgia y se suicidó \n para reunirse de una vez por todas con su amada.", //14
  "Ahi se dió cuenta de que extrañaba a sus \nhermanos y decidió que lo mejor era reencontrarse\n con ellos y emprendió un viaje muy largo", //15
  "El hermano mas joven pidió algo que \n le permitiera marcharse de aquel lugar\n sin que ella pudiera seguirlo.", //16
  "Pasaron los años y la muerte \n nunca encontró al tercer hermano", //17
  "El hermano mas joven, que no se\n fio nunca de la muerte, decidio esconderse\n y buscar a sus hermanos que se habian alejado de el", //18
  "Cuando llego a viejo, el hermano mas chico se\n quitó por fin la capa invisible y \n se la regaló a su hijo.", //19
  "Los tres hermanos se reencontraron, envejecieron \nuno al lado del otro y el dia de su muerte recibieron\n a la muerte como una amiga, \n los dos mayores arrepintiendose de haberla desafiado", //20
  "Pero ella fue muy astuta y, fingiendo felicitar a los tres hermanos\n  por sus poderes mágicos, les dijo que cada uno podia elegir\n un premio por haber sido lo bastante listo para eludirla.", //21
  "El hermano del medio decidio \nvolver a su hogar, donde vivia solo.\n Ahi uso la piedra para revivir a la muchacha con quien\n se habría casado si ella no hubiera muerto",//22
  "Saludando a la Muerte como a un\n viejo amigo, partieron de esta vida como iguales."//23
} ;
String [] creditos;
PImage [] HP = new PImage[22];//Historia principal
PImage [] M = new PImage[9];//Muerte
PImage [] HM = new PImage[11];//Hermano Mayor
PImage [] hmed = new PImage[10];//Hermano del medio
PImage [] hmen = new PImage[8];//Hermano Menor
PImage [] finhmen = new PImage[26];//finhmen
void setup() {
  size(800, 400);
  creditos = loadStrings("creditos.txt");
  varita = loadImage ("varita.gif");
  volver = loadImage ("volver.png");
  papiro = loadImage ("papiro.jpg");
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
  for (int f=0; f<finhmen.length; f++) {
    finhmen[f] = loadImage("finhmen"+f+".gif");
  }
}
void draw() {
  background(0);
  
    if (estado.equals("titulo")) {
    titulo();
  } else if (estado.equals("creditos")) {
    creditos();
  } else if (estado.equals("intro")) {
    intro();
  } else if (estado.equals("Rio")) {
    Rio();
  } else if (estado.equals("muerte")) {
    muerte();
  } else if (estado.equals("regalo")) {
    regalo();
  } else if (estado.equals("premios")) {
    premios();

    //Historia hermano del medio
  } else if (estado.equals("HermanoDelMedio")) {
    HermanoDelMedio();
  } else if (estado.equals("revivir")) {
    revivir();
  } else if (estado.equals("tristeza")) {
    tristeza();
  } else if (estado.equals("reunionHm")) {
    reunionHm();
  } else if (estado.equals("suicidio")) {
    suicidio();

    //historia hermano mayor
  } else if (estado.equals("HermanoMayor")) {
    HermanoMayor();
  } else if (estado.equals("enfrentamiento")) {
    enfrentamiento();
  } else if (estado.equals("gana")) {
    gana();
  } else if (estado.equals("busca")) {
    busca();
  } else if (estado.equals("pierde")) {
    pierde();
  } else if (estado.equals("muerteHM")) {
    muerteHM();
  } else if (estado.equals("finHM")) {
    finHM();


    //Historia hermano menor
  } else if (estado.equals("HermanoMenor")) {
    HermanoMenor();
  } else if (estado.equals("anios")) {
    anios();
  } else if (estado.equals("capa")) {
    capa();
  } else if (estado.equals("finhmen")) {
    finhmen();
  } else if (estado.equals("finCompartido")) {
    finCompartido();
  } else if (estado.equals("hmenbusca")) {
    hmenbusca();
  }



  println("Estado:" + estado);
}
void mousePressed() {
  //BOTONES//

  //1-Pantalla inicio
  // boton medio, EMPEZAR
  
  if (botonPressed(mouseX, mouseY, width/2, 350, 100, 50) && estado.equals("titulo")) { 
    estado = "intro";
  }
  if (botonPressed(mouseX, mouseY, 100, 50, 100, 50) && estado.equals("titulo")) { 
    estado = "creditos";
  }
  //0- Pantalla creditos 
  //Volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("creditos")) { 
    estado = "titulo";
  }
  //2-Pantalla Introduccion
  //-Avanzar
  if (botonPressed(mouseX, mouseY, 650, 350, 100, 50) && estado.equals("intro")) { 
    estado = "Rio";
  }
  //-volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("intro")) { 
    estado = "titulo";
  }

  //3-Pantalla Rio
  //-Avanzar
  if (botonPressed(mouseX, mouseY, 500, 330, 100, 50) && estado.equals("Rio")) { 
    estado = "muerte";
  }
  //-Volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("Rio")) { 
    estado = "intro";
  }

  //4-Pantalla muerte
  //-Avanzar
  if (botonPressed(mouseX, mouseY, 700, 50, 100, 50) && estado.equals("muerte")) { 
    estado = "regalo";
  }
  //-Volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("muerte")) { 
    estado = "Rio";
  }

  //5-Pantalla regalo
  //-Avanzar
  if (botonPressed(mouseX, mouseY, width/2, 370, 100, 50) && estado.equals("regalo")) { 
    estado = "premios";
  }
  //-Volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("regalo")) { 
    estado = "muerte";
  }

  //6-Pantalla Premios
  //-Avanzar
  if (botonPressed(mouseX, mouseY, 100, 300, 120, 70) && estado.equals("premios")) { 
    estado = "HermanoDelMedio";
  }
  if (botonPressed(mouseX, mouseY, width/2, 300, 105, 70) && estado.equals("premios")) { 
    estado = "HermanoMayor";
  }
  if (botonPressed(mouseX, mouseY, width-150, 300, 105, 70) && estado.equals("premios")) { 
    estado = "HermanoMenor";
  }
  //-Volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("premios")) { 
    estado = "regalo";
  }

  //Volver a Premios de los hermanos
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50)) { 
    if (estado.equals("HermanoDelMedio")||estado.equals("HermanoMayor")|| estado.equals("HermanoMenor")) { 
      estado = "premios";
    }
  }

  //7- Pantalla HermanoDelMedio
  //-avanzar
  if (botonPressed(mouseX, mouseY, width-100, 220, 100, 50) && estado.equals("HermanoDelMedio")) { 
    estado = "revivir";
  }

  //-Pantalla revivir
  //-avanzar
  if (botonPressed(mouseX, mouseY, width/2, 350, 100, 50) && estado.equals("revivir")) { 
    estado = "tristeza";
  }
  //volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("revivir")) { 
    estado = "HermanoDelMedio";
  }

  //7-Pantalla tristeza
  //Avanzar eleccion 1
  if (botonPressed(mouseX, mouseY, 500, 50, 110, 50) && estado.equals("tristeza")) { 
    estado = "suicidio";
  }
  //Avanazar eleccion 2
  if (botonPressed(mouseX, mouseY, 300, 50, 170, 70) && estado.equals("tristeza")) { 
    estado = "reunionHm";
  }
  //Volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("tristeza")) { 
    estado = "revivir";
  }

  //8-Pantalla suicidio
  //Volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("suicidio")) { 
    estado = "revivir";
  }

  //9-Pantalla reunionHm
  if (botonPressed(mouseX, mouseY, width-150, 50, 100, 50) && estado.equals("reunionHm")) { 
    estado = "finCompartido";
  } 
  //Volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("reunionHm")) { 
    estado = "revivir";
  } 




  //7- Pantalla HermanoMayor
  //-Avanzar 
  if (botonPressed(mouseX, mouseY, width-150, height-100, 100, 50) && estado.equals("HermanoMayor")) { 
    estado = "enfrentamiento";
  }
  //-volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("HermanoMayor")) { 
    estado = "premios";
  }

  //8-Pantalla Enfrentamiento
  //-Avanzar eleccion 1
  if (botonPressed(mouseX, mouseY, 500, 250, 100, 50) && estado.equals("enfrentamiento")) { 
    estado = "gana";
  }
  //Avanzar eleccion 2 
  if (botonPressed(mouseX, mouseY, 300, 250, 100, 50) && estado.equals("enfrentamiento")) { 
    estado = "pierde";
  }
  //-volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("enfrentamiento")) { 
    estado = "HermanoMayor";
  }

  //9-Pantalla gana
  //-Avanzar 
  if (botonPressed(mouseX, mouseY, width-150, 50, 100, 50) && estado.equals("gana")) { 
    estado = "muerteHM";
  }
  //-volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("gana")) { 
    estado = "enfrentamiento";
  }
  //10-Pantalla pierde
  //-volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("pierde")) { 
    estado = "enfrentamiento";
  }
  if (botonPressed(mouseX, mouseY, width-150, 50, 100, 50) && estado.equals("pierde")) { 
    estado = "busca";
  }

  //10-Pantalla busca
  //-volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("busca")) { 
    estado = "pierde";
  }
  if (botonPressed(mouseX, mouseY, width-100, height-100, 100, 50) && estado.equals("busca")) { 
    estado = "finCompartido";
  }


  //11-Pantalla muerteHM
  //-Avanzar 
  if (botonPressed(mouseX, mouseY, width-150, 250, 100, 50) && estado.equals("muerteHM")) { 
    estado = "finHM";
  }
  //-volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("muerteHM")) { 
    estado = "asesinato";
  }
  
  //-Pantalla HermanoMenor
  if (botonPressed(mouseX, mouseY, 700, 50, 100, 50) && estado.equals("HermanoMenor")) { 
    estado = "anios";
  }
  
  //-Pantalla anios
  //Volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("anios")) { 
    estado = "HermanoMenor";
  }
    if (botonPressed(mouseX, mouseY, 300, 250, 150, 70) && estado.equals("anios")) { 
    estado = "capa";
  }
  if (botonPressed(mouseX, mouseY, 500,250, 150, 70) && estado.equals("anios")) { 
    estado = "hmenbusca";
  }

  //-Pantalla capa
  //Volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("capa")) { 
    estado = "anios";
  }
  //Avanzar 
  if (botonPressed(mouseX, mouseY, 700, 50, 100, 50) && estado.equals("capa")) { 
    estado = "finhmen";
  }

  //-Pantalla hmenbusca
  //Volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("hmenbusca")) { 
    estado = "anios";
  }
  //Avanzar 
  if (botonPressed(mouseX, mouseY, 700, 50, 100, 50) && estado.equals("hmenbusca")) { 
    estado = "finCompartido";
  }
  //Volver
  if (botonPressed(mouseX, mouseY, ubic, ubic, 50, 50) && estado.equals("finhmen")) { 
    estado = "capa";
  }
  
  //12-Pantalla finalCompartido
  //volver al inicio
  if (botonPressed(mouseX, mouseY, 250, 350, 100, 50)) { 
    if (estado.equals("finHM")||estado.equals("suicidio")||estado.equals("finCompartido")||estado.equals("finhmen")) {
      estado = "titulo";
    }
  }
  //13-elegir otro hermano
  if (botonPressed(mouseX, mouseY, 600, 350, 150, 70)) { 
    if (estado.equals("finHM")||estado.equals("suicidio")||estado.equals("finCompartido")||estado.equals("finhmen")) {
      estado = "premios";
    }
  }
  
 
}
