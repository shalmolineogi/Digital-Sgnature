import random,pickle

def get_states():
    with open('F:\VB6.0\Project\data.pickle', 'rb') as f:
        # The protocol version used is detected automatically, so we do not
        # have to specify it.
        data = pickle.load(f)
        p = data[random.randint(0,2999)]
        q = data[random.randint(0,2999)]
        n = p*q
        phi = (p-1)*(q-1)
        e = data[random.randint(0,2999)]
        return (n,phi,e)

state_tup = get_states()
def get_privateKey():
    newPhi = state_tup[1]
    newE = state_tup[2]
    def euclid(num1,num2,num3,num4):
        if num3==1:
            key = num4
            return key
        else:
            newNum3 = num1-((num1//num3)*num3)
            newNum4 = (num2-(num4*(num1//num3)))%newPhi
            return euclid(num3,num4,newNum3, newNum4)
    return euclid(newPhi, newPhi, newE,1)

def encrypt(message):
    cipherList= []
    for ltr in message:
        encryptedLtr = (ord(ltr)**state_tup[2])%state_tup[0]
        cipherList.append(encryptedLtr)
    return cipherList

def decrypt(cipherTextList):
    d = int(input("What's the private key: "))
    if d==get_privateKey():
        message = []
        for item in cipherTextList:
            decryptedLtr = chr((item**d)%state_tup[0])
            message.append(decryptedLtr)
        print("Msg:", "".join(message))
    else:
        print("InvalidKey")
    
