// declar global vars

Walker greg;
Walker mj;
Walker grle;
Walker deki;
Walker alexa;



void setup() {
  size(displayWidth,displayHeight); //displayWidth, displayHeight
  background(255);
  // https://www.color-hex.com/color-palette/23525
  greg = new Walker(width/1,height/2,color(#f5c600,255));  // hex color and transpar
  mj = new Walker(width/2,height/3,color(#d8460b,255));
  grle = new Walker(width/5,height/2,color(#c21703,255));
  deki = new Walker(width/4,height/3,color(#9b4923,255));
  alexa = new Walker(width/3,height/2,color(#007291,255));

}

void draw() {
  greg.step();
  mj.step();
  grle.step();
  deki.step();
  alexa.step();
  greg.display();
  mj.display();
  grle.display();
  deki.display();
  alexa.display();
  
  
}

void keyPressed(){
  background(255);
}
