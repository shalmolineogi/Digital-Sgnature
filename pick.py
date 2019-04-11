import pickle

def Pick(n,ls):
    with open(n, 'wb') as f:
        # Pickle the 'data' dictionary using the highest protocol available.
        pickle.dump(ls, f, pickle.HIGHEST_PROTOCOL)
        return

def Unpick(n):
    with open(n, 'rb') as f:
        # The protocol version used is detected automatically, so we do not
        # have to specify it.
        return pickle.load(f)
    