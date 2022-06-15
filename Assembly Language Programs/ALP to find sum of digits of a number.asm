	AREA SUMOFDIGITS , CODE 
ENTRY
	LDR R0 , =0X45
	MOV R1 , #0 ; SUM
	MOV R2 , 0X10 ;  divsor , to get the digit
	
get_next_digit
	BL get_ls_digit
	
	ADD R1 , R1 , R4
	CMP R0 , #0
	MOVNE R0 , R3
	BNE get_next_digit
STOP	B	STOP

get_ls_digit
	MOV R5 , R0
	MOV R3 , #0 ; QUO
	MOV R4 , #0 ; REM
	
sub_again
	SUBS R5 , R5 ,R2
	ADDPL R3 , R3 , #1
	BPL sub_again
	ADDMI R4 , R5 , R2
	BX LR ; MOV PC , LR
GO B GO
	END