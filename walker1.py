import random

class Walker(object):
    def __init__(self,x,y,shade):
        self.x = x
        self.y = y
        self.shade = shade
        
    def display(self):
        noStroke()
        fill(self.shade);
        ellipse(self.x,self.y,5,5);
        
    def step(self):
        self.x = constrain(self.x,0,width-1)  ## keeps it on the board
        self.y = constrain(self.y,0,height-1)
        choice = random.randint(1,4)
        if choice == 1:
            self.x+=5
        elif choice == 2:
            self.x-=5
        elif choice == 3:
            self.y+=5
        else:
            self.y-=5
       
                
            
            
