     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
        MOV r0, #0 ; 
        MOV r1, #1; 
		MOV r3,#0
		MOV r5, #0x20000000;adress to store series
		MOV r4, #10;no of terms in fibonacci series
		STR r0,[r5]
		ADD r5,r5,#4
		STR r1,[r5]
		ADD r5,r5,#4

loop    CMP r4,#1
		ADD r3,r0,r1
		MOV r0,r1
		MOV r1,r3
		subgt r4,r4,#1
		str r3,[r5]
		ADD r5,r5,#4
		MOV r3,#0
		bgt loop
		

stop B stop ; stop program
     ENDFUNC
     END