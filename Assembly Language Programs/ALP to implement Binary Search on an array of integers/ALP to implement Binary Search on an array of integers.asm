	AREA  BINS , CODE
	ENTRY
	LDR R0 , =ARRAY
	
	LDR R1 , =KEY
	LDR R2 ,[R1] ; key
	MOV R1 , #0 ; low
	MOV R3 , #4 ; high - 1
next_itr
	CMP R1 ,R3 ; low vs high
	BGT OVER ; if low is greater than high then exit the program
	ADD R4 , R1 , R3 ; mid = low + high 
	ASR  R4 , #1 ;  mid / 2 , Arthemetic Shift Right Operation , which basically divides the value in R4 register by 2 
	MOV R5 , #0 ; 
	ADD R5 ,  R4 , LSL #2 ; Logical Shift Left  , mid = mid + 4 , beacuse each element is a word.
	ADD R5,R5,R0
	LDR R6 ,[R5] ; mid-element
	
	CMP R6 ,R2 ; mid vs key
	BEQ OVER ; if (mid-element==key) then exit the program
	SUBGT R3 , R4 , #1 ; subract if greater thanm ; high = mid - 1 
	ADDLT R1 , R4 , #1 ; if(mid-element<key)  , low = mid + 1 ; 
	B next_itr
OVER B OVER
ARRAY DCD 0x11,0x22,0x33,0x44,0x55
KEY DCD 0x33
	END
