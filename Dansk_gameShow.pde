int[] numPlayers;
int pointsToGet = 10;
int target = 0;
int players = 10;

void setup() {
  fullScreen();

  numPlayers = new int[players];
}

void draw() {
  background(0, 0, 20);

  for (int i = 0; i < pointsToGet; i++) {
    for (int j = 0; j < numPlayers.length; j++) {
      fill(255);

      if (i < numPlayers[j]) {
        fill(0, 100, 0);
      }
      
      if (numPlayers[j] >= pointsToGet){
        text("grate sucssese", 1780, j * 80 + 100); 
      }
      
      square(i * 35 + 100, j * 80 + 80, 30);

      fill(255);
      textSize(20);
      text(numPlayers[j], 50, j * 80 + 100);
      text(j + 1, 5, j * 80 + 100);
    }
  }
  
  rect(20, target * 80 + 80, 5, 30);
}

void keyPressed() {
  if (keyCode == UP) {
    target -= 1;
  }
  if (keyCode == DOWN) {
    target += 1;
  }
  if (key == 'w') {
    numPlayers[target] += 1;
  }
  if (key == 's' && numPlayers[target] > 0) {
    numPlayers[target] -= 1;
  }
  if (key == 'r'){
    for (int i = 0; i < numPlayers.length; i++){
      numPlayers[i] = 0;
    }
  }
  
  if (target == numPlayers.length || target < 0) {
    target = 0;
  }
  
}
