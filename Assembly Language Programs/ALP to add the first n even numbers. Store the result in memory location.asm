     AREA EVEN,CODE
	 MOV R0,#2	    	
	 MOV R1,#0 ; Counter variable
	 MOV R2,#0  ; Result
	 MOV R3,#0x40000000 ; Pointer towards the memory
NEXT
	 ADD R2,R2,R0   	; Addition of even numbers
	 ADD R0,R0,#2   ; next even number
	 ADD R1,R1,#1  ; increament of counter variable
	 CMP R1,#11   ; loop condition
	 BNE NEXT ; branch not equal
	 STR R2,[R3]	; Store the value in the memory
OVER	 B OVER
	 END
