/*  
---Trabajo practico N° 3---
---PIRAMIDES ARCOIRIS---
_Malena Fabiana Santellan
_Comision 1
_link del video: https://youtu.be/w2_p4j3PBkI
*/


int ancho, alto;
int cant=10;
int cantcirc=15;
void setup(){
  size (500,500);
  surface.setResizable(true); 
  mouseX =  width/2;
  mouseY = height/2;
}

void draw(){
  background(0);
   ancho=width/cant;
   alto= height/cant;
  //--para la grilla de circulos--//
  //me crea todos los circulos en x (filas
  for (int x=0; x<cant; x++){ 
  //me crea todos los circulos en y (columnas
    for (int y=0; y<cant; y++){
      ellipseMode(CORNER);
      ellipse(x*ancho,y*alto,ancho,alto);
      
      //--para los circulos uno adentro del otro--//
      for(int c=0; c<cantcirc; c++){
      float tamc = map(c, 0, cantcirc-1 , ancho, 2);
      
      //Variables para interactividad de color
      colorMode(HSB, width, 100, 100);
      float arcoiris = map(c,0, cantcirc-1,0, 360);
      float grosor = map(c, 0, cant-1, 5, 2  );
      
      //a que distancia estamos de cada ellipse con respecto a la posicion del mouse
      float distan = dist(mouseX, mouseY, x*ancho, y*alto);
      //lo mas lejos que puede estar el mouse de alguna de las celdas 
      float disMaxima = dist(0, 0, width, height);
      //mientras el mouse se mueva de 0 a distancia maxima, 
      //va a ir cambiando el color, desde el mayor valor, a un valor determinado por mi 
      float cborde = map(distan, 0, disMaxima, width, 60); 
      
      //--variabes para interactividad de movimiento--//
      //la primera repetición, la primera ellipse,coincida con el centro de la celda que lo contiene 
      //y la ultima, coincida con mouse x y mouse y respectivamente. 
      //constrain es para limitar el rango en el que se va a realizar esta interaccion con el mouse
      float posx = map(c, 0, cantcirc-1, x*ancho+ancho/2, constrain(mouseX,x*ancho+ancho/8,(x+1)*ancho-ancho/8)); 
      float posy = map(c, 0, cantcirc-1, y*alto+alto/2, constrain (mouseY,y*alto+alto/8, (y+1)*alto-alto/8));
      
      //para que se aplique el efecto de color sobre todas las ellipses
      stroke(cborde, 100, 1000);
      ellipseMode(CENTER);
      
   //para que cada ellipse tenga un color de arcoiris individual
   //y para que aquellas impares, no tengan fill
   if (c%2==0) {
      stroke(arcoiris, 100, 100);
      strokeWeight(grosor);
    } else {
      noFill();
    }
    ellipse(posx, posy, tamc, tamc);
  }
    
    }
  }
  }
  
//--BOTON DE REINICIO--//
//los valores del mouse vuelven al medio al hacer click
void mousePressed(){
  mouseX =  width/2;
  mouseY = height/2;
}
  
