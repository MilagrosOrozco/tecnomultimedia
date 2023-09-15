function drawInicio() {
  image(fondo2, 0, 0, width, height);


  let botonX = width / 2 - 100;
  let botonY = height / 2 + 143;
  let botonAncho = 200;
  let botonAlto = 50;


  if (
    mouseX > botonX && mouseX < botonX + botonAncho &&
    mouseY > botonY && mouseY < botonY + botonAlto
  ) {
   
    noFill();
    stroke(250, 0, 200);
    strokeWeight(2);
  
    if (mouseIsPressed) {
      hasWon = false;
      gameState = "juego";
      startTime = millis();
    }
  } else {
    noFill(); 
    stroke(0);
    strokeWeight(2);
  }

 
  rect(botonX, botonY, botonAncho, botonAlto);
  fill(0);

 
  let comoJugarButtonX = width / 2 - 255;
  let comoJugarButtonY = height / 2 + 180;
  let comoJugarButtonWidth = 140;
  let comoJugarButtonHeight = 65;


  if (
    mouseX > comoJugarButtonX && mouseX < comoJugarButtonX + comoJugarButtonWidth &&
    mouseY > comoJugarButtonY && mouseY < comoJugarButtonY + comoJugarButtonHeight
  ) {
    
    noFill();
    stroke(250, 0, 200);
    strokeWeight(2);
    
    if (mouseIsPressed) {
      gameState = "config"; 
    }
  } else {
    noFill(); 
    stroke(0);
    strokeWeight(2);
  }

 
  rect(comoJugarButtonX, comoJugarButtonY, comoJugarButtonWidth, comoJugarButtonHeight);
  fill(0);

 
let creditosButtonX = width / 2 + 130;
  let creditosButtonY = height / 2 + 180;
  let creditosButtonWidth = 140;
  let creditosButtonHeight = 65;

  if (
    mouseX > creditosButtonX && mouseX < creditosButtonX + creditosButtonWidth &&
    mouseY > creditosButtonY && mouseY < creditosButtonY + creditosButtonHeight
  ) {
    noFill();
    stroke(250, 0, 200);
    strokeWeight(2);
    if (mouseIsPressed) {
      
      gameState = "cred";
    }
  } else {
    noFill();
    stroke(0);
    strokeWeight(2);
  }

  
  rect(creditosButtonX, creditosButtonY, creditosButtonWidth, creditosButtonHeight);
  fill(0);
}

function drawCreditos() {
 
  image(cred, 0, 0, width, height);
  let volverButtonWidth = 80;
  let volverButtonHeight = 40;
  let volverButtonX = width - volverButtonWidth - 20; 
  let volverButtonY = height - volverButtonHeight - 20;

  
  if (
    mouseX > volverButtonX && mouseX < volverButtonX + volverButtonWidth &&
    mouseY > volverButtonY && mouseY < volverButtonY + volverButtonHeight
  ) {
    
    fill(250, 0, 200);
    stroke(0);
    strokeWeight(2);
    
    if (mouseIsPressed) {
      gameState = "inicio"; 
    }
  } else {
    fill(0); 
    stroke(255);
    strokeWeight(2);
  }

  
  rect(volverButtonX, volverButtonY, volverButtonWidth, volverButtonHeight);
  fill(0);
  textSize(18);
  textAlign(CENTER, CENTER);
  noStroke();
  fill(255);
  text("Volver", volverButtonX + volverButtonWidth / 2, volverButtonY + volverButtonHeight / 2);

}
function drawWin() {
  if (hasWon) {
    
    image(win, width / 2 - win.width / 2, height / 2 - win.height / 2);
    
    let backButtonX = width / 2 - 100;
    let backButtonY = height / 2 + 130;
    let backButtonWidth = 200;
    let backButtonHeight = 50;
    
  
    if (
      mouseX > backButtonX && mouseX < backButtonX + backButtonWidth &&
      mouseY > backButtonY && mouseY < backButtonY + backButtonHeight &&
      mouseIsPressed
    ) {
     hasWon = false;
     gameState = "inicio"
    }
    

 
  noFill(); 
  rect(backButtonX, backButtonY, backButtonWidth, backButtonHeight); 
  noFill(); 
  noStroke();
 
 
}
}

function drawConfig() {
  
  image(conf, 0, 0, width, height);
let volverButtonWidth = 80;
  let volverButtonHeight = 40;
  let volverButtonX = width - volverButtonWidth - 20; 
  let volverButtonY = height - volverButtonHeight - 20; 

 
  if (
    mouseX > volverButtonX && mouseX < volverButtonX + volverButtonWidth &&
    mouseY > volverButtonY && mouseY < volverButtonY + volverButtonHeight
  ) {
   
    fill(250, 0, 200);
    stroke(0);
    strokeWeight(2);
   
    if (mouseIsPressed) {
      gameState = "inicio"; 
    }
  } else {
    fill(0);
    stroke(255);
    strokeWeight(2);
  }

 
  rect(volverButtonX, volverButtonY, volverButtonWidth, volverButtonHeight);
  fill(0);
  textSize(18);
  textAlign(CENTER, CENTER);
  noStroke();
  fill(255);
  text("Volver", volverButtonX + volverButtonWidth / 2, volverButtonY + volverButtonHeight / 2);
}

