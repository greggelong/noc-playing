//float r= 100;
//float g= 150;
//float b = 200;
float gray = 200;
int si = 1;

void setup() {
  size(displayWidth, displayHeight);
  fill(0);
  stroke(255);
}


void draw() {
  si = constrain(si,1,200);
  if (mousePressed) {
    if (mouseY < height/4){      // eg the top fourth part
      si =si +1;
    }
    else if (mouseY > height - height/4){   //the bottom forth part
      si =si -1;
    }
    else {         // the midde was pressed

      for (int row =0; row<width; row+=si) {
        for (int col =0; col<height; col+=si) {
          //r= random(255);
          //g= random(255);
          //b= random(255);
          gray = random(255);
          //fill(r, g, b);
          noStroke();
          fill(gray);
          rect(row, col, si, si);
        }
      }
    }
  }
}
