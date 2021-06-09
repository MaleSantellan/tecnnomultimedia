//---TRABAJO PRACTICO N°2---//
//---Creditos de Toradora!---//

//-Variables numericas-//
float posx, posy, dir, tam, segundos, grosor;
float px, py;
float mov;
float vel;
int t, sw;
float dy, dx, dirx, diry;
//-Variables de color-//
color c1;
//-Vaiables de texto-//
PFont titulo, personajes;
String estado; 
//-Variables de imagen-//
PImage ryuji;
PImage taiga;
PImage creador;
PImage jcs;

void setup(){
  size (600,400);
  background(255);
  //-valores iniciales-//
  t = 100;
  px =600;
  py=400;
  mov= random(2,40);
  sw=5;
  vel = 2;
  dx = width/2;
  dy = height/2;
  dirx = random(-2,2);
  diry= random(-2,2);
  taiga = loadImage("taiga.png");
  ryuji= loadImage("ryuiji.png");
  creador = loadImage("creador.png");
  jcs= loadImage("jcs.png");
  personajes = loadFont ("Arial-Black-100.vlw");
  titulo = loadFont("Please_write_me_a_song-100.vlw");
  c1 = color(random(255), random(255), random(255));
}
void draw(){
//-Segundero-//
  if (frameCount%30 == 0) { 
    segundos++; 
  }
  
//-Secuencia de aparicion-//
if(segundos<=1 && segundos <=5){
  estado= "inicio";
} else if (segundos>= 6 && segundos <=6.5){
  estado= "to";
} else if (segundos>= 7 && segundos <=7.5){
  estado = "ra";
} else if (segundos>= 8 && segundos <=8.5){
  estado = "do";
} else if (segundos>= 9 && segundos <=9.5){
  estado = "ra2"; 
} else if (segundos>=10 && segundos <=10.5){
estado= "!";
}else if (segundos>=11 && segundos <=12){
estado = "takasu"; 
}else if (segundos>=21 && segundos <= 22){
estado = "aisaka"; 
}else if (segundos>=28&& segundos <= 31){
estado = "creador"; 
}else if (segundos>=31.5 && segundos <= 50){
estado = "director"; 
}else if (segundos>=50.5 && segundos <= 55){
estado = "estudio"; 
}

//-Estados: pantallas-//

   //---INICIO---//
  if(estado.equals("inicio")){
  float opaco = map(segundos,0,20,0,255);
  fill(255,opaco);
  noStroke();
  rect(0,0,600,400);
  c1 = color(random(255), random(255), random(255));
  posx = random(width);
  posy = random(height);
  tam = random(90,200);
  grosor = random(0,20);
  noFill();
  stroke(c1);
  strokeWeight(grosor);
  ellipse(posx,posy,tam,tam);
}
  
  //-Titulo-//
   //TO
  if(estado.equals("to")){
  stroke(255);
  strokeWeight(sw);
  fill(236, 92, 162);
  ellipse(80,200,t,t);
  textFont(titulo);
  textSize(80);
  fill(255);
  text("To",60,220);
}

  //RA
  if(estado.equals("ra")){
  stroke(255);
  strokeWeight(sw);
  fill(248, 150, 87);
  ellipse(190,200,t,t);
  textFont(titulo);
  fill(255);
  text("ra",160,220);
}

 //DO
  if(estado.equals("do")){
  stroke(255);
  strokeWeight(sw);
  fill(95, 204, 245);
  ellipse(300,200,t,t);
  textFont(titulo);
  fill(255);
  text("do",270,220);
}

  //RA2
  if(estado.equals("ra2")){
  stroke(255);
  strokeWeight(sw);
  fill(205, 180, 110);
  ellipse(410,200,t,t);
  textFont(titulo);
  fill(255);
  text("ra",380,220);
  }
  
  //!
  if(estado.equals("!")){
  stroke(255);
  strokeWeight(sw);
  fill(242, 85, 102);
  ellipse(520,200,t,t);
  textFont(titulo);
  fill(255);
  text("!",520,220);
  }
  
  //---PERSONAJES---//
  //1°
  if(estado.equals("takasu")){
  float opaco2 = map(segundos,8,20,0,255);
  fill(255,opaco2);
  noStroke();
  rect(0,0,600,400);
  textFont(personajes);
  fill( 250, 153, 12, opaco2);
  text("RYUJI",px,200);
  text("TAKASU",px,300);
  px-=vel;
  imageMode(CENTER);
  image(ryuji,500,py+700,400,900);
  py-=vel;
  }
  
  //2°
if(estado.equals("aisaka")){
  float opaco2 = map(segundos,20,25,0,255);
  fill(255,opaco2);
  noStroke();
  rect(0,0,600,400);
  textFont(personajes);
  fill(236, 92, 162, opaco2);
  text("TAIGA",px-150,200);
  text("AISAKA",px-150,300);
  px+=vel;
  imageMode(CENTER);
  image(taiga,100,py+1050,400,900);
  py-=vel;
}


//---CREADOR---//

if(estado.equals("creador")){
  noStroke();
  fill(255);
  rect(0,0,600,400);
  image(creador,px-200,200,800,600);
  px+=1;
  textFont(personajes);
  textSize(50);
  fill(157, 224, 247);
  text("CREADOR",30,py+500);
  textSize(90);
  fill(89, 204, 243);
  text("YUYUKO",30,py+570);
  text("TAKEMIYA",50,py+640);
  py+=vel;


}

//---ESTUDIO---//
if(estado.equals("director")){
  float opaco2 = map(segundos,30,35,0,255);
  fill(255,opaco2);
  noStroke();
  rect(0,0,600,400);
  textFont(personajes);
  textSize(50);
  fill(239, 225, 196);
  text("DIRECTOR",px,130);
  textSize(90);
  fill(206, 182, 108);
  text("TATSUYUKI",px,200);
  text("NAGAI",px,290);
  px-=vel;
}

//---DIRECTOR---//
if(estado.equals("estudio")){
  fill(255);
  noStroke();
  rect(0,0,600,400);
  if (dx>= width-400/2||dx< 400/2){
    dirx = dirx *-1;
  }
  if (dy>= height-100/2||dy< 100/2){
    diry = diry *-1;
  }
    image(jcs,dx,dy,400,100);
    dx = dx+dirx;
    dy = dy+diry;
  }
}

//BOTON DE REINICIO
void keyPressed(){
  if(keyCode== ENTER){
    segundos=0;
    px=600;
    py=400;
  }
  
}
