/'
Motivation Matrix-Free SQP Preconditioning Inequality Constraints Software
Composite-Step Approach for the Solution
of the Trust-Region Subproblem
Trust-region step:
sk = nk + tk
Quasi-normal step nk :
reduces linear infeasibility
min
n∈X ‖cx (xk )n + c(xk )‖2
C
s.t. ‖n‖X ≤ ζ∆k
Tangential step tk :
improves optimality while
staying in the null space of
the linearized constraints
min
t∈X
1
2 〈∇xx L(xk , λk )(t + nk ), t + nk 〉X + 〈∇x L(xk , λk ), t + nk 〉X + L(xk , λk )
s.t. cx (xk )t = 0 , ‖t + nk ‖X ≤ ∆k
'/
Declare Function SQP CDecl Alias "min x and y" (ByRef x As Integer, ByVal y As Integer) As Double

Type SQP_VIEW Alias "Linear View"
         Dim val_x As Integer ' Linear View x
         Dim val_y As Integer ' Linear View y
End Type

Dim valx As Double
Dim valy As Double
Dim x As Integer
Dim y As Integer

x = sin(40)
y = sin(40)

valx = sin(x)
valy = sin(y)


End