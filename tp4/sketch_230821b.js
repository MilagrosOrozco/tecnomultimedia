//Milagros Orozco
//legajo 93501/7
//Comision 2
//Link video https://www.youtube.com/watch?v=GZQ1c8J_4q0




let sh1;
let sh2;
let sh3;
let sh4;
let fondo;
let fondo2;
let meta;
let conf;
let cred;
let autos = [];
let perdiste;
let shImages = [sh1, sh2, sh3, sh4];
let currentImageIndex = 0;
let isMoving = false;
let frameInterval = 20;
let characterLane = 1;
let bgX = 0; 
let auto1X = 600; 
let auto2X = 600; 
let auto3X = 600;
let auto4X = 600;
let auto5X = 600;
let auto6X = 600;
let auto7X = 600;
let auto8X = 600;
let auto9X = 600;
let auto10X = 600;
let auto11X = 600;
let auto12X = 600;
let auto13X = 600;
let auto14X = 600;
let auto15X = 600;
let auto1Speed = 4; 
let auto2Speed = 6;

let startTime = 0; 
let gameOver = false; 
let gameState = "inicio";
let gameSpeed = 1
let speedIncreaseRate = 5000; 
let speedIncreased = false;
let speedMultiplier = 1; 
let metaX = 600;
let metaSpeed = 2;
let win;
let hasWon = false;


function preload() {
  sh1 = loadImage("./data/sh1.png");
  sh2 = loadImage("./data/sh2.png");
  sh3 = loadImage("./data/sh3.png");
  sh4 = loadImage("./data/sh4.png");
  fondo = loadImage("./data/fondo.png");
  fondo2 = loadImage("./data/Play.png");
  auto1 = loadImage("./data/auto1.png");
  auto2 = loadImage("./data/auto2.png");
  auto3 = loadImage("./data/auto3.png");
  auto4 = loadImage("./data/auto4.png");
  auto5 = loadImage("./data/auto5.png");
  auto6 = loadImage("./data/auto6.png");
  auto7 = loadImage("./data/auto7.png");
  auto8 = loadImage("./data/auto8.png");
  auto9 = loadImage("./data/auto9.png");
  auto10 = loadImage("./data/auto10.png");
  auto11 = loadImage("./data/auto11.png");
  auto12 = loadImage("./data/auto12.png");
  auto13 = loadImage("./data/auto13.png");
  auto14 = loadImage("./data/auto14.png");
  auto15 = loadImage("./data/auto15.png");
  conf = loadImage("./data/conf.png");
  cred = loadImage ("./data/cred.png");
  meta = loadImage("./data/meta.png");
  perdiste = loadImage("./data/perdiste.png");
  win = loadImage("./data/win.png");

  shImages = [sh1, sh2, sh3, sh4];
  for (let i = 1; i <= 15; i++) {
  autos.push({
    x: 600,
    y: 440,
    speed: 2,
    image: autoImages[i - 1]
  });
  
  }
}


function setup() {
  createCanvas(600, 600);
}

function draw() {
  if (gameState === "inicio") {
    drawInicio();
  } else if (gameState === "juego") {
    drawJuego();
  }
  else if (gameState === "config") {
    drawConfig();
  }
  else if (gameState === "cred"){
    drawCreditos();
  }
  else if (gameState === "win") {
    drawWin();
  }
}


function drawPath(y) {
  stroke(255); 
  strokeWeight(5);
  line(0, y, width, y);
}

function keyPressed() {
  if (keyCode === RIGHT_ARROW) {
    isMoving = true;
    startTime = millis(); 
  }
  if (keyCode === UP_ARROW) {
    if (characterLane > 0) {
      characterLane--;
    }
  }
  if (keyCode === DOWN_ARROW) {
    if (characterLane < 2) {
      characterLane++;
    }
  }
}
function keyReleased() {
  if (keyCode === RIGHT_ARROW) {
    isMoving = false;
  }
}
