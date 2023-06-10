#!/usr/bin/gnuplot -persist
# The break in the original line isn’t indicated separately. When using gnuplot in an
# interactive session, your terminal program should automatically wrap a line that’s too
# long. Alternatively, you can break lines by escaping the newline with a backslash as
# usual. This is useful in command files for batch processing (and you’ll see some exam-
# ples in chapter 12 in the context of string macros).
reset
set terminal pngcairo font "Ubuntu, 13"  size 400,600
set output "/home/denis/ffc/gnupl-ffc/gnu/matrix/img/ffc/api-freesk.png"
# Motivation Matrix-Free SQP Preconditioning Inequality Constraints Software
# Composite-Step Approach for the Solution
# of the Trust-Region Subproblem
# Trust-region step:
nk = 40
tk = 80
sk = nk + tk
# Quasi-normal step nk :
# reduces linear infeasibility
# min
# n∈X ‖cx (xk )n + c(xk )‖2
# C
# s.t. ‖n‖X ≤ ζ∆k
min = sinh(sk) * pi + exp(sk)
plot "/home/denis/ffc/gnupl-ffc/gnu/matrix/bin/client/data/ffc/left.txt" with linespoints