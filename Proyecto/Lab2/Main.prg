Global Integer i, j
Function main
	Motor On
	Power Low
	Accel 100, 100
	Speed 100
	
	Home
    Do
'    	SpeedS 60
'		Go Origen :Z(200)
'		Go Origen
'		Go Origen :Z(200)
'		Wait 0.5
'		Go EjeX :Z(200)
'		Go EjeX
'		Go EjeX :Z(200)
'		Wait 0.5
'		Go EjeY :Z(200)
'		Go EjeY
'		Go EjeY :Z(200)
'		Wait 0.5
'		
'    	SpeedS 100
'		Move Origen
'		Wait 0.5
'		Move EjeX
'		Wait 0.5
'		Move EjeY
'		Wait 0.5
	'If Sw(9) Then
		Call paletizado_z
	'EndIf

	'If Sw(10) Then
		Call paletizado_s
	'EndIf
	'If Sw(11) Then
		Call paletizado_externo
	'EndIf
					
	Loop
Fend
Function paletizado_z
	#define estado_paletizado_z 11
	Pallet 1, Origen, EjeY, EjeX, 3, 3
	On estado_paletizado_z
	For i = 1 To 9
		Go Pallet(1, i) :Z(200)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(200)
	Next
	Off estado_paletizado_z
Fend
Function paletizado_s
	Pallet 1, Origen, EjeY, EjeX, 3, 3
	#define estado_paletizado_s 12
	On estado_paletizado_s
	For i = 1 To 3
		Go Pallet(1, i) :Z(200)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(200)
	Next
	For i = 6 To 4 Step -1
		Go Pallet(1, i) :Z(200)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(200)
	Next
	For i = 7 To 9
		Go Pallet(1, i) :Z(200)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(200)
	Next
		
	Off estado_paletizado_s
Fend
Function paletizado_externo
		
	#define estado_paletizado_externo 12
	Pallet Outside, 2, Origen, EjeX, EjeY, 3, 3
	On estado_paletizado_externo
	For i = 1 To 4
		For j = 1 To 4
		Go Pallet(2, i, j) :Z(200)
		Go Pallet(2, i, j)
		Go Pallet(2, i, j) :Z(200)

		Next
	Next
	Off estado_paletizado_externo
	
Fend

