import main

fp = open("log.txt", 'r')
s = fp.read()
main.Create(s)
fp.close()
