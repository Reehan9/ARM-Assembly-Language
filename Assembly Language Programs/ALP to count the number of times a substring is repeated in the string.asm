	AREA STRING , CODE
	ENTRY
	LDR R1 , =M ; Loading the address of pattern string
	LDR R2 , =N ; substring
	MOV R12 , R2 ; Maintaing a copy of the substring
LOOP
	LDRB R3 , [R1] ; Loading the value into a regiter
	LDRB R4 , [R2]
	CMP R4 , #0 ; If there is a complete match of the string
	ADDEQ R7 , R7 , #1 ; Increament Counter by 1
	MOVEQ R2 , R12 ; Return the starting address of the substring to check further matches
	BEQ LOOP 
	CMP R4 , R3 ; Compare if the character matches
	ADDEQ R2 , R2 , #1 ; Move on to the next character in the string
	MOVNE R2 , R12 ; else return to the starting address
	ADD R1 , R1 , #1 ; move on to the next character of the string
	CMP R3 , #0 ; If the pattern is empty
	BNE LOOP 
	BEQ STOP ; End of program
STOP	B	STOP
M	DCB "ABCABCABCABCABCABCABC",0
N	DCB "ABC",0
