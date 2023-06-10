#!/usr/bin/gnuplot -persist
# Code examples
# Gnuplot commands are shown using a monospace font, like this: plot sin(x). Gnu-
# plot commands can be entered at the gnuplot command prompt as shown in the text;
# the prompt itself has been suppressed to save space.
# Single command lines can be long; to make them fit on a page, I occasionally had
# to break them across multiple lines. If so, a gray arrow (➥) has been placed at the
# beginning of the next line, to indicate that it is the continuation of the previous one:
reset
set terminal pngcairo font "Ubuntu, 13" size 400,600
set output "/home/denis/ffc/gnupl-ffc/gnu/matrix/img/ffc/filled.png"
plot "/home/denis/ffc/gnupl-ffc/gnu/matrix/bin/client/data/ffc/preface.txt" using 1:2 \
smooth csplines title "/home/denis/ffc/gnupl-ffc/gnu/matrix/bin/client/data/ffc/seq-active.txt" with lines 
