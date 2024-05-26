PImage img;
PImage imagen2;
PImage imagen3;
PImage imagen4;
int estado = 1;
int posY;
float posicionX, posicionY, velX;

void setup () {  
  size (640, 480);
  background (0);
  img = loadImage ("foto1.jpg");
  imagen2 = loadImage ("foto2.jpg");
  imagen3 = loadImage ("foto3.jpg");
  imagen4 = loadImage ("foto4.jpg");
  frameRate(30);
  posY = 500; 
  posicionX = 320;
  posicionY = 240;
  velX = 1;
  reiniciar ();

  }
void reiniciar () {
  
 estado = 1;
 posY = 500;
 posicionX = 320;
 posicionY = 240;
 velX = 1;
 image (img, 0, 0);
 text ("El almohadón de plumas, por Horacio Quiroga", 27, 38); 
  
}

void mousePressed () {

println("coordenada" +mouseX+ - +mouseY );

switch (estado) {
    case 1:
      if (mouseX > 373 && mouseX < 625 && mouseY > 340 && mouseY < 405) {
        estado = 2;
        frameCount = 0;
        posY = 500;
        posicionX = 320;
        posicionY = 240;
        velX = 1;
    
      }
      break;

     case 4:
      if (estado == 4) { if (mouseX > 373 && mouseX < 625 && mouseY > 340 && mouseY < 405 ) {
        frameCount = 0;
        estado = 1;
        reiniciar ();
      }
      }
      break;
      
}
}
void draw () {
  
 switch (estado) {
  
   case 1:
   posY = 500;
  image (img, 0, 0);
  fill (0);
  rect (12, 11, 500, 45);
  push ();
  fill (mouseX, mouseY, 0, 255);
  textSize (20);
  text ("El almohadón de plumas, por Horacio Quiroga", 27, 38); 
pop ();
//rect grande
  if (mouseX>373 && mouseX<625 && mouseY>340 && mouseY<405) {
    fill(214, 89, 210);
  } else {
    fill(200);
  }
  rect(373, 340, 252, 65);
 
 //rect chiquito
  if (mouseX>373 && mouseX <625 && mouseY >340 && mouseY <405) {
    fill( 255, 148, 252 );
  } else {
    fill(70);
  }
  noStroke();
  rect(378, 345, 242, 55);

//texto
push();
  if (mouseX > 373 && mouseX < 625 && mouseY >340 && mouseY < 405) {
    fill (255); 
  } else {
    fill (150);
  }
  textSize (18);
  text ("INICIAR PRESENTACIÓN", 385, 379);
  pop ();
  break;
  
  case 2:
  
  println(frameCount);
  image(imagen2, 0, 0, 721, 480);
 push ();
 textSize (20);
 fill (255);
 text ("El autor de este cuento es Horacio Quiroga, \nun reconocido escritor uruguayo que se \npopularizó principalmente por sus cuentos,\nexplorando temas como la naturaleza,\nla locura y la muerte.", 137, posY);
 if (posY > 280) {posY --; 
}
pop();
push();
if (frameCount > 165) {
        estado = 3; 
      } else if (estado == 2) {
        image(imagen2, 0, 0, 721, 480);
        textSize(20);
        fill(255);
        text("El autor de este cuento es Horacio Quiroga, \nun reconocido escritor uruguayo que se \npopularizó principalmente por sus cuentos,\nexplorando temas como la naturaleza,\nla locura y la muerte.", 137, posY);
        if (posY > 280) {
          posY--;
        }
pop();
}

break;
case 3:
push();
image (imagen3, 0, 0, 640, 480);
fill(0, 100);
rectMode(CENTER);
rect(width/2, height/2, 600, 200);
textSize(20);
fill (231, 232, 42, mouseY);
textAlign(CENTER);
text ("El cuento narra la historia de dos jóvenes recién casados \n Alicia y Jordán, que comienzan a experimentar síntomas \n de una enfermedad por parte de Alicia. \n La joven se deteriora rápidamente hasta su muerte, y descubren \n que dentro del almohadón de plumas que había en la cama \n de la pareja, había un nido de ácaros que se alimentaban \n de la sangre de Alicia mientras dormía.", width / 2, 180);
pop();
println(frameCount);
if (frameCount > 650) {
  estado = 4;
}

break;
case 4:
println (frameCount);
image (imagen4, 0, 0, 640, 480);
  
push();
if (posicionX >= width) {
  velX = -1;
}

if (posicionX <= 0) {
 velX = 1; 
}

posicionX = posicionX + velX;

fill (255);
textSize (50);
text ("Fin", posicionX, posicionY);
pop();


rectMode (CORNER);
//rect grande
  if (mouseX>373 && mouseX<625 && mouseY>340 && mouseY<405) {
    fill(214, 89, 210);
  } else {
    fill(200);
  }
  rect(373, 340, 252, 65);
 
 //rect chiquito
  if (mouseX>373 && mouseX <625 && mouseY >340 && mouseY <405) {
    fill( 255, 148, 252 );
  } else {
    fill(70);
  }
  noStroke();
  rect(378, 345, 242, 55);


//texto
  if (mouseX > 373 && mouseX < 625 && mouseY >340 && mouseY < 405) {
    fill (255); 
  } else {
    fill (150);
  }
  textSize (18);

  text ("VOLVER AL INICIO",499, 379);


 }
  
}
