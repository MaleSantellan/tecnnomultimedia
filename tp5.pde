//TRABAJO PRACTICO N5
//Nombre: Malena Fabiana Santellan
//Legajo: 88115/7
//Link del video: https://youtu.be/Ep93DtITqmU

import processing.sound.*;
SoundFile ambiente, punto, menosvida, suspenso;
Juego j;

void setup() {
  size(800, 600);
  j= new Juego();
  punto = new SoundFile (this, "punto.mp3");
  ambiente = new SoundFile (this, "ambiente1.mp3");
  suspenso = new SoundFile (this, "suspenso.mp3");
  menosvida = new SoundFile (this,"menosvida.mp3");
  ambiente.amp(0.5);
  ambiente.loop();
  
}
void draw() {
  j.dibujarJuego();
  if (keyPressed) {
  j.moverPersonaje(keyCode);
  }
}
void keyPressed(){
  j.avanzar(keyCode);
  
}
void mousePressed(){
j.click();
}
