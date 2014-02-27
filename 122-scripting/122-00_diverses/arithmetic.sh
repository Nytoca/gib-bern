#!/bin/bash
# Skript: M122_Scripts/arithmetic.sh

# String ausgeben
echo x=10

# Variable x Wert 10 zuweisen
x=10

# VARIANTE 1: Konservative Variante aus der Literatur, Coder verzichten darauf!
echo "Konservativ: Merken Sie, der Backtick-Operator"
echo "ist eine String-Subsitution."
echo `expr $x + 1`

# VARIANTE 2: Liberal und brauchbar
echo "New school:"
# Addition
echo $(expr $x + 45)
# Subtraktion
echo $(expr $x - 45)
# Multiplikation !!! 
echo $(expr $x \* 45) # Backslash verhindert die "*" Jokerzeichen-Interpretation
# Division !!!
echo $(expr $x / 45)

# VARIANTE 3: S(c)hell, nett und gut ;)
echo "Nett und gut ;)"
# Addition
echo $((x + 5))
# Subtraktion
echo $((x - 5))
# Multiplikation !!! 
echo $((x * 5)) # No Joker ...
echo $((x / 5))

# Hier findet keine Substitution wie mit dem externen Befehl "expr" statt.
# Die Operationen werden so schneller ausgeführt, da diese direkt vom
# Shell Interpreter ausgeführt werden. 
