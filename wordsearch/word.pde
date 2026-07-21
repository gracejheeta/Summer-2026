class Word {
  //instance variables
  String word;
  int start;
  int end;
  
  //constructor
  Word (String w, int s) {
    word = w;
    start = s;
    end = word.length() + s - 1;
  }
  
  //fill grid with word
  void fillGrid() {
    int temp = start;
    for (int i = 0; i < word.length(); i ++) {
      grid[temp] = word.substring(i, i + 1); 
      temp ++;
    }
  }
  
}
