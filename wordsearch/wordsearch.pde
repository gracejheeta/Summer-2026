// May 21

//letters
String[] alphabet = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};

//Array of words in list
String[] allWords = new String[3103];

//grid array
String[] grid = new String[64];

Word banana = new Word("BANANA", 10);

void setup() {
  size(800, 800);
  background(#D1FFFF);
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(30);
  
  //fill grid with random letters
  for (int i = 0; i < grid.length; i ++) {
    grid[i] = alphabet[int(random(0, 26))]; 
  }
  
  //fill grid with word
  banana.fillGrid();
}

void draw() {
  //draw grid
  for (int i = 0; i <= width; i += 100) {
    line(i, 0, i, height); 
  }
  for(int j = 0; j <= height; j += 100) {
    line(0, j, width, j); 
  }
  
  //draw letters on grid
  int x = 50;
  int y = 50;
  for (int i = 0; i < grid.length; i ++) {
    text(grid[i], x, y);
    x += 100;
    if (x > 750) {
      x = 50;
      y += 100;
    }
  }
  
}
