//#1
void titulo (){
    imageMode(CENTER);
    image (HP[0],width/2,height/2);
    textSize(50);
    textAlign(CENTER);
    fill(255);
    text(historia[0], width/2, height/2);
  //botontxt px     , py , ancho,alto, mensaje 
    botontxt(width/2, 350, 100, 50,"Empezar");
    botontxt(100,50,100,50,"Créditos");
}
void creditos (){
    imageMode(CENTER);
    image (papiro,width/2,height/2,width,height);
    textSize(50);
    textAlign(CENTER);
    fill(255);
   // text(creditos, width/2, height/2);
    botonV(ubic,ubic,50,50);
    for (int i=0; i<creditos.length; i++){
    textSize(20);
    fill(0);
    textAlign(CENTER,TOP);
    text(creditos[i],width/2, i*40);
  }
  
}

//#2
void intro() {
  //IMAGENES
  imageMode(CENTER);
  image (HP[1],width/2,height/2,width,anchoimg);
  //TEXTO
  textSize(25);
  textAlign(CENTER);
  fill(0);
  text(historia[1], width/2, height/2);
  //BOTONES 
  botonA(650, 350, 100, 50);
  botonV(ubic,ubic,50,50);
}
//#3
void Rio() {
  imageMode(CENTER);
  image (HP[2],width/2,height/2,width,anchoimg);
  botonV(ubic, ubic, 50, 50);
  botonA( 500, 330, 100, 50);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[2], width/2, height/2);
}

//#4
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
  botonA(700, 50, 100, 50);
  botonV(ubic,ubic,50,50);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[3], width/2, 300);
}

//#5
void premios() {
  imageMode(CENTER);
  image (HP[10],width/2,height/2,width,anchoimg);
  textSize(30);
  textAlign(CENTER);
  fill(200);
  text(historia[4], 600, 50);
  botonV(ubic,ubic,50,50);
  botontxt(100, 300, 120, 70, "Hermano\n del medio");
  botontxt(width/2, 300, 105, 70,"Hermano\n Mayor");
  botontxt(width-150, 300, 100, 50,"Hermano\n Menor");
}

//#11
void HermanoDelMedio() {
  imageMode(CENTER);
  image (HP[7],width/2,height/2,width,anchoimg);
  botonV(ubic,ubic,50,50);
  botonA(width-100, height-50, 100, 50);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[12], width/2, 300);
}

//#12
void revivir(){
  if (frameCount%5 == 0) { 
  if(numImg<M.length-1){
   numImg++;
  } else { 
    numImg=0;
  }
  }
  imageMode(CENTER);
  image (hmed[numImg],width/2,height/2,width,anchoimg);
  botonV(ubic,ubic,50,50);
  botontxt(500,50,110,50,"suicidarse");
  botontxt(300,50,170,70,"Buscar a\n sus hermanos");
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[13], width/2, 300);
}
//#14
void suicidio() {
  imageMode(CENTER);
  image (HP[20],width/2,height/2,width,anchoimg);
  botonV(ubic,ubic,50,50);
  botontxt(250, 350, 100, 50, "Inicio");
  botontxt(600, 350, 150, 70,"Elegir otro \n hermano");
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[14], width/2, height/2);
}

void reunionHm() {
  botonV(ubic,ubic,50,50);
  botonA(width-150, 50, 100, 50);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[15], width/2, 300);
}

//#6
void HermanoMayor() {
  imageMode(CENTER);
  image (HP[4],width/2,height/2,width,anchoimg);
  botonV(ubic,ubic,50,50);
  botonA(width-150, height-100, 100, 50);
  textSize(25);
  textAlign(CENTER);
  fill(0);
  text(historia[5], width/2, 300);
}

//#7
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
  botonV(ubic,ubic,50,50);
  botontxt(500,250, 100, 50,"gana");
  botontxt(300,250, 100, 50,"pierde");
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[6], width/2, 300);
}
void pierde() {
  botonV(ubic,ubic,50,50);
  botonA(width-150, 50, 100, 50);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[8], width/2, 300);
}
//#8
void gana() {
  imageMode(CENTER);
  image (HP[11],width/2,height/2,width,anchoimg);
  botonV(ubic,ubic,50,50);
  botonA(width-150, 50, 100, 50);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[7], width/2, 300);
}

//#9
void muerteHM() {
  imageMode(CENTER);
  image (HP[13],width/2,height/2,width,anchoimg);
  botonV(ubic,ubic,50,50);
  botonA(width-150, 250, 100, 50);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[10], width/2, 300);
}

//#10
void finHM() {
  imageMode(CENTER);
  image (HP[14],width/2,height/2,width,anchoimg);
  botonV(ubic,ubic,50,50);
  botontxt(250, 350, 100, 50, "Inicio");
  botontxt(600, 350, 150, 70,"Elegir otro \n hermano");
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[11], width/2, 50);
}

//Historia Hermano menor
//#15
void HermanoMenor() {
  imageMode(CENTER);
  image (HP[8],width/2,height/2,width,anchoimg);
  botonV(ubic,ubic,50,50);
  botonA(width-150, height-100, 100, 50);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[15], width/2, 300);
}

//#16
void anios() {
  botonV(ubic,ubic,50,50);
  botonA(width-150, height-100, 100, 50);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[16], width/2, 300);
}

//#17
void capa() {
  botonV(ubic,ubic,50,50);
  botonA(width-150, height-100, 100, 50);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[18], width/2, 300);
}
