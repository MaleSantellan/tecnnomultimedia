size(400,400);
background(255);
noStroke();
fill(255,0,0);//rojo
triangle(150,100,200,10,250,100);
fill(255,255,0);//amarillo
triangle(250,100,350,100,300,190);
fill(255,0,255);//magenta
triangle(150,100,50,100,100,190);
fill(0,0,255);//azul
triangle(100,190,50,280,150,280);
fill(0,255,255);//cian
triangle(150,280,200,370,250,280);
fill(0,255,0);//verde
triangle(250,280,300,190,350,280);

//colores secundarios
fill(238,130,238);//violeta
quad(100,190,75,235,20,190,75,145); 
fill(173,255,47);//verde lima
quad(300,190,325,235,380,190,325,145); 
fill(255,165,0);//naranja
quad(250,100,302,100,290,30,227,60); 
//  (250,100,302,100,(290,30),(227,60)
fill(255,105,180); //fucsia
quad(150,100,100,100,110,30,172,60); 
fill(0,250,154); //verde cian
quad(250,280,302,280,298,360,225,323); 
fill(0, 191, 255);//azur 
quad(150,280,175,323,100,360,100,280); 

//lineas interiores
stroke(0);
strokeWeight(1);
noFill();
triangle(200,100,128,240,272,240);
line(200,100,200,280);
line(128,140,272,240);
line(272,140,128,240);
