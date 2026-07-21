class Word {
  //instance variables
  String word;
  int start;
  int end;
  boolean horizontal;
  
  //constructor
  Word (String w, int s, boolean h) {
    word = w;
    start = s;
    end = word.length() + s - 1;
    horizontal = h;
  }
  
  //fill grid with word
  void fillGrid() {
    int temp = start;
    for (int i = 0; i < word.length(); i ++) {
      grid[temp] = word.substring(i, i + 1); 
      if (horizontal) temp ++;
      else temp += Math.sqrt(grid.length);
    }
    
    toFind.add(word);
  }
  
}
