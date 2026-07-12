class Button {
  //instance variables
  String shape;
  int x, y, w, h, r;
  color fill, stroke, newStroke;
  int strokeWeight;
  boolean mouseOver;
 
  //rectangle constructor
  Button (String shape, int x, int y, int w, int h, color fill, color stroke, color newStroke, int strokeWeight) {
    this.shape = shape;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.fill = fill;
    this.stroke = stroke;
    this.newStroke = newStroke;
    this.strokeWeight = strokeWeight;
    this.mouseOver = false;
  }

  //circle constructor
  Button (String shape, int x, int y, int r, color fill, color stroke, int strokeWeight) {
    this.shape = shape;
    this.x = x;
    this.y = y;
    this.r = r;
    this.fill = fill;
    this.stroke = stroke;
    this.strokeWeight = strokeWeight;
    this.mouseOver = false;
  }
  
  void show() {
    fill(fill);
    stroke(stroke);
    strokeWeight(strokeWeight);
    rect(x, y, w, h);
    
    //tactile
    if (mouseOver == true) {
      stroke(newStroke);
    }
  }
  
  void mouseOver() {
    if (shape == "rect" && mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
      mouseOver = true;  
    } else if (shape == "circle" && dist(x, y, mouseX, mouseY) < r) {
      mouseOver = true;
    } else {
      mouseOver = false; 
    }
  }
  
}
