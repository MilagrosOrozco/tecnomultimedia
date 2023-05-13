//Milagros Yael Orozco
//Legajo:93501/7
PImage oso;
PImage osito;
PImage osos;
PImage osa;
float posX, distancia, radio;
int x= 100, y=100, d, c, a,op,b;
int vel=1;
boolean izquierda, abajo;
color bg;
String estado;
PFont LETRAS, LETRAS2;





void setup() {
  size(640, 480);
  izquierda=true;
  abajo=true;
  bg=color(255, 200, 200);
  estado = "presentacion";
  posX = 0;
  x = 300;
  y = 100;
  d = 200;
  a = 300;
  b=300;
  op=0;
oso=loadImage("oso.jpg");
osito=loadImage("osito.jpg");
osos=loadImage("osos.jpg");
osa=loadImage("osa.jpg");
 LETRAS = loadFont("Bahnschrift-48.vlw");
 LETRAS2=loadFont("BodoniMT-48.vlw");
 

  frameRate(60);
}

void draw() {
  if ( estado.equals("presentacion") ) {
     background(bg);
     image(oso,0,0,640,480);
    fill(0);
     textFont(LETRAS,40);
    textAlign(CENTER, CENTER);
    textSize(40);
    text("Los osos polares son",x+200,100);
    text("mamíferos marinos porque", x+200,150);
    text("pasan la mayor parte de su", x+200, 300);
    text("vida en el hielo marino",x+200,350);
    text("del oceano ártico",x+200,400);
    c++;
    
    if (c>500) {
      estado="2";
      c=0;
    }
    } 
    
    //ESTADO 2
    
    else if (estado.equals("2")){
     image(osito,0,0,640,480);
     c++;
    if (c>=500) {
      estado= "3";
      c=0;
    }
    
    if (estado=="2") {
      textSize(frameCount);
      textFont(LETRAS2,40);
      fill(0);
      text("El oso polar", x, y);
      text("no hiberna, ellos ", x,y+40 );
      text("acumulan grasa para ", x, y+80);
      text("usarla en invierno", x, y+120);
      text("Es el carnivoro terrestre",x,y+220);
      text("más grande del planeta",x,y+260);
    }
    }
    
    
    //ESTADO 3
    
    else if (estado.equals("3") ) {
      image(osos,0,0,640,480);
      c++;
    
    if(c>=500){
      estado="4";
      c=0;
    }
    
    if (estado=="3"){
      fill(0);
      textFont(LETRAS2,40);
      textSize(40);
      text("el oso polar está en", 320,y);
      text("peligro de extinción",320,y+50);
      text("es una especie en situación",320,y+100);
      text("de conservación vulnerable",320,y+150);

    }
    }
//ESTADO4
    else if (estado.equals("4") ) {
      image(osa,0,0,640,480);
      c++;
    if (estado=="4"){
      fill(0,0,0,op);
      textFont(LETRAS2,40);
      textSize(40);
      op+=vel;
      text("Esta fue la presentación", x,y);
      text("espero que les haya gustado",x,y+60);
      
      
      
      distancia = dist(a, b, mouseX, mouseY);
      radio = d / 2;
      fill(255);
      circle(a,b,radio);
      
      fill(0);
      text("reset",a,b);
      
    }
    }
    
  if (x>=400) {
    izquierda=true;
  }

  if (x<=80) {
    izquierda=false;
  }
  if (izquierda) {
    x-=vel;
  } else {
    x+=vel;
  }
  
  //ABAJO
  
  if (y>=420){
    abajo=true;
  }

  if (y<=0){
    abajo=false;
  }
  if (abajo){
    y-=vel;
  } else {
    y+=vel;
  }
}


void keyPressed() {
  if ( key == 'm' ) {
    bg = color(255);
  }
}
void mousePressed() {
  if(estado.equals("4")){
    if(distancia<radio){
estado = "presentacion" ;
  }
  }

}
