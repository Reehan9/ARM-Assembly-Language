	AREA SQU , CODE
	MOV R0 , #0
	MOV R1 , #1
NEXT	
	BL	SQR ; branch to sqr
	ADD R0 , R0 , R2 
	ADD R1 , R1 , #1
	CMP  R1 , #6
	BNE NEXT
GO	B	GO
SQR	
	MUL	R2,R1,R1 ; multuply
	BX	LR ;    MOV PC , LR
	END
