//Milagros Orozco
//Legajo: 93501/7
//Video presentacion https://www.youtube.com/watch?v=Bj5YlzAhypA


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


void setup() {
  size(600, 600);
  Letras = loadFont("letras.vlw");
  estado = "inicio1";

  for (int i = 0; i < imagenes.length; i++) {
    imagenes[i] = loadImage(nombresImagenes[i]);
  }
}

void draw() {
  background(255);
    image(imagenes[0],CENTER,CENTER);
     if (estado.equals("inicio1")) {
    textFont(Letras, 50);
    textAlign(CENTER, TOP);
    textSize(32);
    fill(255);
    text("Alicia", width/2, 50);
    text("en el país", width/2, 90);
    text("de las maravillas", width/2, 130);
    fill(173, 216, 230);
    rectMode(CENTER);
    rect(width/2, height/2 - 50, 150, 50);
    fill(255);
    textFont(Letras, 32);
    textAlign(CENTER, CENTER);
    text("Iniciar", width/2, height/2 - 50);
    fill(173, 216, 230);
    rect(width/2, height/2 + 50, 150, 50);
    fill(255);
    text("Créditos", width/2, height/2 + 50);
  } else if (estado.equals("p01")) {
    image(imagenes[1],CENTER,CENTER);
    textFont(Letras, 40);
    textAlign(CENTER, CENTER);
    fill(255);
    text("Alicia dormía tranquila", width/2, height/2-250);
    text("sobre el árbol.", width/2, height/2-200);
    text("Hasta que de repente...", width/2, height/2+200);
  } else if (estado.equals("p02")) {
    image(imagenes[2], 0, 0, width, height);
    textFont(Letras, 40);
    textAlign(CENTER, CENTER);
    fill(255);
    text("Alicia se resbala", width/2, height/2-250);
    text("y cae dentro del árbol", width/2, 500);
  } else if (estado.equals("p03")) {
    image(imagenes[3], CENTER,CENTER);
    textFont(Letras, 25);
    textAlign(CENTER, CENTER);
    fill(255);
    text("Cae en una habitacion solitaria",width/2,height/2-280);
    text("Allí encuentra una galleta y una botella", width/2, 300);

    fill(255, 192, 203);
    rectMode(CENTER);
    rect(width/2 - 130, height/2 + 50, 240, 50);
    fill(255);
    textFont(Letras, 20);
    textAlign(CENTER, CENTER);
    text("Beber de la botella", width/2 - 130, height/2 + 50);

    fill(255, 192, 203);
    rect(width/2 + 130, height/2 + 50, 240, 50);
    fill(255);
    textFont(Letras, 20);
    textAlign(CENTER, CENTER);
    text("Comer la galleta", width/2 + 130, height/2 + 50);
  } else if (estado.equals("p04")) {
    image(imagenes[4],CENTER,CENTER);
    textFont(Letras, 30);
    textAlign(CENTER, CENTER);
    fill(255);
    text("Alicia se hace pequeña", width/2, height/2 - 250);
    text("y entra por una puerta diminuta", width/2, height/2 - 200);
  } else if (estado.equals("p05")) {
    image(imagenes[5],CENTER,CENTER);
    textFont(Letras, 30);
    textAlign(CENTER, CENTER);
    fill(255);
    text("En frente de la puerta,", width/2, height/2);
    text("aparece el gato sonriente", width/2, height/2 + 50);
    text("y la lleva a un portal", width/2, height/2 + 100);
    fill(160, 32, 240);
    rect(width/2, height/2 + 180, 240, 50);
    fill(255);
    textFont(Letras, 20);
    textAlign(CENTER, CENTER);
    text("Entrar al portal", width/2, height/2 + 180);
  } else if (estado.equals("p06")) {
    image(imagenes[6],CENTER,CENTER);
    textFont(Letras, 30);
    textAlign(CENTER, CENTER);
    fill(255);
    text("Alicia llega a un laberinto", width/2, height/2 - 200);
    text("y hay 2 caminos", width/2, height/2 - 150);
    fill(255);
    //izquierda
    rect(width/2 - 130, height/2 + 250, 180, 30);
    triangle(50, height - 50, 70, height - 70, 70, height - 30);
    //derecha
    rect(width/2 + 130, height/2 + 250, 180, 30);
    triangle(width - 50, height - 50, width - 70, height - 70, width - 70, height - 30);
    fill(0);
    textFont(Letras, 30);
    text("Izquierda", width/2 - 130, height/2 + 250);
    text("Derecha", width/2 + 130, height/2 + 250);
  } else if (estado.equals("p07")) {
    image(imagenes[7],CENTER,CENTER);
    fill(255);
    textFont(Letras, 30);
    textAlign(CENTER, CENTER);
    text("Alicia se encuentra con", width/2, height/2);
    text("la oruga azul y él le ofrece", width/2, height/2 + 50);
    text("volver a su hogar", width/2, height/2 + 100);
    rect(width/2, height/2 + 180, 250, 50);
    fill(0);
    text("Volver a casa", width/2, height/2 + 180);
  } else if (estado.equals("p08")) {
    image(imagenes[8], CENTER,CENTER);
    fill(255);
    textFont(Letras, 30);
    textAlign(CENTER, CENTER);
    text("Alicia despierta en su jardín", width/2, height/2 - 200);
    text("y su travesía ha terminado", width/2, height/2 - 150);
    text("Final aburrido",width/2,height/2+250);
    fill(173, 216, 230);
    rect(width/2, height/2 + 200, 250, 50);
    fill(255);
    text("Volver al inicio", width/2, height/2 + 200);
  } else if (estado.equals("p09")) {
    image(imagenes[9],CENTER,CENTER);
    fill(255);
    textFont(Letras, 30);
    textAlign(CENTER, CENTER);
    text("Al salir del laberinto, Alicia", width/2, height/2 - 200);
    text("se encuentra con los soldados naipe", width/2, height/2 - 150);
    text("pintando las rosas y decide", width/2, height/2 +240);
    text("ayudarlos",width/2,height/2+280);
  } else if (estado.equals("p10")) {
    image(imagenes[10],CENTER,CENTER);
    fill(255);
    textFont(Letras, 30);
    textAlign(CENTER, CENTER);
    text("Alicia los ayuda, pero la pintura", width/2, height/2 - 200);
    text("se cae y justo entra la", width/2, height/2 - 150);
    text("la Reina Roja muy enojada", width/2, height/2 - 100);

    fill(173, 216, 230);
    rect(width/2 - 150, height/2 + 250, 230, 50);
    rect(width/2 + 150, height/2 + 250, 230, 50);
    fill(255);
    textFont(Letras, 20);
    text("Halagar a la reina", width/2 - 150, height/2 + 240);
    text("y hacerla feliz", width/2 - 150, height/2 + 260);
    text("Enfrentarla y", width/2 + 150, height/2 + 240);
    text("hacerla enojar", width/2 + 150, height/2 + 260);
  } else if (estado.equals("p11")) {
    image(imagenes[11], CENTER,CENTER);
    fill(255);
    textFont(Letras,30);
    text("La reina comienza a gritar",width/2,height/2-250);
    text("y manda a prision a Alicia", width/2,height/2-200);
    text("Final tragico de Alicia",width/2,height/2+250);
    fill(0);
    rect(width/2,height/2+100,250,50);
    fill(255);
    text("Volver a inicio",width/2,height/2+100);
  }
  else if (estado.equals("p12")){
    image(imagenes[12],CENTER,CENTER);
    fill(255);
    textFont(Letras,30);
    text("La reina aprueba a Alicia",width/2,height/2-250);
    text("Y la hace su mano derecha",width/2,height/2-200);
    text("Final normal",width/2,height/2+250);
    rect(width/2,height/2+100,250,50);
    fill(0);
    text("Volver a inicio",width/2,height/2+100);
  }
  else if (estado.equals("p13")){
    image(imagenes[13],CENTER,CENTER);
    fill(255);
    textFont(Letras,30);
    text("Alicia se hace enorme y se",width/2,height/2-200);
    text("encuentra con el conejo blanco,",width/2,height/2-150);
    text("este al principio se queja, pero",width/2,height/2+200);
    text("luego le dice que la va a ayudar",width/2,height/2+250);
  }
  else if(estado.equals("p14")){
    image(imagenes[14],CENTER,CENTER);
    textFont(Letras,30);
    text("El conejo la lleva con",width/2,height/2-200);
    text("El Sombrerero y sus amigos",width/2,height/2-150);
    text("quienes estaban festejando",width/2,height/2+200);
    text("un 'No Cumpleaños'",width/2,height/2+250);
  }
  else if(estado.equals("p15")){
    image(imagenes[15],CENTER,CENTER);
    fill(255);
    textFont(Letras,30);
    text("Luego de horas de risas",width/2,height/2-250);
    text("y diversion, la liebre le ofrece",width/2,height/2-200);
    text("a Alicia quedarse con ellos",width/2,height/2-150);

    fill(160, 32, 240);
    //izquierda
    rect(width/2-150,height/2+200,250,50);
    //derecha
    rect(width/2+150,height/2+200,250,50);

    fill(255);
    textFont(Letras,20);
    text("Aceptar la propuesta",width/2-150,height/2+200);
    text("Rechazar la propuesta",width/2+150,height/2+200);

  }
  else if(estado.equals("p16")){
    image(imagenes[16],CENTER,CENTER);
    fill(255);
    textFont(Letras,30);
    text("Alicia acepta quedarse con sus",width/2,height/2-250);
    text("nuevos amigos y todos",width/2,height/2-200);
    text("festejaron juntos",width/2,height/2-150);
    text("Final feliz",width/2,height/2+270);
      
    fill(160, 32, 240);
    rect(width/2,height/2+200,250,40);
    fill(255);
    textFont(Letras,20);
    text("Volver a inicio",width/2,height/2+200);
  
  }
  else if (estado.equals("p17")){
    image(imagenes[17],CENTER,CENTER);
    fill(255);
    textFont(Letras,30);
    text("Alicia rechaza la oferta",width/2,height/2-200);
    text("y todos se ponen tristes",width/2,height/2-150);
    text("pero lo entienden, entonces",width/2,height/2+150);
    text("la llevan con la oruga azul",width/2,height/2+200);
    
   rect(width/2,height/2+250,250,50);
   fill(0);
   textFont(Letras,20);
   text("Ir con la oruga azul",width/2,height/2+250);
  }
  else if(estado.equals("p18")){
    image(imagenes[18],CENTER,CENTER);
     for (int i = 0; i < cantidadCirculos; i++) {
      color c = random(2) > 1 ? color(255) : color(255, 182, 193); 
      fill(c);
      float x = random(width);
      float y = random(height);
      ellipse(x, y, 5, 5);
    }
    fill(255);
    textFont(Letras,35);
    text("Alumna:",width/2-200,height/2-200);
    text("Milagros", width/2+200,height/2-210);
    text("Orozco",width/2+200,height/2-170);
    text("Legajo:",width/2-200,height/2);
    text("93501/7",width/2+215,height/2);
    text("Autor de",width/2-200,height/2+200);
    text("la obra:",width/2-200,height/2+240);
    text("Lewis",width/2+200,height/2+190);
    text("Carroll",width/2+200,height/2+230);
    
}
}

