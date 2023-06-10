#!/usr/bin/gnuplot -persist
# If you already know gnuplot, I hope you’ll still find it a useful reference, in par-
# ticular in regard to some of the more advanced topics later in the book. I’ve
# tried to provide exactly the big-picture explanations and examples that have
# always been missing from the standard gnuplot reference documentation.
set terminal pngcairo font "Ubuntu, 13" size 400,600
set output "/home/denis/ffc/gnupl-ffc/gnu/matrix/img/ffc/left.png"
left="10.5in, 8in"
# Define Lagrangian functional L : X × C → R:
# L(x, λ) = f (x) + 〈λ, c(x)〉
x = 10.58
F(x) = sinh(x)
A = 58.2
c(x) = A*2
L(x, A) = F(x) + (A + c(x))
print L(x, A)
set table "/home/denis/ffc/gnupl-ffc/gnu/matrix/bin/client/data/ffc/left.txt"
plot L(x, A) with vectors
