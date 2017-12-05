
	 PRESERVE8
     THUMB
 	 AREA     arm_seembly, CODE, READONLY
     EXPORT __main
	 ENTRY 

N EQU 10		;n times loops
__main  FUNCTION	
exponent	SN s0	;exponent in S0
n	SN s1	;up to n terms
answer SN s2	; cumulative answer ,answer is in S2
temp SN s3
i SN s4	;iterations


	VMOV.F32 exponent,#3	
	VMOV.F32 n,#10	
	VMOV.F32 temp,#1	
	VMOV.F32 n,#1
	VMOV.F32 answer,#1
	VMOV.F32 s5,#1
	
loop
	CMP R6,#N
	BEQ stop						
	VMUL.F32 temp,temp,exponent			; temp = temp*exponent
	VDIV.F32 temp,temp,i			; temp = temp/i
	VADD.F32 answer,answer,temp			; answer = answer+temp
	ADD R3,R3,#1					;i++
	VADD.F32 i,i,S5 ;i++
	B loop
    
stop B stop ; stop program
     ENDFUNC
     END
