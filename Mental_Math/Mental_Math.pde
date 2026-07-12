//Grace Jheeta
//Sat July 11, 2026
//Mental Math

//Mode variables
int mode;
int INTRO = 0;
int OPTIONS = 1;
int GAME = 2;
int PAUSE = 3;
int GAMEOVER = 4;

//Colors
color black = color(0);
color white = color(255);


void setup() {
  size(600, 600); 
  
  textAlign(CENTER);
}

void draw() {
  if (mode == INTRO) {
    intro(); 
  } else if (mode == OPTIONS) {
    options(); 
  } else if (mode == GAME) {
    game(); 
  } else if (mode == PAUSE) {
    pause(); 
  } else if (mode == GAMEOVER) {
    gameover(); 
  } else {
    println("Error. Mode = " + mode); 
  }
}
