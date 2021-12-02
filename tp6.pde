/* ---TRABAJO PRACTICO N6---*/
//-La Fabula de los Tres Hermanos, Harry Potter-//
//--Historia + Juego--//
//__Malena Santellan--//
//__Legajo: 88115/7--//
//__Comision 1--//

import processing.sound.*;
SoundFile ambiente, punto, menosvida;


Aventura a; 

void setup() {
  size(800, 600);
  a = new Aventura();
  ambiente = new SoundFile (this, "ambiente1.mp3");
  punto = new SoundFile (this, "punto.mp3");
  menosvida = new SoundFile (this, "menosvida.mp3");

  ambiente.loop();
}
void draw() {
  a.dibujarAventura();
}
void keyPressed() {
  a.avanzar(keyCode);
  a.moverhermanomenor(keyCode);
}
void mousePressed() {
  a.clickbot();
  a.click();
}
