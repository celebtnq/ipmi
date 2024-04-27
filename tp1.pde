PImage palta;

void setup () {
  
  size (800,400);
  background (255,255,255);
  palta = loadImage ("palta.png");
  
}

void mouseClicked () {
  
  println (mouseX, mouseY);
  
}

void draw () {
  
  image (palta, 400, 0, 400, 400);
  
  //palta1
  
  //verde oscuro
  fill (35, 175, 34); 
  stroke (90, 67, 44);
  strokeWeight (1);
  bezier (71, 257, 17, 205, 83, 101, 177, 106);
  bezier (71, 257, 145, 294, 230, 205, 177, 106);
  
 //verde medio
  fill (75, 203, 74);
  noStroke ();
  bezier (76, 250, 40, 190, 96, 118, 179, 106);
  bezier (76, 250, 168, 269, 190, 210, 179, 106);
  //amarillo
  fill (225, 237, 136);
  bezier (79, 244, 168, 269, 190, 170, 176, 112);
  bezier (80, 244, 50, 185, 115, 128, 177, 112);
  //hueco
  fill (176, 193, 47);
  ellipse (135, 186, 65, 70);
  fill (221, 242, 39);
  bezier (130, 219, 157, 229, 184, 182, 152, 158);
  
  //arreglito
  fill (255);
  noStroke ();
  ellipse (180, 106, 30, 20);
  
  //palta 2
  fill (90, 67, 44);
  stroke (90, 67, 44);
  strokeWeight (1);
  //borde
  bezier (190, 141, 133, 195, 225, 320, 300, 266);
  
  fill (35, 175, 34); 
  //inf
  bezier (190, 141, 133, 195, 230, 310, 300, 266);
  //sup
  bezier (189, 142, 255, 100, 330, 200, 299,266);
  
  //verde medio
  fill (75, 203, 74);
  noStroke ();
  bezier (194, 147, 145, 190, 225, 300, 293, 263);
  bezier (194, 147, 260, 110, 325, 215, 293, 263);
  
  //amarillo
  fill (225, 237, 136);
  bezier (196, 148, 155, 190, 215, 290, 291, 261);
  bezier (195, 148, 260, 120, 315, 205, 290, 261);
  
  //carozo
  fill (149, 60, 24);
  ellipse (241, 193, 60, 60);
  fill (222, 103, 56);
  ellipse (235, 188, 43, 43);
  
}
