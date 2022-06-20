	AREA  BINS , CODE
	ENTRY
	LDR R0 , =ARRAY
	
	LDR R1 , =KEY
	LDR R2 ,[R1]
	MOV R1 , #0
	MOV R3 , #4
next_itr
	CMP R1 ,R3
	BGT OVER
	
	ADD R4 , R1 , R3
	ASR  R4 , #1
	MOV R5 , #0
	ADD R7 ,  R4 , LSL #2 ; Logical Shift Left
	ADD R5,R5,R0
	LDR R6 ,[R5]
	
	CMP R6 ,R2
	BEQ OVER
	SUBGT R4 , R3 , R3
	ADDPL R4 , R1 , R4
	B next_itr
OVER B OVER
ARRAY DCD 1,2,3,4,5
KEY DCD 0
	END
