#!/usr/bin/gnuplot -persist
# On New Year’s Day, 2015, the gnuplot development team released version 5.0—the
# first major new gnuplot release in over 10 years! I decided to take this opportunity to
# bring Gnuplot in Action up to date and to cover all the new features gnuplot has
# acquired since the first edition of this book was written (in 2007).
# It quickly became apparent it wouldn’t be sufficient to just add a couple of chap-
# ters explaining the new features. In fact, the book you’re reading now has been almost
# entirely rewritten from scratch. Most of the material from the first edition has been
# retained, but it’s been heavily rearranged to accommodate the addition of new topics
# and to reflect the changes in my own understanding and priorities.
# Gnuplot 5 is largely backward compatible with previous versions, and hence most
# of the first edition remains valid. At the same time, new features have been added to
# all parts of gnuplot, either to add new functionality or to streamline and improve the
# existing usage. Although many of the new features are small by themselves, when
# taken together, their cumulative effect leads to a significantly different, more sophisti-
# cated user experience.
# In the process, the book’s page count has increased substantially from the first edi-
# tion. To keep the physical dimensions of the printed book in check without having to
# sacrifice important and useful material, some topics of a more specialized nature have
# been relegated to the electronic (e-book) version. Access to the e-book is included in
# the purchase of a print copy of the book.
# Today, gnuplot is still going strong. Despite increased competition, gnuplot’s two
# most attractive features are still largely unmet by other tools:
# The ability to explore data graphically, with an absolute minimum of effort, pro-
# tocol, overhead, or boilerplate.
set terminal png font "Ubuntu, 10" size 400,600
set output '/home/denis/ffc/gnupl-ffc/gnu/matrix/img/ffc/preface.png'

set xlabel 'gnu ffc fully x'
set ylabel 'gnu ffc fully y'
set angles radians
xray={1.0,0.1}
yray={1.0,0.1}
x=sinh(xray)     # prints { 1.16933, 0.154051 }
y=sinh(yray)     # prints {  1.0, 0.1 }
# boot variables
print x
print asinh(y)
set angles degrees
x=sinh(xray)    # prints { 1.16933, 0.15451 }
y=sinh(yray)    # prints { 57.29578, 5.729578 }
# boot variables
print x 
print asinh(y)
# The ability to create immaculate, very high-quality graphs, with text labels and
# other decorations, for presentation purposes
# What’s new is that gnuplot has arrived in the 21st century. Color is now the standard,
# font handling is up to date, and the graphing backend makes use of all contemporary
# technologies to create the best-looking graphs possible.
# In the first edition, I wrote that gnuplot was “an indispensable part of my toolbox:
# one of the handful of programs I can’t do without.” Several years on, this is still true.
set cblabel 'gnu ffc cbdata x'
set cbdata time 
set xdata time

# During the preparation of this book, I enjoyed conversations and correspondence
# with Austin King, Richard Kreckel, Ethan Merritt, Dawid Weiss, Bastian Märkisch,
# Daniel Sebald, Petr Mikulik, Chris Mague, Luis Moux-Dominguez, and Lee Phillips.
# Christoph Bersch, Zoltán Vörös, and Clark Gaylord read drafts of this book and pro-
# vided many detailed suggestions; Mojca Miklavec answered several specific questions
# with meticulous care. Others who read the draft manuscript include Ryan Balfanz,
# Martin Beer, Andrew Bovill, Vitaly Bragilevsky, Anthony Cramp, Wolfgang Ecker-Lala,
# Wesley R. Elsberry, Nitin Gode, David Kerns, Pavol Kral, Mathew Peet, Ravishankar
# Rajagopalan, Karl-Friedrich Ratzsch, Jonathan Rioux, Mike Shepard, and Arthur
# Zubarev.
set xrange [-1:1]
set yrange [-1:1]

x=sinh(xray*2)
y=sinh(xray*4)

print x 
print asinh(y)

# I would also like to acknowledge the tremendous impact that Wikipedia has had
# on the way I work. When I prepared the first edition, obtaining even basic information
# on topics such as color spaces, Bézier curves, and the Mandelbrot set was a real chal-
# lenge—difficult, time consuming, and not always successful. For all its faults and defi-
# ciencies, Wikipedia has made it tremendously much easier to obtain at least an initial
# introduction (and often quite a bit more) to an incredibly wide range of topics. It is a
# stunning achievement.
set zrange [-1:1]
set rrange [-1:1]

