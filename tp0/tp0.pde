//Orozco Milagros
//Legajo: 93501/7

PImage gato;
void setup() {
  size(800, 800);
}
void draw() {
  background(254, 241, 250);

  gato =loadImage("gato.jpg");




  //fondo
  noStroke();
  fill(253, 119, 173);
  ellipse(200, 200, 200, 250);
  ellipse(500, 100, 200, 200);
  ellipse(700, 250, 150, 150);
  ellipse(100, 390, 150, 150);
  ellipse(50, 30, 150, 150);
  ellipse(750, 30, 150, 150);
  ellipse(780, 400, 150, 150);
  fill(255);
  circle(100, 250, 30);
  circle(740, 180, 30);
  circle(100, 100, 30);
  circle(800, 230, 30);
  circle(200, 360, 30);
  circle(650, 100, 30);
  circle(600, 360, 30);



  //cabeza y orejas
  stroke(0);
  fill(69, 36, 4);
  triangle(200, 0, 220, 130, 350, 100);
  triangle(600, 0, 450, 100, 580, 130);
  fill(234, 201, 169);
  ellipse(400, 200, 400, 350);

  //manchas
  noStroke();
  fill(69, 36, 4);
  ellipse(400, 210, 350, 200);
  ellipse(400, 210, 200, 250);


  //boca
  fill(234, 201, 169);
  circle(370, 265, 70);
  circle(430, 265, 70);
  fill(69, 36, 4);
  circle(366, 260, 70);
  circle(434, 260, 70);
  fill(0);
  circle(355, 250, 3);
  circle(355, 270, 3);
  circle(370, 250, 3);
  circle(370, 270, 3);
  circle(445, 250, 3);
  circle(445, 270, 3);
  circle(430, 270, 3);
  circle(430, 250, 3);

  //parte rosa orejas y nariz
  noStroke();
  fill(253, 119, 173);
  triangle(400, 270, 370, 240, 435, 240);
  triangle(220, 30, 230, 90, 270, 60);
  triangle(580, 30, 570, 90, 530, 60);

  //ojos
  noStroke();
  fill(255);
  circle(310, 200, 120);
  circle(490, 200, 120);
  fill(21, 168, 255);
  circle(320, 200, 90);
  circle(480, 200, 90);
  fill(255);
  circle(348, 175, 30);
  circle(452, 175, 30);


  //patitas
  stroke(0);
  fill(234, 201, 169);
  ellipse(300, 400, 100, 200);
  ellipse(500, 400, 100, 200);
  line(300, 300, 300, 330);
  line(280, 310, 280, 330);
  line(320, 310, 320, 330);
  line(500, 300, 500, 330);
  line(480, 310, 480, 330);
  line(520, 310, 520, 330);
 
  image(gato, 0, 400);
}
