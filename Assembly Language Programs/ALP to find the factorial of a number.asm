	AREA FACTORIAL , CODE
	ENTRY
	
	MOV R1, #10
	MOV R2, #1
	
NEXT
	MUL R2,R1,R2
	SUB R1,R1,#1
	CMP R1 ,#1
	BNE NEXT
GO B GO
	END
	