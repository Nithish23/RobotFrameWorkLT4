def digital_root(n):
    if(n < 10):
        return n
    n=n%10+digital_root(n//10)
    return digital_root(n)


print((digital_root(9956782345098712347865490832469987)))