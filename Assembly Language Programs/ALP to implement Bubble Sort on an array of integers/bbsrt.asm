	AREA BUBBLE , CODE
	ENTRY

	MOV R1 , #5
	SUB R1 , R1 , #1
next_pass
	MOV R2 , R1
	LDR R3, =ARRAY
next_comp
	LDRB R4 , [R3] , #1 
	LDRB R5 , [R3] 
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
	END
