     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
        MOV r0, #1; number1
        MOV r1, #9; number 2
		MOV r3, #3; number 3
		MOV r5, #0x20000000;adress to store greatest no
		CMP r1,r2
		bgt one
		mov r1,r2
one 	cmp r1,r3
        bgt two
		mov r1,r3
two		str r1,[r5]		

stop B stop ; stop program
     ENDFUNC
     END