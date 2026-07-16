class Word {
  //instance variables
  String word;
  int start;
  int end;
  String[] letters;
  
  Word (String w, int s, int e) {
     word = w;
     start = s;
     end = e;
     letters = new String[w.length()];
     
     //fill letters array
     for (int i = 0; i < word.length(); i ++) {
       letters[i] = word.substring(i, i + 1);
     }
  }
  
}
