
// class with data types the curly brackt the whole class
class Walker {
  int x;
  int y;
  color c;
  

/// constructor
  Walker(int x_, int y_, color c_) {
    x = x_;
    y = y_;
    c = c_;
  }
  
  void display() {
    noStroke();
    fill(c);
    ellipse(x,y,10,10);
  }
  
  void step() {
    
    int choice = int(random(4));
    
    if (choice == 0) {
      x=x+10;
    } else if (choice == 1) {
      x=x-10;
    } else if (choice == 2) {
      y=y+10;
    } else {
      y=y-10;
    }
    
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
  
}
    
    
    
 
