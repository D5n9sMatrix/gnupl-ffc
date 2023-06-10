/'
Motivation Matrix-Free SQP Preconditioning Inequality Constraints Software
Sequential Quadratic Programming
Solve equality-constrained optimization problem:
min
x∈X f (x)
s.t. c(x) = 0
where f : X → R and c : X → C, for some Hilbert spaces X and C, and
f and c are twice continuously Fr ́echet differentiable.
'/
Declare Function SQP CDecl Alias "Sequential Quadratic Programming" (ByRef min As Integer) As Integer

Type min Alias "f(x) = sinh(x)"
         Dim f As Integer
End Type 

Dim min_fx As Integer 
Dim min_fy As Integer

min_fx = sin(2)
min_fy = sin(2)

End