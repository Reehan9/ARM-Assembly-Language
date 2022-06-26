       AREA    RESET, CODE, READONLY
       ENTRY

start   MOV     R1, #5     ; n = 5
        MOV     R3, #0      ; fn1 = 0
        MOV     R0, #1      ; fn = 1
        MOV     R2, #1      ; curr = 1
		MOV		R5, #0x40000000
		STR		R3, [R5] ,#4
whn     CMP     R2, R1      ; while (curr < 1)
        STR		R0 , [R5] , #4
        BHS     endwhn      ; { ; Branch higher than or same
        ADD     R2, R2, #1  ;   curr = curr + 1
        MOV     R4, R0      ;   tmp = fn
        ADD     R0, R0, R3  ;   fn = fn + fn1
        MOV     R3, R4      ;   fn1 = tmp
        B       whn         ; }
endwhn

STOP    B       STOP

        END