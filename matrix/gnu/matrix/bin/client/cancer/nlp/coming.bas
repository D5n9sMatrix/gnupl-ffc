/'
Motivation Matrix-Free SQP Preconditioning Inequality Constraints Software
Composite Step for Matrix-Free TR SQP
ζ∆k ∆k
tk
cx (xk )t = 0
cx (xk )s + c(xk ) = 0
nk
ζ∆k ∆k
nk
tk
cx (xk )t = 0
cx (xk )s + c(xk ) = 0
etk
With matrix-free linear algebra — such as iterative linear solvers —
the quasi-normal and tangential steps are computed inexactly.
Special care must be taken to guarantee convergence!
'/
Declare Function SQP CDecl Alias "Matrix-Free" (ByVal tk As Single) As Double

Type Matrix Alias "Freesk"
         Dim ApiFreesk As Double
         Dim ApiNext As Integer
         Dim ApiFree As Single
End Type

#macro ApiFreeskNext(Api, Freesk)
             Api + Freesk
#endmacro

#macro ApiNextPath(ApiPath, PathFreesk)
             ApiPath + PathFreesk
#endmacro

#macro ApiFreeNext(ApiFree, ComingFreesk)
             ApiFree + ComingFreesk
#endmacro

End