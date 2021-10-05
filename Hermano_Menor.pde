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
  text(historia[16], width/2, 300);
}

//#16
void anios() {
  if (frameCount%5 == 0) { 
  if(numImg<M.length-1){
   numImg++;
  } else { 
    numImg=0;
  }
  }
  imageMode(CENTER);
  image (hmen[numImg],width/2,height/2,width,anchoimg);
  botonV(ubic,ubic,50,50);
  botontxt(500,250, 150, 50,"buscar a sus\n hermanos");
  botontxt(300,250, 150, 50,"continuar con \n su vida ");
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
