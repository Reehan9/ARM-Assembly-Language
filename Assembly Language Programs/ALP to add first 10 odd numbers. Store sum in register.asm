	AREA ADDODD , CODE 
	MOV R0 , #1
	MOV R1 , #0
	MOV R2 , #0
NEXT
	ADD R2 , R2 , R0
	ADD R0 , R0 , #2 ; TO GET THE NEXT ODD NUMBER
	ADD R1 , R1 , #1 ; COUNTER variable.
	CMP R1 , #10 ; Conditional statement
	BNE NEXT
GO B GO
	END
