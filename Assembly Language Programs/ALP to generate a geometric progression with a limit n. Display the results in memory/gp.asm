	 AREA GEOPROG,CODE
	 MOV R0,#1
	 MOV R1,#2
	 LDR R2,=GP ; 0x40000000
	 MOV R3,#10
NEXT MUL R0,R1,R0
	 STR R0,[R2],#4 ; increamenting the address by 4 and storing it in memory
	 SUB R3,R3,#1 
	 CMP R3,#0
	 BNE NEXT 
GO 	 B GO
	 AREA GEOPROGMEM,DATA ; data definition
GP	 SPACE 10
	 END
