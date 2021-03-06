;ASDesign Compatible Macro
;Name=BPAir_Barrel_1, Type=Airfield Objects, Bitmap=BPAir_Barrel_1.jpg, \
;FixedLength=5, FixedWidth=5, \
;Latitude, Longitude, Rotation=0, \
;Visibility=2000, Elevation=0, Density=3, Scale=1, \

;
;   Macro Parameters:
;   1 = latitude
;   2 = longitude
;   3 = rotation
;   4 = visibility (in meters)
;   5 = elevation
;   6 = complexity
;   7 = scale

	IfVarRange( :next@ 346  %6  5 )  ;check complexity
	PerspectiveCall( :pcall@ )
	Jump( :next@ )

:pcall@
	Perspective

mif( %5  )
	RefPoint(  2  :ret@  %7  %1 %2  v1= %4   E= %5  v2= [20 + %5]   )
melse
	RefPoint(  7  :ret@  %7  %1 %2  v1= %4  v2= 20  )
mifend

	RotatedCall( :start@ 0 0 %3 )

	Return

:start@

	CallLibObj(0 1E115669 26730104 022E0DB1 C0F65F5C )
:ret@
	Return

:next@
