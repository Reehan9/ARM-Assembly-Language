	AREA PROG10,CODE,READONLY
NUMBER RN 1 
NUMONES RN 10
NUMZEROES RN 11
	;MOV R5,#0x40000000
	LDR NUMBER,=0xA ; 
	MOV NUMONES,#0
	MOV NUMZEROES,#0
LOOP LSRS NUMBER,#1 ;  1010 -> 0101 
	ADDCS NUMONES,#1 ; ADD CARRY SET , Flag indicated in the CPSR register
	ADDCC NUMZEROES,#1 ; ADD CARRY CLEAR
	CMP NUMBER,#0 
	BNE LOOP
	;STR NUMONES,[R5]
	;STR NUMZEROES,[R5,#4]
STOP	 B	 STOP
