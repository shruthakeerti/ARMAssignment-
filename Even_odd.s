     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
        MOV r0, #13; number
		MOV r4,#0x20000000;stores 'E' if even or 'D' if odd at address 20000000
		MOV r1,#14
		MOV r2,#13
		
		TST r0,#1
		BEQ even
		BNE odd
even	str r1,[r4]
		B close
odd		str r2,[r4]

		
	
close
stop B stop ; stop program
     ENDFUNC
     END