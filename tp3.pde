//Milagros Orozco
//Legajo: 93501/7
//Video presentacion https://www.youtube.com/watch?v=Re4lVXSqRu0

PImage[] imagenes = new PImage[19];
String[] nombresImagenes = {
  "inicio.jpg",
  "p01.jpg",
  "p02.jpg",
  "p03.png",
  "p04.png",
  "p05.png",
  "p06.png",
  "p07.jpg",
  "p08.jpg",
  "p09.jpeg",
  "p10.jpeg",
  "p11.jpeg",
  "p12.jpeg",
  "p13.jpg",
  "p14.jpg",
  "p15.jpg",
  "p16.jpg",
  "p17.jpg",
  "p18.jpg"
};
PFont Letras;
String estado;
int cantidadCirculos = 5;

boolean estaEnBoton(float x, float y, float ancho, float alto) {
  return mouseX > x && mouseX < x + ancho && mouseY > y && mouseY < y + alto;
}

void setup() {
  size(600, 600);
  Letras = createFont("Arial", 16);
  textFont(Letras);
  estado = "inicio1";

  for (int i = 0; i < imagenes.length; i++) {
    imagenes[i] = loadImage(nombresImagenes[i]);
  }
}

void draw() {
  background(255);
  
  float botonX = 100;
  float botonY = 200;
  float botonAncho = 100;
  float botonAlto = 50;
  
  if (estaEnBoton(botonX, botonY, botonAncho, botonAlto)) {
    fill(200);
  } else {
    fill(150);
  }
  
  rect(botonX, botonY, botonAncho, botonAlto);
  
  if (estado.equals("inicio1")) {
    inicio1();
  } else if (estado.equals("p01")) {
    p01();
  } else if (estado.equals("p02")) {
    p02();
  } else if (estado.equals("p03")) {
    p03();
  } else if (estado.equals("p04")) {
    p04();
  } else if (estado.equals("p05")) {
    p05();
  } else if (estado.equals("p06")) {
    p06();
  } else if (estado.equals("p07")) {
    p07();
  } else if (estado.equals("p08")) {
    p08();
  } else if (estado.equals("p09")) {
    p09();
  } else if (estado.equals("p10")) {
    p10();
  } else if (estado.equals("p11")) {
    p11();
  } else if (estado.equals("p12")) {
    p12();
  } else if (estado.equals("p13")) {
    p13();
  } else if (estado.equals("p14")) {
    p14();
  } else if (estado.equals("p15")) {
    p15();
  } else if (estado.equals("p16")) {
    p16();
  } else if (estado.equals("p17")) {
    p17();
  } else if (estado.equals("p18")) {
    creditos();
  }
}

void mousePressed() {
  if (estado.equals("inicio1")) {
    if (checkButton(mouseX, mouseY, width/2 - 75, width/2 + 75, height/2 - 75, height/2 - 25)) {
      estado = "p01";
    } else if (checkButton(mouseX, mouseY, width/2 - 75, width/2 + 75, height/2 + 20, height/2 + 70)) {
      estado = "p18";
    }
  } else if (estado.equals("p01")) {
    estado = "p02";
  } else if (estado.equals("p02")) {
    estado = "p03";
  } else if (estado.equals("p03")) {
    if (checkButton(mouseX, mouseY, width/2 - 130, width/2 - 20, height/2 + 25, height/2 + 75)) {
      estado = "p04";
    } else if (checkButton(mouseX, mouseY, width/2 + 20, width/2 + 370, height/2 + 25, height/2 + 75)) {
      estado = "p13";
    }
  }
  else if (estado.equals("p04")) {
    estado = "p05";
  }else if (estado.equals("p05")) {
    if (checkButton(mouseX, mouseY, width/2 - 120, width/2 + 120, height/2 + 155, height/2 + 205)) {
      estado = "p06";
    }
  } else if (estado.equals("p06")) {
    if (checkButton(mouseX, mouseY, width/2 + 30, width/2 + 310, height/2 + 210, height/2 + 280)) {
      estado = "p07";
    } else if (checkButton(mouseX, mouseY, width/2 - 310, width/2 - 50, height/2 + 230, height/2 + 280)) {
      estado = "p09";
    }
  } else if (estado.equals("p07")) {
    if (checkButton(mouseX, mouseY, width/2 - 125, width/2 + 125, height/2 + 120, height/2 + 200)) {
      estado = "p08";
    }
  } 
 else if (estado.equals("p08")) {
  if (checkButton(mouseX, mouseY, width/2 - 200, width/2 + 200, height/2 + 100, height/2 + 300)) {
    estado = "inicio1";
  }
}else if (estado.equals("p09")) {
    estado = "p10";
  } else if (estado.equals("p10")) {
    if (checkButton(mouseX, mouseY, width/2 + 150, width/2 + 380, height/2 + 220, height/2 + 300)) {
      estado = "p11";
    } else if (checkButton(mouseX, mouseY, width/2 - 310, width/2 - 50, height/2 + 220, height/2 + 280)) {
      estado = "p12";
    }
  } else if (estado.equals("p11") || estado.equals("p16")) {
    estado = "inicio1";
  } else if (estado.equals("p12")) {
    if (checkButton(mouseX, mouseY, width/2 - 125, width/2 + 125, height/2 + 80, height/2 + 150)) {
      estado = "inicio1";
    }
  } else if (estado.equals("p13")) {
    estado = "p14";
  } else if (estado.equals("p14")) {
    estado = "p15";
  } else if (estado.equals("p15")) {
    if (checkButton(mouseX, mouseY, width/2 + 20, width/2 + 350, height/2 + 180, height/2 + 250)) {
      estado = "p17";
    } else if (checkButton(mouseX, mouseY, width/2 - 400, width/2, height/2 + 180, height/2 + 250)) {
      estado = "p16";
    }
  } else if (estado.equals("p17")) {
    if (checkButton(mouseX, mouseY, width/2 - 125, width/2 + 125, height/2 + 230, height/2 + 280)) {
      estado = "p07";
    }
  }
}

boolean checkButton(float x, float y, float xMin, float xMax, float yMin, float yMax) {
  return x > xMin && x < xMax && y > yMin && y < yMax;
}
