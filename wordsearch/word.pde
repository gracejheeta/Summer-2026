class Word {
  //instance variables
  String word;
  int start;
  double end;
  boolean horizontal;
  
  //constructor
  Word (String w, int s, boolean h) {
    word = w;
    start = s;
    if (h) end = s + word.length() - 1;
    else end = s + (word.length() - 1) * Math.sqrt(grid.length); 
    horizontal = h;
  }
  
  //fill grid with word
  void fillGrid() {
    int temp = start;
    for (int i = 0; i < word.length(); i ++) {
      grid[temp] = word.substring(i, i + 1); 
      
      //update empty array
      empty[temp] = false;
      
      if (horizontal) temp ++;
      else temp += Math.sqrt(grid.length);
    }
    
    toFind.add(word);
    
    println(word + ": " + start + "-" + end);
  }
  
}
