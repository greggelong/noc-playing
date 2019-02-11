class Ball {
  float r;          // radius
  float x, y;       // location
  float xspeed,yspeed;  // speed
  color c = color(100,50);
  
  Ball(float tempR){
   r = tempR;
   x = random(width);
   y = random(height);
   
   xspeed = random(-5,5);
   yspeed = random(-5,5);
   
  }
  
  void move() {
   x += xspeed;
   y += yspeed;
   
   // check hor edges
   
   if (x>width||x<0) {
     xspeed *= -1;
   }
   
   // check ver edges
   
   if (y>height|| y<0) {
     yspeed *= -1;
   }
  }
  void bounce() {
    yspeed *= -1;
    xspeed *= -1;
  }
  void highlight() {
    c = color(0,150);
  }
  //Draw the ball
  void display(){
    stroke(0);
    fill(c);
    ellipse(x,y,r*2,r*2);
    c = color(100,50);
    
  }
 
  // a function that returns true or false
  boolean intersect(Ball b) {
    float distance = dist(x,y,b.x,b.y);
    if (distance<r+b.r){
      return true;
    } else{
      return false;
    }
  }
  
}
  