x=sinh(xray*2 / 2.1)
y=sinh(xray*4 / 4.2)

print x 
print asinh(y)

# Finally, I want to thank the people at Manning who made this book possible: pub-
# lisher Marjan Bace and everyone on the editorial and production teams, including
# Mary Piergies, Marina Michaels, Kevin Sullivan, Tiffany Taylor, Dottie Marsico, and
# many others who worked behind the scenes.
set cbrange [-1:1]
cb=sinh(xray*2 / 2.1)
fireworks=cb*pi
print fireworks

# about this book
# This book is intended to be a comprehensive introduction to gnuplot: from the basics
# to the power features and beyond. In addition to providing a tutorial on gnuplot itself,
# it demonstrates how to apply and use gnuplot to extract insight from data.
set arrow head size  20,40 filled front lw 80
unset arrow

# The gnuplot program has always had complete and detailed reference documenta-
# tion, but what was often missing was a continuous presentation that tied all the differ-
# ent bits and pieces of gnuplot together and demonstrated how to use them to achieve
# certain tasks. This book attempts to fill that gap. It should also serve as a handy refer-
# ence for more advanced gnuplot users and as an introduction to graphical ways of
# knowledge discovery.
set contour base 
set cntrparam linear levels 0 sorted 
set ztics 1
set hidden3d offset 0 
N=1
print N*pi
business="pop"
count="push"
print business, " ", count
# And finally, this book tries to show you how to use gnuplot to achieve some surpris-
# ingly nifty effects that will make everyone say, “How did you do that?”
say="How did you do hat?"
set xrange [2:10]
set yrange [2:10]
set cntrparam order 4 points 5
set cntrparam levels auto 1845 unsorted
set cntrparam firstlinetype 0
print say
# Contents of this book
# This book is divided into four parts. Part 1 consists of chapters 1 through 3 and is
# intended as a tutorial introduction to get you started with gnuplot. These three chap-
# ters cover all the truly essential material so that by the end of chapter 3, you should be
# able to handle most basic plotting tasks in gnuplot.
lap="The voice graphic radios announces!"
set xrange [2:10]
set yrange [2:10]
set contour both
set cntrparam order 4 points 5
set cntrparam levels auto 1845 unsorted
set cntrparam firstlinetype 0
set key off 
set xtics 2
set ytics 10
print lap
# Whereas part 1 only skims the surface, part 2 goes into depth. First, chapters 4 and
# 5 lay more groundwork by talking about the ins and outs of file formats, string han-
# dling, and other practical matters. Then, chapters 6 through 8 discuss the various ways
# to change the appearance of a plot: using different plotting styles; adding labels,
# arrows, or other decorations; and changing the axes and their subdivisions. These
# chapters cover the tactical aspects of working with gnuplot in detail.
depth="Perfect View"
set xlabel "View adding x"
set ylabel "View adding y"
set arrow 20 filled back ls 1
set contour surface
show contour
set cntrlabel format '%.1f' font "Ubuntu, 13"
set cntrlabel start 1 interval 20
set cntrlabel onecolor
print depth

