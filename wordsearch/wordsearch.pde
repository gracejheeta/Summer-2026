// May 21

//letters
String[] alphabet = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"};

//Array of words in list
String[] allWords;

//words to find
ArrayList<String> toFind = new ArrayList<String>();

//grid arrays
String[] grid = new String[64];
boolean[] empty = new boolean[grid.length];


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
  
  //initialize emtpy array
  for (int i = 0; i < empty.length; i ++) {
    empty[i] = true; 
  }
  
  //fill grid with random words
  while(toFind.size() < 5) {
    randomWord();
  }
  
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

void randomWord() {
  int trueOrFalse = int(random(0, 2));
  boolean randomBoolean = true;
  if (trueOrFalse == 0) randomBoolean = true;
  if (trueOrFalse == 1) randomBoolean = false;
  
  int begin = 0;
  if (randomBoolean) begin = int(random(0, 60));
  else begin = int(random(0, 32));
  
  //create word
  Word one = new Word(allWords[int(random(0, allWords.length))], begin, randomBoolean); 
  
  //check if it fits in grid
  if (checkFit(one)) one.fillGrid();
}

boolean checkFit(Word w) {
  if (w.horizontal) {
    for (int i = w.start; i <= w.end; i ++) {
      if (empty[i]) i ++;
      if (i == w.end + 1) return true;
    }
    return false;
  } else {
    for (int i = w.start; i <= w.end; i += 8) {
      if (empty[i]) i += 8;
      if (i == w.end + 8) return true;
    }
    return false;
  }
}
