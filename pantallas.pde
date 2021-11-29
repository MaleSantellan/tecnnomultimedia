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
  text(historia[3], width/2, 200);
}
void regalo(){
  imageMode(CENTER);
  image (HP[3],width/2,height/2,width,anchoimg);
  textSize(30);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[21], width/2, 200);
  botonV(ubic,ubic,50,50);
  botonA(width/2, 370, 100, 50);
  
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
  botontxt(width-150, 300, 105, 70,"Hermano\n Menor");
}

void finCompartido() {
  imageMode(CENTER);
  image (HP[21],width/2,height/2,width,height);
  botontxt(250, 350, 100, 50, "Inicio");
  botontxt(600, 350, 150, 70,"Elegir otro \n hermano");
  textSize(25);
  textAlign(CENTER);
  fill(0);
  text(historia[20], width/2, 100);
}
