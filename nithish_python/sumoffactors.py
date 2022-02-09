n = int(input("Enter number"))


def sum_(n):
    s = 0
    for i in range(1, n + 1):
        if n % i == 0:
            s += i
    return s


print('sum: ' + str(sum_(n)))