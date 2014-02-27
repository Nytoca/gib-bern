'===================================================================
' Modul 122: 
'-------------
' Imperatives Paradigma
' Ralph Maurer, iet gibb 2011
'===================================================================



ggT 206, 4

Dim a, b, temp
Sub ggT(a, b)
	Do While Not a Mod b =  0 
		temp = a
		a = b
		b = temp Mod b
	Loop	
	WScript.echo "ggT(206,40) = " & b
End Sub

