class Texto {
  PFont titulo, cuerpo;
  String [] historia ={"La Fabula de los Tres Hermanos", //0
    "Habia una vez tres hermanos que\n viajaban por una solitaria \ny sinuosa carretera. En un momento llegaron a un río \n demasiado profundo para rodearlo", //1
    "Como los tres hombres eran muy diestros en las artes mágicas\n no tuvieron más que agitar sus varitas\n e hicieron aparecer un puente para salvar las traicioneras aguas.", //2
    "Cuando se hallaban hacia la mitad del puente, una figura \nencapuchada les cerró el paso. Y la Muerte les habló. \nEstaba contrariada porque acababa de\n perder a tres posibles víctimas, ya que normalmente\n los viajeros se ahogaban en el río.", //3
    "Seguir historia de...", //4
    "El hermano mayor pide la varita\n mas poderosa que existiera.", //5
    "Viajó, buscó a un mago con el que se llevaba muy mal\n y decidió tener un enfrentamiento con éste.", //6
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
    "El hermano del medio decidio \nvolver a su hogar, donde vivia solo.\n Ahi uso la piedra para revivir a la muchacha con quien\n se habría casado si ella no hubiera muerto", //22
    "Saludando a la Muerte como a un\n viejo amigo, partieron de esta vida como iguales."//23
  };
  String [] creditos;
  
  Texto() {
    titulo = createFont("titulo.ttf",30);
    cuerpo = loadFont("cuerpo.vlw");
    creditos = loadStrings("creditos.txt");
  }
}