# Part 3 turns its attention away from individual graphs and addresses a variety of
# more technical aspects. First, in chapter 9, you’ll learn more about color specification,
# point and line types, and other relatively low-level graph elements. Chapter 10
# explains how to export plots to common graphics file formats. Finally, chapters 11 and
# 12 address ways to improve the overall workflow through scripting and configuration
# changes.
Part="3 turns"
address="27"
set xtics 12
set ytics 12
set xdata 
set ydata 
set color 
set cntrparam levels auto 27 sorted
set cntrlabel start 5 interval 20
unset cblabel
print Part, " ", "address",  " ", address
# In the last part, I’ll mostly take gnuplot’s features for granted and concentrate on
# the things you can do with them. Chapter 13 presents various fundamental types of
# graphs and explains when and how to use them. Chapter 14 is more advanced and
# offers solutions to some recurring topics in graphical analysis, before we end the book
# with a reminder of what it’s all about in chapter 15.
features="Perfect View features"
print features
# The book has several appendixes. Appendix A explains how to obtain, build, and
# install gnuplot. Appendix B provides pointers to some relevant resources.
Appendix=4000
B=Appendix
build=B*pi
jobs=build
print jobs*pi
# Finally, some topics of a more specialized character have been relegated to a set of
# supplemental appendixes: appendixes C and D discuss three-dimensional surface
# plots and false-color plots (heatmaps), appendix E treats some special types of graphs,
# and appendix F covers more mathematical topics. To reduce the physical dimensions
# of the print book, these four appendixes are only available in the electronic (e-book)
# version of this book. The purchase of a hard copy includes access to the e-book as
# well—you can find instructions in the front of the print book.
C=3000
D=4000
print Appendix * C / 300 * pi
print Appendix * D / 400 * pi
set xdata
set ydata
x=Appendix*10*pi
y=Appendix*20*pi 
set clip radial
set x2data # topic buffer url
set zero 1e-3
print x 
print y 
# Appendixes C through F are only available in the e-book version of this
# book, which is included with the purchase of the hard-copy version. Check
# the front of the print book for instructions on how to obtain the e-book.
C=C*pi 
F=C*pi 
Tip=C+F*sinh(xray)
print "Check signal xray:  ", Tip
# How to read this book
# This book was written as if readers were going to read it sequentially, cover to cover.
# New material is presented in order, with later chapters relying only on topics intro-
# duced earlier and avoiding forward references as much as possible. I realize that this is
# not a realistic picture and that the need for technical information tends to arise in a
# much more disjointed manner. In this spirit, I offer a few different “trail maps” to the
# material presented here:
differ="trail maps"
set contour both
set xlabel 'trail maps flags x'
set ylabel 'trail maps flags y'
sneeze="cheers"
Q=sinh(2)
E=Q*pi
print differ, " ", sneeze, " ", "you get the value: ", Q / sinh(E) 
# If you’re new to gnuplot, begin with chapters 2 and 3 and then dive into chap-
# ters 4–8 as required to pick up the skills you need to complete whatever task
# you want to accomplish.
skills="The you need to complete"
set contour base
set xtics 2
set ytics 3
set ztics 8
task="to accompilish!"
print skills, " ", task
# If you’re comfortable creating day-to-day graphs with gnuplot, then the mate-
# rial in chapters 9–12 should help you achieve greater efficiency in your work
# and fine-tune the results.
work="Programmer Software Free IDEs"
set xtics 9
set ytics 12
set contour surface
set view map scale 1845
print work
# If you’ve been using gnuplot for a long time already, then make sure you read
# up on the new features in gnuplot 5. Chapters 5, 9, and 10, as well as parts of
# chapters 11 and 12 will probably be of the most immediate interest to you.
newfeatures="well 5, 9, 10, 11, 12"
will=newfeatures
set xtics 5
set ytics 9
set ztics 10
set xtics 11
set ytics 12
set contour both
set x2data
set ydata
set xrange [5:12]
set yrange [5:12]
set zrange [5:12]
print will
# If you’re new to graphical analysis, you may want to begin with chapter 13 to
# learn some of the basic methods and concepts.
concepts="let go... new features"
f(x) = sinh(x)
set table "/home/denis/ffc/gnupl-ffc/gnu/matrix/bin/client/data/ffc/preface.txt"
plot f(x) with lines title "let go... new features"
plot "/home/denis/ffc/gnupl-ffc/gnu/matrix/bin/client/data/ffc/preface.txt" with lines
# Whom this book is for
# This book is intended for anyone who wants to plot and visualize data, either to
# explore data sets graphically, or to create attractive, high-quality graphs for presenta-
# tion and publication purposes. I had two kinds of people in mind when writing this
# book—those who already know gnuplot, and those who don’t:
set xrange [-1:40]
set yrange [-1:40]
x = 40
f(x) = sinh(x)
c(x) = 40
min = f(x) * c(x) / 2.2
print min
plot "/home/denis/ffc/gnupl-ffc/gnu/matrix/bin/client/data/ffc/seq-active.txt" with vectors