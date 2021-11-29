//Historia Hermano menor

//#15
void HermanoMenor() {
  imageMode(CENTER);
  image (HP[8],width/2,height/2,width,anchoimg);
  botonV(ubic,ubic,50,50);
  botonA(700, 50, 100, 50);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[16], width/2, 300);
}

//#16
void anios() {
  if (frameCount%8 == 0) { 
  if(numImg<hmen.length-1){
   numImg++;
  } else { 
    numImg=0;
  }
  }
  imageMode(CENTER);
  image (hmen[numImg], width/2, height/2,width, anchoimg);
  botonV(ubic,ubic,50,50);
  botontxt(500,250, 150, 70,"buscar a sus\n hermanos");
  botontxt(300,250, 150, 70,"continuar\ncon su vida ");
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[17], width/2, 350);
}

//#17
void capa() {
  imageMode(CENTER);
  image (HP[19],width/2,height/2,width,anchoimg);
  botonV(ubic,ubic,50,50);
  botonA(700, 50, 100, 50);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[19], width/2, 300);
}

void finhmen() {
  if (frameCount%4 == 0) { 
  if(numImg<finhmen.length-1){
   numImg++;
  } else { 
    numImg=0;
  }
  }
  imageMode(CENTER);
  image (finhmen[numImg], width/2, height/2,width, height);
  botonV(ubic,ubic,50,50);
  botontxt(250, 350, 100, 50, "Inicio");
  botontxt(600, 350, 150, 70,"Elegir otro \n hermano");
  textSize(25);
  textAlign(CENTER);
  fill(0);
  text(historia[23], width/2, 50);
}

void hmenbusca() {
  botonV(ubic,ubic,50,50);
  botonA(700, 50, 100, 50);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[18], width/2, 300);
}
