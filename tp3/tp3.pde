// link al video explicación https://youtu.be/XHxP87IpvOk

int cant = 10;
PImage imagen;
boolean cambio = false;

void setup() {
  size(800, 400);
  rectMode(CENTER);
  imagen = loadImage("imagen.jpg");
  image(imagen, 0, 0);
}

void draw() {
  background(200);
  image(imagen, 0, 0);
  
  for (int i = 0; i < cant; i++) {
    int tam = 200 - (i * 20);
    
    for (int j = 0; j < 4; j++) {
      int posX, posY;
      color c1, c2;
      
      if (j == 0) {  // arriba izq
        posX = 500;
        posY = 100;
        if (cambio) {
          c1 = color(random(255), random(255), random(255));  // Color aleatorio 1
          c2 = color(random(255), random(255), random(255));  // Color aleatorio 2
        } else {
          c1 = color(#014D20);  // verde oscuro original
          c2 = color(#9FEABD);  // Color final original
        }
      } else if (j == 1) {  // arriba der
        posX = 700;
        posY = 100;
        if (cambio) {
          c1 = color(random(255), random(255), random(255));  // Color aleatorio 1
          c2 = color(random(255), random(255), random(255));  // Color aleatorio 2
        } else {
          c1 = color(#9D060B);  // bordo original
          c2 = color(#FFC1C3);  // Color final original
        }
      } else if (j == 2) {  // abajo izq
        posX = 500;
        posY = 300;
        if (cambio) {
          c1 = color(random(255), random(255), random(255));  // Color aleatorio 1
          c2 = color(random(255), random(255), random(255));  // Color aleatorio 2
        } else {
          c1 = color(#622700);  // marrón original
          c2 = color(#FFE795);  // Color final original
        }
      } else {  // abajo der
        posX = 700;
        posY = 300;
        if (cambio) {
          c1 = color(random(255), random(255), random(255));  // Color aleatorio 1
          c2 = color(random(255), random(255), random(255));  // Color aleatorio 2
        } else {
          c1 = color(#4F1C86);  // violeta original
          c2 = color(#E3C9FF);  // Color final original
        }
      }
      
      // Calculamos el color intermedio utilizando lerpColor
      float inter = map(i, 0, cant-1, 0, 1); // Interpolación lineal
      color c = lerpColor(c1, c2, inter);
      
      fill(c);
      noStroke();
      rect(posX, posY, tam, tam);
    }
  }
}

void mousePressed() {
  // Cambiar el estado de los colores al hacer clic
  cambio = !cambio;
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    // Resetear los colores al estado original al presionar 'R'
    cambio = false;
  }
}
