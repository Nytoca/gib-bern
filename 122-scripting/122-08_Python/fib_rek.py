#!/usr/bin/python3

print("Rekursiver Fibonacci-Generator")

end = 25
a,b,counter = 0,1,1

def fib(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fib(n-1) + fib(n-2)

for i in range (0,int(end)+1):
    print("fib(" + str(i) +") = " + str(fib(i)))