function drawJuego() {
  image(fondo, 0, 0, width, height);
  
  hasWon = false;
  if (!gameOver && isMoving && millis() - startTime > 5000) {
    gameSpeed = 2; 
  }

 
  if (isMoving) {
    bgX -= 2;
  }


  if (bgX <= -fondo.width) {
    bgX = 0; 
  }

  
  image(fondo, bgX, 0, fondo.width, height);
  image(fondo, bgX + fondo.width, 0, fondo.width, height); 

  drawPath(200);
  drawPath(400);
  drawPath(600);

  if (isMoving && frameCount % frameInterval === 0) {
    currentImageIndex = (currentImageIndex + 1) % shImages.length;
  }

  let laneY = constrain(characterLane * 190 + 80, 0, height - 70); 
  image(shImages[currentImageIndex], 50, laneY, 70, 70);

 
  if (!gameOver && isMoving && millis() - startTime > 3000) {
    auto1X -= auto1Speed;
  }

  
  if (!gameOver && isMoving && millis() - startTime > 6000) {
    auto2X -= auto1Speed;
  }

 
  if (!gameOver && isMoving && millis() - startTime > 8000) {
    auto3X -= auto1Speed;
  }

 
  if (!gameOver && isMoving && millis() - startTime > 10000) {
    auto4X -= auto1Speed;
  }

  
  if (!gameOver && isMoving && millis() - startTime > 2000) {
    auto5X -= auto1Speed;
  }

 
  if (!gameOver && isMoving && millis() - startTime > 11000) {
    auto6X -= auto2Speed;
  }


  if (!gameOver && isMoving && millis() - startTime > 13000) {
    auto7X -= auto2Speed;
  }

  if (!gameOver && isMoving && millis() - startTime > 14000) {
    auto8X -= auto2Speed;
  }
  
   if (!gameOver && isMoving && millis() - startTime > 4000) {
    auto4X -= auto1Speed;
  }
 
  if (!gameOver && isMoving && millis() - startTime > 10000) {
    auto1X -= auto2Speed;
  }
    if (!gameOver && isMoving && millis() - startTime > 8000) {
    auto9X -= auto2Speed;
  }
     if (!gameOver && isMoving && millis() - startTime > 9000) {
    auto10X -= auto2Speed;
  }
    if (!gameOver && isMoving && millis() - startTime > 10000) {
    auto11X -= auto2Speed;
  }
   if (!gameOver && isMoving && millis() - startTime > 12000) {
    auto12X -= auto2Speed;
  }
   if (!gameOver && isMoving && millis() - startTime > 14000) {
    auto13X -= auto2Speed;
  }
   if (!gameOver && isMoving && millis() - startTime > 15000) {
    auto14X -= auto2Speed;
  }
   if (!gameOver && isMoving && millis() - startTime > 17000) {
    auto15X -= auto2Speed;
  }
  if (!gameOver && isMoving && millis() - startTime > 17000) {
    metaX -=metaSpeed;
  }
  
  
 
  
 
  image(auto1, auto1X, 440, 80, 70); 

 
  image(auto2, auto2X, 290, 80, 70);

 
  image(auto3, auto3X, 440, 80, 70);


  image(auto4, auto4X, 120, 80, 70); 


  image(auto5, auto5X, 290, 80, 70);

 
  image(auto6, auto6X, 290, 80, 70);

 
  image(auto7, auto7X, 440, 80, 70);

  image(auto8, auto8X, 290, 80, 70);
  
  image(auto9, auto9X, 120, 80, 70);
  
  image(auto10, auto10X, 290, 80, 70);
  
  image(auto11, auto11X, 120, 80, 70);
  
  image(auto12, auto12X, 440, 80, 70);
  
  image(auto13, auto13X, 290, 80, 70);
  
  image(auto14, auto14X, 120, 80, 70);
  
  image(auto15, auto15X, 440, 80, 70);
  
  image(meta, metaX, 50,0, 600);
  

  let characterX = 50;
  let characterWidth = 70;
  let autoWidth = 70;


  if (
    characterLane === 2 &&
    auto1X < characterX + characterWidth &&
    auto1X + autoWidth > characterX 
  ) {
    gameOver = true;
  }


  if (
    characterLane === 1 &&
    auto2X < characterX + characterWidth && 
    auto2X + autoWidth > characterX 
  ) {
    gameOver = true;
  }

  
  if (
    characterLane === 2 && 
    auto3X < characterX + characterWidth && 
    auto3X + autoWidth > characterX 
  ) {
    gameOver = true;
  }

 
  if (
    characterLane === 0 && 
    auto4X < characterX + characterWidth && 
    auto4X + autoWidth > characterX 
  ) {
    gameOver = true;
  }

 
  if (
    characterLane === 1 && 
    auto5X < characterX + characterWidth && 
    auto5X + autoWidth > characterX
  ) {
    gameOver = true;
  }

 
  if (
    characterLane === 1 && 
    auto6X < characterX + characterWidth && 
    auto6X + autoWidth > characterX 
  ) {
    gameOver = true;
  }

 
  if (
    characterLane === 2 && 
    auto7X < characterX + characterWidth && 
    auto7X + autoWidth > characterX
  ) {
    gameOver = true;
  }

  if (
    characterLane === 1 && 
    auto8X < characterX + characterWidth &&
    auto8X + autoWidth > characterX 
  ) {
    gameOver = true;
  }
  if (
    characterLane === 0 && 
    auto9X < characterX + characterWidth && 
    auto9X + autoWidth > characterX 
  ) {
    gameOver = true;
  }
  if (
    characterLane === 1 && 
    auto10X < characterX + characterWidth && 
    auto10X + autoWidth > characterX
  ) {
    gameOver = true;
  }
  if (
    characterLane === 0 &&
    auto11X < characterX + characterWidth && 
    auto11X + autoWidth > characterX 
  ) {
    gameOver = true;
  }
  if (
    characterLane === 2 && 
    auto12X < characterX + characterWidth && 
    auto12X + autoWidth > characterX
  ) {
    gameOver = true;
  }
  
  if (
    characterLane === 1 && 
    auto13X < characterX + characterWidth && 
    auto13X + autoWidth > characterX
  ) {
    gameOver = true;
  }
  
  if (
    characterLane === 0 && 
    auto14X < characterX + characterWidth && 
    auto14X + autoWidth > characterX 
  ) {
    gameOver = true;
  }
  if (
    characterLane === 2 &&
    auto15X < characterX + characterWidth && 
    auto15X + autoWidth > characterX
  ) {
    gameOver = true;
  }
  if (
    characterLane === 1 && 
    metaX < characterX + characterWidth &&
    metaX + meta.width > characterX
  ) {
  
   gameState = "win";
   hasWon = true;

  }

  if (gameOver) {
    image(fondo, 0, 0, width, height);
    image(perdiste, width / 2 - perdiste.width / 2, height / 2 - perdiste.height / 2);
    textSize(30);
    fill(255, 20, 100);
    rect(220, 470, 140, 40);
    fill(255);
    textFont("DigitalArcade.vlw");
    noStroke();
    text("Restart", 290, 490);
    let restartButtonX = 220;
    let restartButtonY = 470;
    let restartButtonWidth = 140;
    let restartButtonHeight = 40;

    if (
      mouseX > restartButtonX && mouseX < restartButtonX + restartButtonWidth &&
      mouseY > restartButtonY && mouseY < restartButtonY + restartButtonHeight
    ) {
     
      fill(255, 100, 100);

      
      if (mouseIsPressed) {
       
        isMoving = false;
        bgX = 0;
        auto1X = 600;
        auto2X = 600;
        auto3X = 600;
        auto4X = 600;
        auto5X = 600;
        auto6X = 600;
        auto7X = 600;
        auto8X = 600;
        auto9X = 600;
        auto10X = 600;
        auto11X = 600;
        auto12X = 600;
        auto13X = 600;
        auto14X = 600;
        auto15X = 600; 
        startTime = 0;
        gameOver = false;
        hasWon = false;
        
        gameState = "juego";
      }
    }
  }
  fill(255, 140, 200); 
  rect(width - 40, height - 40, 30, 30); 
  fill(255);
  textSize(20);
  textAlign(CENTER, CENTER);
  stroke(1);
  text("P", width - 25, height - 25);


  if (
    mouseX > width - 40 && mouseX < width - 10 &&
    mouseY > height - 40 && mouseY < height - 10 &&
    mouseIsPressed
  ) {
  
    isMoving = false;
    bgX = 0;
    auto1X = 600;
    auto2X = 600;
    auto3X = 600;
    auto4X = 600;
    auto5X = 600;
    auto6X = 600;
    auto7X = 600;
    auto8X = 600;
    auto9X = 600;
    auto10X = 600;
    auto11X = 600;
    auto12X = 600;
    auto13X = 600;
    auto14X = 600;
    auto15X = 600; 
    startTime = 0;
    gameOver = false;
    hasWon = false;

   
    gameState = "inicio";
  }
}
