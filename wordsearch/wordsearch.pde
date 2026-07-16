// May 21

//letters
String[] alphabet = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};
String[] letters = new String[64];
int start1, end1, start2, end2, start3, end3;
String word1, word2, word3;

String[] Word1 = new String[end1 - start1 + 1];
String[] Word2 = new String[end2 - start2 + 1];
String[] Word3 = new String[end3 - start3 + 1];

void setup() {
  size(800, 800);
  background(#D1FFFF);
  textAlign(CENTER, CENTER);
  
  start1 = 9;
  end1 = 14;
  start2 = 43;
  end2 = 47;
  start3 = 57;
  end3 = 59;
  
  word1 = "B,A,N,A,N,A";
  word2 = "S,P,I,C,E";
  word3 = "J,A,M";
  
  Word1 = split(word1, ",");
  Word2 = split(word2, ",");
  Word3 = split(word3, ",");
  
  for (int i = 0; i < letters.length; i ++) {
    letters[i] = alphabet[int(random(0, 26))]; 
  }
  
  int temp1 = 0;
  for (int i = start1; i <= end1; i ++) {
    letters[i] = Word1[temp1];
    temp1 ++;
  }
  
  int temp2 = 0;
  for (int i = start2; i <= end2; i ++) {
    letters[i] = Word2[temp2];
    temp2 ++;
  }
  
  int temp3 = 0;
  for (int i = start3; i <= end3; i ++) {
    letters[i] = Word3[temp3];
    temp3 ++;
  }
}

void draw() {
  //grid
  for (int i = 0; i <= width; i += 100) {
    line(i, 0, i, height); 
  }
  for(int j = 0; j <= height; j += 100) {
    line(0, j, width, j); 
  }
  
  //draw letters
  int x = 50;
  int y = 50;
  for (int i = 0; i < letters.length; i ++) {
    fill(0);
    textSize(30);
    text(letters[i], x, y);
    
    x += 100;
    if (x > 750) {
      y += 100;
      x = 50;
    }
  }
  
}
