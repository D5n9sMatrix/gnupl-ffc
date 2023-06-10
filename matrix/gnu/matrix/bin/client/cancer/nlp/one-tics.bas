' Define Lagrangian functional L : X × C → R:
' L(x, λ) = f (x) + 〈λ, c(x)〉
Declare Function Lagrangian CDecl Alias "L(x) = sinh(C*R)" (ByRef L As Integer) As Integer

Type L_x Alias "L(x, A) = f(x) + <A, c(x)>"
         Dim Lx As Integer
End Type

Type L_y Alias "L(y, A) = f(y) + <A, c(y)>"
         Dim Ly As Integer
End Type

         Dim Lx_out As Integer
         Dim Ly_out As Integer

Lx_out=sin(2)
Ly_out=sin(2)

End