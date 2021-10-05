//#11
void HermanoDelMedio() {
  imageMode(CENTER);
  image (HP[7],width/2,height/2,width,anchoimg);
  botonV(ubic,ubic,50,50);
  botonA(width-100, 220, 100, 50);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[12], width/2, 300);
}
void revivir(){
  imageMode(CENTER);
  image (HP[15],width/2,height/2,width,anchoimg);
  textSize(25);
  textAlign(CENTER);
  fill(255);
  text(historia[22], width/2, 50);
  botonV(ubic,ubic,50,50);
  botonA(width/2, 350, 100, 50);
}
//#12
void tristeza(){
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
