import main

fp = open("log.txt", 'r')
s = fp.read().strip()
fp.close()

key = main.find(s)

if str(key) == 'None':
    fp = open("log.txt", 'w')
    fp.write(str(key))
    fp.close()
