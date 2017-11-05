     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
        MOV r0, #3; number 1
        MOV r1, #9; number 2
		MOV r2,#0x20000000
gcd     cmp r0,r1
		beq close
		blt less
		subs r0,r0,r1
		b gcd
less	subs r1,r1,r0
		b gcd
		
	
close str r1,[r2]
stop B stop ; stop program
     ENDFUNC
     END