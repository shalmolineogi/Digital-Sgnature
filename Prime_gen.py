import pickle

def prime_gen(a,b):
    with open('data.pickle', 'rb') as f:
        # The protocol version used is detected automatically, so we do not
        # have to specify it.
        data = pickle.load(f)
        return (data[a],data[b])
