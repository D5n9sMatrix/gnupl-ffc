#!/usr/bin/gnuplot -persist
# This book doesn’t require a strong background in mathematical methods or any in
# statistics, but I occasionally do expect you to have at least a fleeting familiarity with
# simple programming concepts. A few sections naturally require some special prelimi-
# naries (for instance, some of the discussions in chapter 10 require knowledge of
# LaTeX, and some sections in chapter 11 use Perl or Python code), but you can safely
# skip those sections if their material doesn’t apply to you.
# Sequential Quadratic Programming
# Newton’s method applied to optimality conditions:
# (∇xx L(xk , λk ) cx (xk )∗
# cx (xk ) 0
# (∇x f (xk ) + cx (xk )∗λ
reset
set terminal pngcairo font "Ubuntu, 13"  size 400,600
set output '/home/denis/ffc/gnupl-ffc/gnu/matrix/img/ffc/fullpool.png'
xk = 40
Ak = 40
set xrange [-1:40]
set yrange [-1:40]
cx(xk) = sinh(xk*Ak)
AxLx(xk, Ak) = cx(xk)
set table "/home/denis/ffc/gnupl-ffc/gnu/matrix/bin/client/data/ffc/pray.txt"
plot AxLx(xk, Ak) with vectors

# Conventions
# I spell the name of the program in all lowercase (gnuplot), except at the beginning of
# a sentence, when I capitalize it normally. This is in accordance with the usage recom-
# mended in the gnuplot FAQ.
FAQ="Guides"

