import hashlib

def Hashcode(n):
    res = hashlib.md5(n.encode('utf-8'))
    res = res.hexdigest()
    return res

