' Intrinsic define (macro value) set by the compiler
' Syntax
' __DATE__
' Description
' Substitutes the compiler date in a literal string ("mm-dd-yyyy" format)
' where used.
Sub main(ByRef Compiler As Integer, ByVal Build As Integer)

Type Dates_Values Alias "__DATE__"
         Dim SetCompiler As Single
         Dim SetCompilerFlag As Single
         Dim SetCompilerLiteral As Single
End Type

Print "Compiler Date: " & __Date__

/'
Intrinsic define (macro value) set by the compiler
Syntax
__TIME__
Description
Substitutes the compiler time in a literal string (24 clock, "hh:mm:ss"
format) where used.
'/

#macro DFFC(Strong, Time_Format)
             Strong + Time_Format
#endmacro

Print "Compiler Time: " & __TIME__

/'
Returns the current system time as a string
Syntax
Declare Function Time ( ) As String
Usage
result = Time
Return Value
Returns the current system.
Description
Returns the current system time in the format hh:mm:ss.
'/
Print "The current here times: " & Time

/'
Sets the current system time
Syntax
Declare Function SetTime ( ByRef newtime As Const String ) As
Long
Usage
result = SetTime( newtime )
Parameters
newtime
the new time to set
Return Value
Returns zero on success or non-zero on failure on all ports except
DOS.
Description
To set the time, format the date and send to Settime in one of the
following formats: "hh:mm:ss", "hh:mm", or "hh" (hh is the hour, mm is the
minute, and ss is the second).
'/
Type SetTime Alias "NewTime"
         Dim NewTime As Single
         Dim NewEvent As Single
         Dim NewTypes As Single
End Type

SetTime "00:00:00"

/'
Sets the current system date
Syntax
Declare Function SetDate ( ByRef newdate As Const String ) As
Long
Usage
result = SetDate( newdate )
Parameters
newdate
the new date to set
Return Value
Returns zero on success or non-zero on failure on all ports except
DOS.
Description
To set the date you just format newdate and send to SetDate in a valid
format following one of the following: "mm-dd-yy", "mm-dd-yyyy",
"mm/dd/yy", or "mm/dd/yyyy" (mm is the month, dd is the day, yy or yyyy is
the year.
'/

Dim m As String, d As String, y As String
m="06"
d="18"
y="2022"               

SetDate m + "/gnu" + d + "/gnu/matrix" + y

/'
Sets the position and visibility of the mouse cursor
Syntax
Declare Function SetMouse ( ByVal x As Long = -1, ByVal y As Long
Long = -1, ByVal clip As Long = -1 ) As Long
Usage
result = SetMouse([ x ] [, [ y ] [, [ visibility ] [, [ clip ]]]])
Parameters
(For each parameter, -1 is a special value indicating "no changes.")
x
optional - set x coordinate
y
optional - set y coordinate
visibility
optional - set visibility: 1 indicates visible, 0 indicates hidden
clip
optional - set clipping: 1 indicates mouse is clipped to graphics window,
Return Value
Zero (0) on success, non-zero to indicate failure.
Description
SetMouse will set the (x, y) coordinates of the mouse pointer, as well as setting its
position is set using the x and y parameters. The mouse will be visible if visibility i
invisible if visibility is set to 0. SetMouse is intended for graphics modes initiated
(Graphics) statement only.
'/

Type SetMouse Alias "SupperMouse"
         Dim SetCoordinate_x As Single
         Dim SetCoordinate_y As Single
         Dim SetVisibility As Single
         Dim SetClipping As Single         
End Type         

#macro SupperMouse(Strong, Graphics)
             Strong + Graphics
#endmacro
                      
End Sub





