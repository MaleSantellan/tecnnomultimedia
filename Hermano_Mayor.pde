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
  if(numImg<HM.length-1){
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

void busca() {
  botonV(ubic,ubic,50,50);
  botonA( width-100, height-100, 100, 50);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[9], width/2, 300);
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
