void titulo (){
    imageMode(CENTER);
    image (HP[0],width/2,height/2);
    textSize(50);
    textAlign(CENTER);
    fill(255);
    text("La Fabula de los Tres Hermanos \n Harry Potter", width/2, height/2);
    botontxt((width/2)-50, 300, 100, 50,"Empezar");
}
void creditos (){
    textSize(50);
    textAlign(CENTER);
    fill(255);
    text(creditos[i], width/2, height/2);
    botontxt(tam,tam, 100, 50,"creditos");
}


void intro() {
  //IMAGENES
  imageMode(CENTER);
  image (HP[1],width/2,height/2,width,anchoimg);
  //TEXTO
  textSize(25);
  textAlign(CENTER);
  fill(0);
  text("Habia una vez tres hermanos que viajaban por una solitaria \ny sinuosa carretera. En un momento llegaron a un río \n demasiado profundo para rodearlo", width/2, height/2);
  //BOTONES 
  botonA(width-150, height-100, 100, 50);
  botonV(tam,tam,tam,tam);
}
void Rio() {
  imageMode(CENTER);
  image (HP[2],width/2,height/2,width,anchoimg);
  botonV(tam,tam,tam,tam);
  botonA(width-150, height-100, 100, tam);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text("como los tres hombres eran muy diestros en las artes mágicas\n no tuvieron más que agitar sus varitas\n e hicieron aparecer un puente para salvar las traicioneras aguas.", width/2, height/2);
}
void muerte() {
  //-Segundero-//
  if (frameCount%7 == 0) { 
  if(numImg<M.length-1){
   numImg++;
  } else { 
    numImg=0;
  }
  }
  imageMode(CENTER);
  image (M[numImg],width/2,height/2,width,anchoimg);
  botonA((width/2)-50, 330, 100, 50);
  botonV(tam,tam,tam,tam);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text("una figura encapuchada les cerró el paso.", width/2, 300);
}

void premios() {
  imageMode(CENTER);
  image (HP[10],width/2,height/2,width,anchoimg);
  textSize(30);
  textAlign(CENTER);
  fill(200);
  text("Seguir historia de...", width/2, 100);
  botontxt(tam, 300, 100, tam, "Hermano\n del medio");
  botontxt(width/2, 300, 100, tam,"Hermano\n Mayor");
  botontxt(width-150, 300, 100, tam,"Hermano\n Menor");
}

void HermanoMayor() {
  imageMode(CENTER);
  image (HP[4],width/2,height/2,width,anchoimg);
  botontxt(tam, tam, 100, tam,"Elegir otra\n historia");
  botonA(width-150, height-100, 100, tam);
  textSize(25);
  textAlign(CENTER);
  fill(0);
  text("el hermano mayor pide la varita\n mas poderosa que existiera", width/2, 300);
}
void enfrentamiento() {
  if (frameCount%7 == 0) { 
  if(numImg<M.length-1){
   numImg++;
  } else { 
    numImg=0;
  }
  }
  imageMode(CENTER);
  image (HM[numImg],width/2,height/2,width,anchoimg);
  botontxt(50, 50, 100, 50,"Elegir otra\n historia");
  botonA(width-150, height-100, 100, 50);
  textSize(25);
  textAlign(CENTER);
  fill(0);
  text("viajo y busco a un mago con el que se llevaba muy mal\n y decidio tener un enfrentamiento con este", width/2, 300);
}
void HermanoDelMedio() {
  imageMode(CENTER);
  image (HP[7],width/2,height/2,width,anchoimg);
  botontxt(50, 50, 100, 50,"Elegir otra historia");
  botonA(width-150, height-100, 100, 50);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text("El hermano del medio pidio que le diera\n el poder de revivir a los muertos", width/2, 300);
}
void HermanoMenor() {
  imageMode(CENTER);
  image (HP[8],width/2,height/2,width,anchoimg);
  botontxt(50, 50, 100, 50,"Elegir otra historia");
  botonA(width-150, height-100, 100, 50);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text("El hermano mas joven pidió algo que \n le permitiera marcharse de aquel lugar\n sin que ella pudiera seguirlo.", width/2, 300);
}
