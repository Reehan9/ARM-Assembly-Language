	AREA PROG,CODE,READONLY
ENTRY
	LDR R1, = 12321
	MOV R6,R1
	MOV R2,#10
	MOV R5,#0
	MOV R10,#10
LOOP BL DIV
	MLA R5,R10,R5,R4 ; MLA stands for Multiply and Accumulate , The MLA instruction multiplies the values from and , adds the value from , and places the least significant 32 bits of the result
	CMP R3,#0 
	MOVNE R1,R3
	BNE LOOP
	CMP R5,R6
	MOVEQ R7,#1 ; If the number is a pallindrome then R7 register will be 1
	MOVNE R7,#0 ; If the number is not pallindrome then R7 register will be 0
STOP B STOP
DIV MOV R3,#0 ; Division Process
LOOP2 SUBS R1,R1,R2
	ADDPL R3,R3,#1 ; Increment the value  of R3 register by 1  until the value of R1 register turns negative 
	BPL LOOP2 ; Branch if R1 is positive
	ADDMI R4,R1,R2
	BX LR ; Branch to link register , move to program counter , MOV PC,LR
	END
