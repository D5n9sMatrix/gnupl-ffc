/'
Solve a sequence of nonconvex quadratic trust-region subproblems:
min
s∈X
1
2 〈∇xx L(xk , λk )s, s〉X + 〈∇x L(xk , λk ), s〉X + L(xk , λk )
s.t. cx (xk )s + c(xk ) = 0 , ‖s‖X ≤ ∆k
Possible incompatibility of constraints: composite-step approach.
'/
Declare Function Min CDecl Alias "AxLx(xk, Ak) = sinh(s * s)" (ByRef Min_Ax As Integer, ByVal Min_Ay As Integer) As Integer

# If __FB_LANG__ = "fb"
Namespace FBC
# endif

Const FB_MAXDIMENSIONS As Integer = 8

Type FBARRAYDIM
    Dim As UInteger elements     '' number of elements
    Dim As Integer LBound        '' dimension lower bound
    Dim As Integer UBound        '' dimension upper bound
End Type

Const FBARRAY_FLAGS_DIMENSIONS = &h0000000f    '' number of entries allocated in dimTb()
Const FBARRAY_FLAGS_FIXED_DIM  = &h00000010    '' array has fixed number of dimensions
Const FBARRAY_FLAGS_FIXED_LEN  = &h00000020    '' array points to fixed-length memory
Const FBARRAY_FLAGS_RESERVED   = &hffffffc0    '' reserved, do not use

Type FBARRAY
    Dim As Any Ptr index_ptr     '' @array(0, 0, 0, ... )
    Dim As Any Ptr base_ptr      '' start of memory at array lowest bounds
    Dim As UInteger size         '' byte size of allocated contents
    Dim As UInteger element_len  '' byte size of single element
    Dim As UInteger dimensions   '' number of dimensions
    Dim As UInteger flags        '' FBARRAY_FLAGS_*

    '' take care with number of dimensions; fbc may allocate
    '' a smaller descriptor with fewer than FB_MAXDIMENSIONS
    '' in dimTb() if it is known at compile time that they
    '' are never needed.  Always respect number of
    '' dimensions when accessing dimTb()

    Dim As FBARRAYDIM dimTb(0 To FB_MAXDIMENSIONS-1)
End Type

Extern "rtlib"
    Declare Function ArrayDescriptorPtr Alias "fb_ArrayGetDesc" _
        ( array() As Any ) As FBC.FBARRAY Ptr
    Declare Function ArrayConstDescriptorPtr Alias "fb_ArrayGetDesc" _
        ( array() As Const Any ) As Const FBC.FBARRAY Ptr
End Extern

# If __FB_LANG__ = "fb"
End Namespace
# endif

End