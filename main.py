import User,pick


z = ("pri_key.pickle","pub_key.pickle")
#pick.Pick(z[0],{})
#pick.Pick(z[1],{})
def Create(n):
    n = n.strip()
    s = User.User()
    ls = pick.Unpick(z[0])
    ls[n] = [s.p*s.q,s.E]
    pick.Pick(z[0],ls)
    ls = pick.Unpick(z[1])
    ls[n] = [s.pub_key(),s.E]
    pick.Pick(z[1],ls)
    return

def find(n):
    ls = pick.Unpick(z[1])
    try:
        return ls[n]
    except:
        #print("Not present.")
        return "None"
