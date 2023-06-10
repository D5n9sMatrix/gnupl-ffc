#!/usr/bin/gnuplot -persist
# # If ∇xx L(xk , λk ) is positive definite on the null space of cx (xk ), the above
# KKT system is necessary and sufficient for solving the QP:
# min
# s∈X
# 1
# 2 〈∇xx L(xk , λk )s, s〉X + 〈∇x L(xk , λk ), s〉X + L(xk , λk )
# s.t. cx (xk )s + c(xk ) = 0
set terminal pngcairo font "Ubuntu, 13" size 400,600
set output "/home/denis/ffc/gnupl-ffc/gnu/matrix/img/ffc/resume-report.png"
xk = 40
Ak = 40
set xrange [-1:40]
set yrange [-1:40]
c(xk) = sinh(xk*Ak)
QP=sinh(xk)
min = QP * pi
AxLy(xk, Ak) = exp(QP)
set table "/home/denis/ffc/gnupl-ffc/gnu/matrix/bin/client/data/ffc/resume.txt"
plot AxLy(xk, Ak) * pi  with vectors