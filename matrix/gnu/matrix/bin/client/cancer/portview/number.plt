#!/usr/bin/gnuplot -persist
# If you’re new to gnuplot, I think you’ll find it easy enough to pick up—in fact, I
# can promise you that by the end of chapter 2, you’ll be productive with gnuplot;
# and by the end of chapter 3, you’ll be well equipped for most day-to-day data
# graphing tasks that may come your way.
set terminal pngcairo font "Ubuntu, 13" size 400,600
set output "/home/denis/ffc/gnupl-ffc/gnu/matrix/img/ffc/number.png"
task=27
x = 40
set xrange [-1:40]
set yrange [-1:40] 
f(x) = sinh(task*2) + exp(x)
set table "/home/denis/ffc/gnupl-ffc/gnu/matrix/bin/client/data/ffc/number.txt"
plot f(x) + sinh(x) with vectors 