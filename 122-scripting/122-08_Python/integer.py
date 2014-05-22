#!/usr/bin/python3

from math import sqrt

# String ausgeben
print("------------------------------------------")
print("Hello Python")
print("------------------------------------------")

print("Integer: ")
print("Pythagoras a² + b² = c²")
a = 5
b = 5

quadratsumme = a**2 + b**2
c = float(sqrt(quadratsumme))
print("a=5, b=6, c=%s" % str(c))
print(a,b,c)

