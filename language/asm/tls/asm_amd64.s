#include "go_asm.h"
#include "textflag.h"

#define	get_tls(r)	MOVQ TLS, r
#define	g(r)	0(r)(TLS*1)

TEXT ·asmFunc1(SB), NOSPLIT, $0-0
    get_tls(CX)
    MOVQ g(CX), AX
    CALL ·Func1(SB)
	RET

TEXT ·asmFunc2(SB), NOSPLIT, $0-0
    MOVQ (TLS), AX
    CALL ·Func1(SB)
	RET
