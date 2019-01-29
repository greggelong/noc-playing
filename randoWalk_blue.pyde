from walker1 import Walker
def setup():
    
    size(600,360)
    global greg,mj ,grle, dejan
    greg = Walker(100,100,color(0,0,255))
    mj = Walker(200,200,color(0,0,140))
    grle = Walker(300,100,color(0,0,100))
    dejan = Walker(400,200,color(0,0,180))
    background(255)
    
def draw():
    greg.step()
    mj.step()
    grle.step()
    dejan.step()
    greg.display()
    mj.display()
    grle.display()
    dejan.display()
    #ellipse(100,100,50,50)    
