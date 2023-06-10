#!/usr/bin/gnuplot -persist
# Motivation Matrix-Free SQP Preconditioning Inequality Constraints Software
# Sequential Quadratic Programming
# Solve equality-constrained optimization problem:
# min
# x∈X f (x)
# s.t. c(x) = 0
# where f : X → R and c : X → C, for some Hilbert spaces X and C, and
# f and c are twice continuously Fr ́echet differentiable.
reset
set terminal png font "Ubuntu, 13" size 400,600
set output "/home/denis/ffc/gnupl-ffc/gnu/matrix/img/ffc/seq-active.png"
set xrange [-1:40]
set yrange [-1:40]
x = 40
f(x) = sinh(x)
c(x) = 40
min = f(x) * c(x) / 2.2
print min
set table "/home/denis/ffc/gnupl-ffc/gnu/matrix/bin/client/data/ffc/seq-active.txt"
plot min with lines
