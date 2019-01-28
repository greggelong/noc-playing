from walker1 import Walker
def setup():
    
    size(640,360)
    global greg,mj ,grle, dejan
    greg = Walker(100,100,0)
    mj = Walker(200,200,120)
    grle = Walker(300,100,60)
    dejan = Walker(400,200,180)
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
