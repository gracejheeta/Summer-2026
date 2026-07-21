// May 21

//letters
String[] alphabet = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"};

//Array of words in list
String[] allWords;

//words to find
ArrayList<String> toFind = new ArrayList<String>();

//grid array
String[] grid = new String[64];

Word banana = new Word("banana", 10, true);

void setup() {
  size(1000, 800);
  background(#D1FFFF);
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(30);
  
  //Fill array of words in list
  allWords = loadStrings("words.txt");
  
  //fill grid with random letters
  for (int i = 0; i < grid.length; i ++) {
    grid[i] = alphabet[int(random(0, 26))]; 
  }
  
  //create random words
  
  Word one = new Word(allWords[int(random(0, allWords.length))], 25, false);
  
  //fill grid with words
  banana.fillGrid();
  one.fillGrid();
}

void draw() {
  //draw grid
  for (int i = 0; i <= width - 200; i += 100) {
    line(i, 0, i, height); 
  }
  for(int j = 0; j <= height; j += 100) {
    line(0, j, width - 200, j); 
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
  
  //display words to find
  text("WORDS:", 900, 50);
  int Y = 100;
  for (String word : toFind) {
    text(word, 900, Y); 
    Y += 50;
  }
  
}
