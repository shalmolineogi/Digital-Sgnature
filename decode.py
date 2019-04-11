import pick
import main
import User
import Encode, hashlib


def decode(d, info):
    ld = []
    e = d.split(" ")
    for i in e:
        if (pub[1]*d)%((pub[0]//100000)*(pub[0]%100000))==1:
            ld.append(d)
    return ld

fp = open('F:\VB6.0\Project\log.txt', 'r')
user = fp.read().strip()
fp.close()
ls1 = pick.Unpick(main.z[1])
x = ls1.keys()
fp = open('F:\VB6.0\Project\dec.txt', 'r')
d=fp.read().strip()
fp.close()
fp = open(d,'r')
d = fp.read()
s = d.split("\n\n\n\n\n")
e = s[1]
msg = s[0]
hash = hashlib.sha1(msg.encode('utf8')).hexdigest()
for i in x:
    
    
    
    
dec = decode(e)

