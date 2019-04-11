import random,pick

def set_private():
    n = random.randint(0,3000-1)
    m = random.randint(0,3000-1)
    e = random.randint(0,3000-1)
    fp = open("Path.txt",'r')
    x = fp.read()
    p = pick.Unpick(x+"\data.pickle")
    del(x)
    fp.close()
    s = (p[n],p[m],p[e]) 
    del(p)
    return s

class User:
    def __init__(self):
        s = set_private()
        if s[0]>s[1]:
            self.p,self.q = s[1],s[0]
        else:
            self.p,self.q = s[0],s[1]
        self.E = s[2]
    def pub_key(self):
         return (int(str(self.p)+str(self.q)))
    def global_comp(self):
        return self.E



