import hashlib,pick,main,User,os


def hash_func(msg,user):
    ls = pick.Unpick(main.z[0])
    pri = ls[user]
    hash1 = hashlib.sha1(msg.encode('utf8')).hexdigest()
    li = []
    for i in hash1:
        li.append(encrypt(i,pri[1],pri[0]))
    return li


def encrypt(n,g,pri):
    e=(ord(n)**g)%pri
    return e


fp = open('F:\VB6.0\Project\hash.txt', 'r')
msg = fp.read().strip()
fp.close()
fp = open(msg,'r')
s = fp.read().strip()
fp.close()
fp = open('F:\VB6.0\Project\log.txt', 'r')
user = fp.read().strip()
e = hash_func(msg,user)
e = " ".join([str(i) for i in e])
f = s+"\n\n\n\n\n"+e
fp = open(msg,'w')
fp.write(f)
del(s)
fp.close()
#os.remove("hash.txt")
