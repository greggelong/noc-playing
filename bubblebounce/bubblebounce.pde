Catcher catcher;
Ball ball1;
Ball ball2;
Timer timer;
color bc;



void setup() {
     size(1028,560);
     bc = color(255,0,0);
     background(bc);
     catcher = new Catcher(32);
     ball1 = new Ball(64);
     ball2 = new Ball(32);
     timer = new Timer(5000);
     timer.start();
     }


void draw() {
    if(timer.isFinished()){
      bc = color(random(255),random(255),random(255));
      timer.start();
    }
    background(bc);
    catcher.setLocation(mouseX,mouseY);
    catcher.display();
    ball1.move();
    ball2.move();
    if (ball1.intersect(ball2)){
      ball1.highlight();
      ball2.highlight();
      ball1.bounce();
      ball2.bounce();
    }
    else if(catcher.intersect(ball2)){
      ball2.highlight();
      ball2.bounce();
    }
    else if(catcher.intersect(ball1)){
      ball1.highlight();
      ball1.bounce();
    }
    ball1.display();
    ball2.display();
             
             }
