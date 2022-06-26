	AREA BUBBLE , CODE
	ENTRY

	LDR R0 , =n
	LDRB R1 , [R0]
	SUB R1 , R1 , #1
next_pass
	MOV R2 , R1
	LDR R3, =ARRAY
next_comp
	LDRB R4 , [R3] , #1 ; ++counter , counter++
	LDRB R5 , [R3] ; r3+1
	CMP R4 , R5
	BLE no_exch
	
	STRB R4 , [R3]      ; swapping of both the numbers
	STRB R5, [R3 , #-1]

no_exch
	SUBS  R2 ,R2, #1 
	BNE next_comp
	
	SUBS R1 , R1 , #1
	BNE next_pass

GO B GO

	AREA _DATA , DATA
ARRAY DCB 3,2,1,4,5
n	SPACE 1
	END
