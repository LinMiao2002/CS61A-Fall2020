def test():
    pi =31415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679
    score = 1
    i = 0
    while True:
        if pi //pow(10,i) > pow(10,score) and pi//pow(10,i) < pow(10,score+1):
            pi = pi//pow(10,i)
            break
        print(pi//pow(10,i),pow(10,score-1))
        i = i +1
    return pi % 10 + 3

p = test()
