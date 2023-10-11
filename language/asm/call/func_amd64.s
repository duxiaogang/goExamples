#include "go_asm.h"
#include "textflag.h"

//func asmFunc1()
TEXT ·asmFunc1(SB), NOSPLIT, $0-0
    SUBQ $8, SP
    CALL ·goFunc2(SB)
    MOVQ 0(SP), AX
    ADDQ $8, SP
	RET
