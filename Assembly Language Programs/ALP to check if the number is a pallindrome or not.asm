	AREA PROG,CODE,READONLY
ENTRY
	LDR R1, = 12321
	MOV R6,R1
	MOV R2,#10
	MOV R5,#0
	MOV R10,#10
LOOP BL DIV
	MLA R5,R10,R5,R4
	CMP R3,#0
	MOVNE R1,R3
	BNE LOOP
	CMP R5,R6
	MOVEQ R7,#1 ; If the number is a pallindrome then R7 register will be 1
	MOVNE R7,#0 ; If the number is not pallindrome then R7 register will be 0
STOP B STOP
DIV MOV R3,#0 ; Division 
LOOP2 SUBS R1,R1,R2
	ADDPL R3,R3,#1
	BPL LOOP2
	ADDMI R4,R1,R2
	BX LR ; Branch to link register , move to program it program counter
	END