void mousePressed() {
  if (estado.equals("inicio1")) {
    if (mouseX > width/2 - 75 && mouseX < width/2 + 75 && mouseY > height/2 - 75 && mouseY < height/2 - 25) {
      estado = "p01";
    }
    else if (mouseX > width/2 - 75 && mouseX < width/2 + 75 && mouseY > height/2 + 20 && mouseY < height/2 + 70) {
      estado = "p18";
    }
  } else if (estado.equals("p01")) {
    estado = "p02";
  } else if (estado.equals("p02")) {
    estado = "p03";
  } else if (estado.equals("p03")) {
    if (mouseX > width/2 - 130 && mouseX < width/2 - 20 && mouseY > height/2 + 25 && mouseY < height/2 + 75) {
      estado = "p04";
    } else if (mouseX > width/2 + 20 && mouseX < width/2 + 370 && mouseY > height/2 + 25 && mouseY < height/2 + 75) {
      estado = "p13";
    }
  } else if (estado.equals("p04")) {
    estado = "p05";
  } else if (estado.equals("p05")) {
    if (mouseX > width/2 - 120 && mouseX < width/2 + 120 && mouseY > height/2 + 155 && mouseY < height/2 + 205) {
      estado = "p06";
    }
  } else if (estado.equals("p06")) {
    if (mouseX > width/2 + 30 && mouseX < width/2 + 310 && mouseY > height/2 + 210 && mouseY < height/2 + 280) {
      estado = "p07";
    } else if (mouseX > width/2 - 310 && mouseX < width/2 - 50 && mouseY > height/2 + 230 && mouseY < height/2 + 280) {
      estado = "p09";
    }
  } else if (estado.equals("p07")) {
    if (mouseX > width/2 - 125 && mouseX < width/2 + 125 && mouseY > height/2 + 120 && mouseY < height/2 + 200) {
      estado = "p08";
    }
  } else if (estado.equals("p08")) {
    if (mouseX > width/2 - 200 && mouseX < width/2 + 200 && mouseY > height/2 + 100 && mouseY < height/2 + 300) {
      estado = "inicio1";
    }
  } else if (estado.equals("p09")) {
    estado = "p10";
  } else if (estado.equals("p10")) {
    if (mouseX > width/2 + 150 && mouseX < width/2 + 380 && mouseY > height/2 + 220 && mouseY < height/2 + 300) {
      estado = "p11";
    } else if (mouseX > width/2 - 310 && mouseX < width/2 - 50 && mouseY > height/2 + 220 && mouseY < height/2 + 280) {
      estado = "p12";
    }
  } else if (estado.equals("p11")) {
    estado = "inicio1";
  } else if (estado.equals("p12")) {
    if (mouseX > width/2 - 125 && mouseX < width/2 + 125 && mouseY > height/2 + 80 && mouseY < height/2 + 150) {
      estado = "inicio1";
    }
  } else if (estado.equals("p13")) {
    estado = "p14";
  } else if (estado.equals("p14")) {
    estado = "p15";
  } else if (estado.equals("p15")) {
    if (mouseX > width/2 +20 && mouseX < width/2 + 350 && mouseY > height/2 + 180 && mouseY < height/2 + 250) {
      estado = "p17";
    } else if (mouseX > width/2 - 400 && mouseX < width/2  && mouseY > height/2 + 180 && mouseY < height/2 + 250) {
      estado = "p16";
    }
  } else if (estado.equals("p16")) {
    if (mouseX > width/2 - 125 && mouseX < width/2 + 125 && mouseY > height/2 + 180 && mouseY < height/2 + 240) {
      estado = "inicio1";
    }
  }
  else if (estado.equals("p17")) {
    if (mouseX > width/2 - 125 && mouseX < width/2 + 125 && mouseY > height/2 + 230 && mouseY < height/2 + 280) {
      estado = "p07";
    }
  }
}
