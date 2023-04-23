
test:     file format elf64-x86-64


Disassembly of section .init:

0000000000002000 <_init>:
    2000:	f3 0f 1e fa          	endbr64 
    2004:	48 83 ec 08          	sub    $0x8,%rsp
    2008:	48 8b 05 c9 5f 00 00 	mov    0x5fc9(%rip),%rax        # 7fd8 <__gmon_start__>
    200f:	48 85 c0             	test   %rax,%rax
    2012:	74 02                	je     2016 <_init+0x16>
    2014:	ff d0                	callq  *%rax
    2016:	48 83 c4 08          	add    $0x8,%rsp
    201a:	c3                   	retq   

Disassembly of section .plt:

0000000000002020 <.plt>:
    2020:	ff 35 da 5e 00 00    	pushq  0x5eda(%rip)        # 7f00 <_GLOBAL_OFFSET_TABLE_+0x8>
    2026:	f2 ff 25 db 5e 00 00 	bnd jmpq *0x5edb(%rip)        # 7f08 <_GLOBAL_OFFSET_TABLE_+0x10>
    202d:	0f 1f 00             	nopl   (%rax)
    2030:	f3 0f 1e fa          	endbr64 
    2034:	68 00 00 00 00       	pushq  $0x0
    2039:	f2 e9 e1 ff ff ff    	bnd jmpq 2020 <.plt>
    203f:	90                   	nop
    2040:	f3 0f 1e fa          	endbr64 
    2044:	68 01 00 00 00       	pushq  $0x1
    2049:	f2 e9 d1 ff ff ff    	bnd jmpq 2020 <.plt>
    204f:	90                   	nop
    2050:	f3 0f 1e fa          	endbr64 
    2054:	68 02 00 00 00       	pushq  $0x2
    2059:	f2 e9 c1 ff ff ff    	bnd jmpq 2020 <.plt>
    205f:	90                   	nop
    2060:	f3 0f 1e fa          	endbr64 
    2064:	68 03 00 00 00       	pushq  $0x3
    2069:	f2 e9 b1 ff ff ff    	bnd jmpq 2020 <.plt>
    206f:	90                   	nop
    2070:	f3 0f 1e fa          	endbr64 
    2074:	68 04 00 00 00       	pushq  $0x4
    2079:	f2 e9 a1 ff ff ff    	bnd jmpq 2020 <.plt>
    207f:	90                   	nop
    2080:	f3 0f 1e fa          	endbr64 
    2084:	68 05 00 00 00       	pushq  $0x5
    2089:	f2 e9 91 ff ff ff    	bnd jmpq 2020 <.plt>
    208f:	90                   	nop
    2090:	f3 0f 1e fa          	endbr64 
    2094:	68 06 00 00 00       	pushq  $0x6
    2099:	f2 e9 81 ff ff ff    	bnd jmpq 2020 <.plt>
    209f:	90                   	nop
    20a0:	f3 0f 1e fa          	endbr64 
    20a4:	68 07 00 00 00       	pushq  $0x7
    20a9:	f2 e9 71 ff ff ff    	bnd jmpq 2020 <.plt>
    20af:	90                   	nop
    20b0:	f3 0f 1e fa          	endbr64 
    20b4:	68 08 00 00 00       	pushq  $0x8
    20b9:	f2 e9 61 ff ff ff    	bnd jmpq 2020 <.plt>
    20bf:	90                   	nop
    20c0:	f3 0f 1e fa          	endbr64 
    20c4:	68 09 00 00 00       	pushq  $0x9
    20c9:	f2 e9 51 ff ff ff    	bnd jmpq 2020 <.plt>
    20cf:	90                   	nop
    20d0:	f3 0f 1e fa          	endbr64 
    20d4:	68 0a 00 00 00       	pushq  $0xa
    20d9:	f2 e9 41 ff ff ff    	bnd jmpq 2020 <.plt>
    20df:	90                   	nop
    20e0:	f3 0f 1e fa          	endbr64 
    20e4:	68 0b 00 00 00       	pushq  $0xb
    20e9:	f2 e9 31 ff ff ff    	bnd jmpq 2020 <.plt>
    20ef:	90                   	nop
    20f0:	f3 0f 1e fa          	endbr64 
    20f4:	68 0c 00 00 00       	pushq  $0xc
    20f9:	f2 e9 21 ff ff ff    	bnd jmpq 2020 <.plt>
    20ff:	90                   	nop
    2100:	f3 0f 1e fa          	endbr64 
    2104:	68 0d 00 00 00       	pushq  $0xd
    2109:	f2 e9 11 ff ff ff    	bnd jmpq 2020 <.plt>
    210f:	90                   	nop
    2110:	f3 0f 1e fa          	endbr64 
    2114:	68 0e 00 00 00       	pushq  $0xe
    2119:	f2 e9 01 ff ff ff    	bnd jmpq 2020 <.plt>
    211f:	90                   	nop
    2120:	f3 0f 1e fa          	endbr64 
    2124:	68 0f 00 00 00       	pushq  $0xf
    2129:	f2 e9 f1 fe ff ff    	bnd jmpq 2020 <.plt>
    212f:	90                   	nop
    2130:	f3 0f 1e fa          	endbr64 
    2134:	68 10 00 00 00       	pushq  $0x10
    2139:	f2 e9 e1 fe ff ff    	bnd jmpq 2020 <.plt>
    213f:	90                   	nop
    2140:	f3 0f 1e fa          	endbr64 
    2144:	68 11 00 00 00       	pushq  $0x11
    2149:	f2 e9 d1 fe ff ff    	bnd jmpq 2020 <.plt>
    214f:	90                   	nop
    2150:	f3 0f 1e fa          	endbr64 
    2154:	68 12 00 00 00       	pushq  $0x12
    2159:	f2 e9 c1 fe ff ff    	bnd jmpq 2020 <.plt>
    215f:	90                   	nop
    2160:	f3 0f 1e fa          	endbr64 
    2164:	68 13 00 00 00       	pushq  $0x13
    2169:	f2 e9 b1 fe ff ff    	bnd jmpq 2020 <.plt>
    216f:	90                   	nop

Disassembly of section .plt.got:

0000000000002170 <__cxa_finalize@plt>:
    2170:	f3 0f 1e fa          	endbr64 
    2174:	f2 ff 25 35 5e 00 00 	bnd jmpq *0x5e35(%rip)        # 7fb0 <__cxa_finalize@GLIBC_2.2.5>
    217b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000002180 <operator new[](unsigned long)@plt>:
    2180:	f3 0f 1e fa          	endbr64 
    2184:	f2 ff 25 85 5d 00 00 	bnd jmpq *0x5d85(%rip)        # 7f10 <operator new[](unsigned long)@GLIBCXX_3.4>
    218b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002190 <__errno_location@plt>:
    2190:	f3 0f 1e fa          	endbr64 
    2194:	f2 ff 25 7d 5d 00 00 	bnd jmpq *0x5d7d(%rip)        # 7f18 <__errno_location@GLIBC_2.2.5>
    219b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000021a0 <std::terminate()@plt>:
    21a0:	f3 0f 1e fa          	endbr64 
    21a4:	f2 ff 25 75 5d 00 00 	bnd jmpq *0x5d75(%rip)        # 7f20 <std::terminate()@GLIBCXX_3.4>
    21ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000021b0 <nanosleep@plt>:
    21b0:	f3 0f 1e fa          	endbr64 
    21b4:	f2 ff 25 6d 5d 00 00 	bnd jmpq *0x5d6d(%rip)        # 7f28 <nanosleep@GLIBC_2.2.5>
    21bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000021c0 <std::thread::_State::~_State()@plt>:
    21c0:	f3 0f 1e fa          	endbr64 
    21c4:	f2 ff 25 65 5d 00 00 	bnd jmpq *0x5d65(%rip)        # 7f30 <std::thread::_State::~_State()@GLIBCXX_3.4.22>
    21cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000021d0 <__cxa_atexit@plt>:
    21d0:	f3 0f 1e fa          	endbr64 
    21d4:	f2 ff 25 5d 5d 00 00 	bnd jmpq *0x5d5d(%rip)        # 7f38 <__cxa_atexit@GLIBC_2.2.5>
    21db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000021e0 <std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())@plt>:
    21e0:	f3 0f 1e fa          	endbr64 
    21e4:	f2 ff 25 55 5d 00 00 	bnd jmpq *0x5d55(%rip)        # 7f40 <std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())@GLIBCXX_3.4.22>
    21eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000021f0 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>:
    21f0:	f3 0f 1e fa          	endbr64 
    21f4:	f2 ff 25 4d 5d 00 00 	bnd jmpq *0x5d4d(%rip)        # 7f48 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@GLIBCXX_3.4>
    21fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002200 <operator new(unsigned long)@plt>:
    2200:	f3 0f 1e fa          	endbr64 
    2204:	f2 ff 25 45 5d 00 00 	bnd jmpq *0x5d45(%rip)        # 7f50 <operator new(unsigned long)@GLIBCXX_3.4>
    220b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002210 <operator delete(void*, unsigned long)@plt>:
    2210:	f3 0f 1e fa          	endbr64 
    2214:	f2 ff 25 3d 5d 00 00 	bnd jmpq *0x5d3d(%rip)        # 7f58 <operator delete(void*, unsigned long)@CXXABI_1.3.9>
    221b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002220 <std::ostream::operator<<(std::ostream& (*)(std::ostream&))@plt>:
    2220:	f3 0f 1e fa          	endbr64 
    2224:	f2 ff 25 35 5d 00 00 	bnd jmpq *0x5d35(%rip)        # 7f60 <std::ostream::operator<<(std::ostream& (*)(std::ostream&))@GLIBCXX_3.4>
    222b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002230 <__stack_chk_fail@plt>:
    2230:	f3 0f 1e fa          	endbr64 
    2234:	f2 ff 25 2d 5d 00 00 	bnd jmpq *0x5d2d(%rip)        # 7f68 <__stack_chk_fail@GLIBC_2.4>
    223b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002240 <std::chrono::_V2::steady_clock::now()@plt>:
    2240:	f3 0f 1e fa          	endbr64 
    2244:	f2 ff 25 25 5d 00 00 	bnd jmpq *0x5d25(%rip)        # 7f70 <std::chrono::_V2::steady_clock::now()@GLIBCXX_3.4.19>
    224b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002250 <std::ios_base::Init::Init()@plt>:
    2250:	f3 0f 1e fa          	endbr64 
    2254:	f2 ff 25 1d 5d 00 00 	bnd jmpq *0x5d1d(%rip)        # 7f78 <std::ios_base::Init::Init()@GLIBCXX_3.4>
    225b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002260 <gettimeofday@plt>:
    2260:	f3 0f 1e fa          	endbr64 
    2264:	f2 ff 25 15 5d 00 00 	bnd jmpq *0x5d15(%rip)        # 7f80 <gettimeofday@GLIBC_2.2.5>
    226b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002270 <std::thread::join()@plt>:
    2270:	f3 0f 1e fa          	endbr64 
    2274:	f2 ff 25 0d 5d 00 00 	bnd jmpq *0x5d0d(%rip)        # 7f88 <std::thread::join()@GLIBCXX_3.4.11>
    227b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002280 <std::ostream::operator<<(int)@plt>:
    2280:	f3 0f 1e fa          	endbr64 
    2284:	f2 ff 25 05 5d 00 00 	bnd jmpq *0x5d05(%rip)        # 7f90 <std::ostream::operator<<(int)@GLIBCXX_3.4>
    228b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002290 <std::thread::detach()@plt>:
    2290:	f3 0f 1e fa          	endbr64 
    2294:	f2 ff 25 fd 5c 00 00 	bnd jmpq *0x5cfd(%rip)        # 7f98 <std::thread::detach()@GLIBCXX_3.4.11>
    229b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022a0 <_Unwind_Resume@plt>:
    22a0:	f3 0f 1e fa          	endbr64 
    22a4:	f2 ff 25 f5 5c 00 00 	bnd jmpq *0x5cf5(%rip)        # 7fa0 <_Unwind_Resume@GCC_3.0>
    22ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022b0 <std::ostream::operator<<(long)@plt>:
    22b0:	f3 0f 1e fa          	endbr64 
    22b4:	f2 ff 25 ed 5c 00 00 	bnd jmpq *0x5ced(%rip)        # 7fa8 <std::ostream::operator<<(long)@GLIBCXX_3.4>
    22bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000022c0 <_start>:
    22c0:	f3 0f 1e fa          	endbr64 
    22c4:	31 ed                	xor    %ebp,%ebp
    22c6:	49 89 d1             	mov    %rdx,%r9
    22c9:	5e                   	pop    %rsi
    22ca:	48 89 e2             	mov    %rsp,%rdx
    22cd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    22d1:	50                   	push   %rax
    22d2:	54                   	push   %rsp
    22d3:	4c 8d 05 46 24 00 00 	lea    0x2446(%rip),%r8        # 4720 <__libc_csu_fini>
    22da:	48 8d 0d cf 23 00 00 	lea    0x23cf(%rip),%rcx        # 46b0 <__libc_csu_init>
    22e1:	48 8d 3d 56 03 00 00 	lea    0x356(%rip),%rdi        # 263e <main>
    22e8:	ff 15 e2 5c 00 00    	callq  *0x5ce2(%rip)        # 7fd0 <__libc_start_main@GLIBC_2.2.5>
    22ee:	f4                   	hlt    
    22ef:	90                   	nop

00000000000022f0 <deregister_tm_clones>:
    22f0:	48 8d 3d 21 5d 00 00 	lea    0x5d21(%rip),%rdi        # 8018 <__TMC_END__>
    22f7:	48 8d 05 1a 5d 00 00 	lea    0x5d1a(%rip),%rax        # 8018 <__TMC_END__>
    22fe:	48 39 f8             	cmp    %rdi,%rax
    2301:	74 15                	je     2318 <deregister_tm_clones+0x28>
    2303:	48 8b 05 be 5c 00 00 	mov    0x5cbe(%rip),%rax        # 7fc8 <_ITM_deregisterTMCloneTable>
    230a:	48 85 c0             	test   %rax,%rax
    230d:	74 09                	je     2318 <deregister_tm_clones+0x28>
    230f:	ff e0                	jmpq   *%rax
    2311:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2318:	c3                   	retq   
    2319:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002320 <register_tm_clones>:
    2320:	48 8d 3d f1 5c 00 00 	lea    0x5cf1(%rip),%rdi        # 8018 <__TMC_END__>
    2327:	48 8d 35 ea 5c 00 00 	lea    0x5cea(%rip),%rsi        # 8018 <__TMC_END__>
    232e:	48 29 fe             	sub    %rdi,%rsi
    2331:	48 89 f0             	mov    %rsi,%rax
    2334:	48 c1 ee 3f          	shr    $0x3f,%rsi
    2338:	48 c1 f8 03          	sar    $0x3,%rax
    233c:	48 01 c6             	add    %rax,%rsi
    233f:	48 d1 fe             	sar    %rsi
    2342:	74 14                	je     2358 <register_tm_clones+0x38>
    2344:	48 8b 05 95 5c 00 00 	mov    0x5c95(%rip),%rax        # 7fe0 <_ITM_registerTMCloneTable>
    234b:	48 85 c0             	test   %rax,%rax
    234e:	74 08                	je     2358 <register_tm_clones+0x38>
    2350:	ff e0                	jmpq   *%rax
    2352:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2358:	c3                   	retq   
    2359:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002360 <__do_global_dtors_aux>:
    2360:	f3 0f 1e fa          	endbr64 
    2364:	80 3d e5 5d 00 00 00 	cmpb   $0x0,0x5de5(%rip)        # 8150 <completed.8060>
    236b:	75 2b                	jne    2398 <__do_global_dtors_aux+0x38>
    236d:	55                   	push   %rbp
    236e:	48 83 3d 3a 5c 00 00 	cmpq   $0x0,0x5c3a(%rip)        # 7fb0 <__cxa_finalize@GLIBC_2.2.5>
    2375:	00 
    2376:	48 89 e5             	mov    %rsp,%rbp
    2379:	74 0c                	je     2387 <__do_global_dtors_aux+0x27>
    237b:	48 8b 3d 86 5c 00 00 	mov    0x5c86(%rip),%rdi        # 8008 <__dso_handle>
    2382:	e8 e9 fd ff ff       	callq  2170 <__cxa_finalize@plt>
    2387:	e8 64 ff ff ff       	callq  22f0 <deregister_tm_clones>
    238c:	c6 05 bd 5d 00 00 01 	movb   $0x1,0x5dbd(%rip)        # 8150 <completed.8060>
    2393:	5d                   	pop    %rbp
    2394:	c3                   	retq   
    2395:	0f 1f 00             	nopl   (%rax)
    2398:	c3                   	retq   
    2399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000023a0 <frame_dummy>:
    23a0:	f3 0f 1e fa          	endbr64 
    23a4:	e9 77 ff ff ff       	jmpq   2320 <register_tm_clones>

00000000000023a9 <writeGr(int)>:
int32_t *arrI;
int32_t *arrJ;
int32_t *arrK;
bool *flags;

void writeGr(int index) {
    23a9:	f3 0f 1e fa          	endbr64 
    23ad:	55                   	push   %rbp
    23ae:	48 89 e5             	mov    %rsp,%rbp
    23b1:	53                   	push   %rbx
    23b2:	48 83 ec 28          	sub    $0x28,%rsp
    23b6:	89 7d dc             	mov    %edi,-0x24(%rbp)
	for (int i = 0; i < N; i++) {
    23b9:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    23c0:	81 7d ec ff e0 f5 05 	cmpl   $0x5f5e0ff,-0x14(%rbp)
    23c7:	7f 6c                	jg     2435 <writeGr(int)+0x8c>
		arrI[2 * i] = 1;
    23c9:	48 8b 05 88 5d 00 00 	mov    0x5d88(%rip),%rax        # 8158 <arrI>
    23d0:	8b 55 ec             	mov    -0x14(%rbp),%edx
    23d3:	01 d2                	add    %edx,%edx
    23d5:	48 63 d2             	movslq %edx,%rdx
    23d8:	48 c1 e2 02          	shl    $0x2,%rdx
    23dc:	48 01 d0             	add    %rdx,%rax
    23df:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
		arrJ[2 * i] = 2;
    23e5:	48 8b 05 74 5d 00 00 	mov    0x5d74(%rip),%rax        # 8160 <arrJ>
    23ec:	8b 55 ec             	mov    -0x14(%rbp),%edx
    23ef:	01 d2                	add    %edx,%edx
    23f1:	48 63 d2             	movslq %edx,%rdx
    23f4:	48 c1 e2 02          	shl    $0x2,%rdx
    23f8:	48 01 d0             	add    %rdx,%rax
    23fb:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
		arrK[2 * i] = 3;
    2401:	48 8b 05 60 5d 00 00 	mov    0x5d60(%rip),%rax        # 8168 <arrK>
    2408:	8b 55 ec             	mov    -0x14(%rbp),%edx
    240b:	01 d2                	add    %edx,%edx
    240d:	48 63 d2             	movslq %edx,%rdx
    2410:	48 c1 e2 02          	shl    $0x2,%rdx
    2414:	48 01 d0             	add    %rdx,%rax
    2417:	c7 00 03 00 00 00    	movl   $0x3,(%rax)
		flags[i] = true;
    241d:	48 8b 15 4c 5d 00 00 	mov    0x5d4c(%rip),%rdx        # 8170 <flags>
    2424:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2427:	48 98                	cltq   
    2429:	48 01 d0             	add    %rdx,%rax
    242c:	c6 00 01             	movb   $0x1,(%rax)
	for (int i = 0; i < N; i++) {
    242f:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    2433:	eb 8b                	jmp    23c0 <writeGr(int)+0x17>
	}
	std::cout << index << " done, now=" << Timer::NowMicroSec() << std::endl;
    2435:	8b 45 dc             	mov    -0x24(%rbp),%eax
    2438:	89 c6                	mov    %eax,%esi
    243a:	48 8d 3d ff 5b 00 00 	lea    0x5bff(%rip),%rdi        # 8040 <std::cout@@GLIBCXX_3.4>
    2441:	e8 3a fe ff ff       	callq  2280 <std::ostream::operator<<(int)@plt>
    2446:	48 8d 35 cb 2b 00 00 	lea    0x2bcb(%rip),%rsi        # 5018 <N+0x4>
    244d:	48 89 c7             	mov    %rax,%rdi
    2450:	e8 9b fd ff ff       	callq  21f0 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>
    2455:	48 89 c3             	mov    %rax,%rbx
    2458:	e8 6e 06 00 00       	callq  2acb <Timer::NowMicroSec()>
    245d:	48 89 c6             	mov    %rax,%rsi
    2460:	48 89 df             	mov    %rbx,%rdi
    2463:	e8 48 fe ff ff       	callq  22b0 <std::ostream::operator<<(long)@plt>
    2468:	48 89 c2             	mov    %rax,%rdx
    246b:	48 8b 05 46 5b 00 00 	mov    0x5b46(%rip),%rax        # 7fb8 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GLIBCXX_3.4>
    2472:	48 89 c6             	mov    %rax,%rsi
    2475:	48 89 d7             	mov    %rdx,%rdi
    2478:	e8 a3 fd ff ff       	callq  2220 <std::ostream::operator<<(std::ostream& (*)(std::ostream&))@plt>
}
    247d:	90                   	nop
    247e:	48 83 c4 28          	add    $0x28,%rsp
    2482:	5b                   	pop    %rbx
    2483:	5d                   	pop    %rbp
    2484:	c3                   	retq   

0000000000002485 <troubleGr(int)>:

void troubleGr(int offset) {
    2485:	f3 0f 1e fa          	endbr64 
    2489:	55                   	push   %rbp
    248a:	48 89 e5             	mov    %rsp,%rbp
    248d:	89 7d ec             	mov    %edi,-0x14(%rbp)
	while (true) {
		for (int i = 0; i < N; i++) {
    2490:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    2497:	81 7d f8 ff e0 f5 05 	cmpl   $0x5f5e0ff,-0x8(%rbp)
    249e:	7f f0                	jg     2490 <troubleGr(int)+0xb>
			int p = offset + i;
    24a0:	8b 55 ec             	mov    -0x14(%rbp),%edx
    24a3:	8b 45 f8             	mov    -0x8(%rbp),%eax
    24a6:	01 d0                	add    %edx,%eax
    24a8:	89 45 fc             	mov    %eax,-0x4(%rbp)
			if (p >= N) {
    24ab:	81 7d fc ff e0 f5 05 	cmpl   $0x5f5e0ff,-0x4(%rbp)
    24b2:	7e 07                	jle    24bb <troubleGr(int)+0x36>
				p -= N;
    24b4:	81 6d fc 00 e1 f5 05 	subl   $0x5f5e100,-0x4(%rbp)
			}
			arrI[2 * p + 1] = i;
    24bb:	48 8b 05 96 5c 00 00 	mov    0x5c96(%rip),%rax        # 8158 <arrI>
    24c2:	8b 55 fc             	mov    -0x4(%rbp),%edx
    24c5:	01 d2                	add    %edx,%edx
    24c7:	48 63 d2             	movslq %edx,%rdx
    24ca:	48 83 c2 01          	add    $0x1,%rdx
    24ce:	48 c1 e2 02          	shl    $0x2,%rdx
    24d2:	48 01 c2             	add    %rax,%rdx
    24d5:	8b 45 f8             	mov    -0x8(%rbp),%eax
    24d8:	89 02                	mov    %eax,(%rdx)
			arrJ[2 * p + 1] = i;
    24da:	48 8b 05 7f 5c 00 00 	mov    0x5c7f(%rip),%rax        # 8160 <arrJ>
    24e1:	8b 55 fc             	mov    -0x4(%rbp),%edx
    24e4:	01 d2                	add    %edx,%edx
    24e6:	48 63 d2             	movslq %edx,%rdx
    24e9:	48 83 c2 01          	add    $0x1,%rdx
    24ed:	48 c1 e2 02          	shl    $0x2,%rdx
    24f1:	48 01 c2             	add    %rax,%rdx
    24f4:	8b 45 f8             	mov    -0x8(%rbp),%eax
    24f7:	89 02                	mov    %eax,(%rdx)
			arrK[2 * p + 1] = i;
    24f9:	48 8b 05 68 5c 00 00 	mov    0x5c68(%rip),%rax        # 8168 <arrK>
    2500:	8b 55 fc             	mov    -0x4(%rbp),%edx
    2503:	01 d2                	add    %edx,%edx
    2505:	48 63 d2             	movslq %edx,%rdx
    2508:	48 83 c2 01          	add    $0x1,%rdx
    250c:	48 c1 e2 02          	shl    $0x2,%rdx
    2510:	48 01 c2             	add    %rax,%rdx
    2513:	8b 45 f8             	mov    -0x8(%rbp),%eax
    2516:	89 02                	mov    %eax,(%rdx)
		for (int i = 0; i < N; i++) {
    2518:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    251c:	e9 76 ff ff ff       	jmpq   2497 <troubleGr(int)+0x12>

0000000000002521 <readGr(int, int)>:
		}
	}
}

void readGr(int index, int offset) {
    2521:	f3 0f 1e fa          	endbr64 
    2525:	55                   	push   %rbp
    2526:	48 89 e5             	mov    %rsp,%rbp
    2529:	53                   	push   %rbx
    252a:	48 83 ec 28          	sub    $0x28,%rsp
    252e:	89 7d dc             	mov    %edi,-0x24(%rbp)
    2531:	89 75 d8             	mov    %esi,-0x28(%rbp)
	for (int i = offset; i < N; i++) {
    2534:	8b 45 d8             	mov    -0x28(%rbp),%eax
    2537:	89 45 ec             	mov    %eax,-0x14(%rbp)
    253a:	81 7d ec ff e0 f5 05 	cmpl   $0x5f5e0ff,-0x14(%rbp)
    2541:	0f 8f a7 00 00 00    	jg     25ee <readGr(int, int)+0xcd>
		while (true) {
			if (flags[i]) {
    2547:	48 8b 15 22 5c 00 00 	mov    0x5c22(%rip),%rdx        # 8170 <flags>
    254e:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2551:	48 98                	cltq   
    2553:	48 01 d0             	add    %rdx,%rax
    2556:	0f b6 00             	movzbl (%rax),%eax
    2559:	84 c0                	test   %al,%al
    255b:	74 ea                	je     2547 <readGr(int, int)+0x26>
				if (arrI[2 * i] + arrJ[2 * i] + arrK[2 * i] != 6) {
    255d:	48 8b 05 f4 5b 00 00 	mov    0x5bf4(%rip),%rax        # 8158 <arrI>
    2564:	8b 55 ec             	mov    -0x14(%rbp),%edx
    2567:	01 d2                	add    %edx,%edx
    2569:	48 63 d2             	movslq %edx,%rdx
    256c:	48 c1 e2 02          	shl    $0x2,%rdx
    2570:	48 01 d0             	add    %rdx,%rax
    2573:	8b 10                	mov    (%rax),%edx
    2575:	48 8b 05 e4 5b 00 00 	mov    0x5be4(%rip),%rax        # 8160 <arrJ>
    257c:	8b 4d ec             	mov    -0x14(%rbp),%ecx
    257f:	01 c9                	add    %ecx,%ecx
    2581:	48 63 c9             	movslq %ecx,%rcx
    2584:	48 c1 e1 02          	shl    $0x2,%rcx
    2588:	48 01 c8             	add    %rcx,%rax
    258b:	8b 00                	mov    (%rax),%eax
    258d:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
    2590:	48 8b 05 d1 5b 00 00 	mov    0x5bd1(%rip),%rax        # 8168 <arrK>
    2597:	8b 55 ec             	mov    -0x14(%rbp),%edx
    259a:	01 d2                	add    %edx,%edx
    259c:	48 63 d2             	movslq %edx,%rdx
    259f:	48 c1 e2 02          	shl    $0x2,%rdx
    25a3:	48 01 d0             	add    %rdx,%rax
    25a6:	8b 00                	mov    (%rax),%eax
    25a8:	01 c8                	add    %ecx,%eax
    25aa:	83 f8 06             	cmp    $0x6,%eax
    25ad:	74 35                	je     25e4 <readGr(int, int)+0xc3>
					std::cout << index << " error" << std::endl;
    25af:	8b 45 dc             	mov    -0x24(%rbp),%eax
    25b2:	89 c6                	mov    %eax,%esi
    25b4:	48 8d 3d 85 5a 00 00 	lea    0x5a85(%rip),%rdi        # 8040 <std::cout@@GLIBCXX_3.4>
    25bb:	e8 c0 fc ff ff       	callq  2280 <std::ostream::operator<<(int)@plt>
    25c0:	48 8d 35 5d 2a 00 00 	lea    0x2a5d(%rip),%rsi        # 5024 <N+0x10>
    25c7:	48 89 c7             	mov    %rax,%rdi
    25ca:	e8 21 fc ff ff       	callq  21f0 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>
    25cf:	48 89 c2             	mov    %rax,%rdx
    25d2:	48 8b 05 df 59 00 00 	mov    0x59df(%rip),%rax        # 7fb8 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GLIBCXX_3.4>
    25d9:	48 89 c6             	mov    %rax,%rsi
    25dc:	48 89 d7             	mov    %rdx,%rdi
    25df:	e8 3c fc ff ff       	callq  2220 <std::ostream::operator<<(std::ostream& (*)(std::ostream&))@plt>
				}
				break;
    25e4:	90                   	nop
	for (int i = offset; i < N; i++) {
    25e5:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    25e9:	e9 4c ff ff ff       	jmpq   253a <readGr(int, int)+0x19>
			}
		}
	}
	std::cout << index << " done, now=" << Timer::NowMicroSec() << std::endl;
    25ee:	8b 45 dc             	mov    -0x24(%rbp),%eax
    25f1:	89 c6                	mov    %eax,%esi
    25f3:	48 8d 3d 46 5a 00 00 	lea    0x5a46(%rip),%rdi        # 8040 <std::cout@@GLIBCXX_3.4>
    25fa:	e8 81 fc ff ff       	callq  2280 <std::ostream::operator<<(int)@plt>
    25ff:	48 8d 35 12 2a 00 00 	lea    0x2a12(%rip),%rsi        # 5018 <N+0x4>
    2606:	48 89 c7             	mov    %rax,%rdi
    2609:	e8 e2 fb ff ff       	callq  21f0 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>
    260e:	48 89 c3             	mov    %rax,%rbx
    2611:	e8 b5 04 00 00       	callq  2acb <Timer::NowMicroSec()>
    2616:	48 89 c6             	mov    %rax,%rsi
    2619:	48 89 df             	mov    %rbx,%rdi
    261c:	e8 8f fc ff ff       	callq  22b0 <std::ostream::operator<<(long)@plt>
    2621:	48 89 c2             	mov    %rax,%rdx
    2624:	48 8b 05 8d 59 00 00 	mov    0x598d(%rip),%rax        # 7fb8 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GLIBCXX_3.4>
    262b:	48 89 c6             	mov    %rax,%rsi
    262e:	48 89 d7             	mov    %rdx,%rdi
    2631:	e8 ea fb ff ff       	callq  2220 <std::ostream::operator<<(std::ostream& (*)(std::ostream&))@plt>
}
    2636:	90                   	nop
    2637:	48 83 c4 28          	add    $0x28,%rsp
    263b:	5b                   	pop    %rbx
    263c:	5d                   	pop    %rbp
    263d:	c3                   	retq   

000000000000263e <main>:

int main() {
    263e:	f3 0f 1e fa          	endbr64 
    2642:	55                   	push   %rbp
    2643:	48 89 e5             	mov    %rsp,%rbp
    2646:	53                   	push   %rbx
    2647:	48 83 ec 68          	sub    $0x68,%rsp
    264b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2652:	00 00 
    2654:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2658:	31 c0                	xor    %eax,%eax
	arrI = new int32_t[2 * N];
    265a:	bf 00 08 af 2f       	mov    $0x2faf0800,%edi
    265f:	e8 1c fb ff ff       	callq  2180 <operator new[](unsigned long)@plt>
    2664:	48 89 05 ed 5a 00 00 	mov    %rax,0x5aed(%rip)        # 8158 <arrI>
	arrJ = new int32_t[2 * N];
    266b:	bf 00 08 af 2f       	mov    $0x2faf0800,%edi
    2670:	e8 0b fb ff ff       	callq  2180 <operator new[](unsigned long)@plt>
    2675:	48 89 05 e4 5a 00 00 	mov    %rax,0x5ae4(%rip)        # 8160 <arrJ>
	arrK = new int32_t[2 * N];
    267c:	bf 00 08 af 2f       	mov    $0x2faf0800,%edi
    2681:	e8 fa fa ff ff       	callq  2180 <operator new[](unsigned long)@plt>
    2686:	48 89 05 db 5a 00 00 	mov    %rax,0x5adb(%rip)        # 8168 <arrK>
	flags = new bool[N];
    268d:	bf 00 e1 f5 05       	mov    $0x5f5e100,%edi
    2692:	e8 e9 fa ff ff       	callq  2180 <operator new[](unsigned long)@plt>
    2697:	48 89 05 d2 5a 00 00 	mov    %rax,0x5ad2(%rip)        # 8170 <flags>

	auto bt = std::chrono::steady_clock::now();
    269e:	e8 9d fb ff ff       	callq  2240 <std::chrono::_V2::steady_clock::now()@plt>
    26a3:	48 89 45 98          	mov    %rax,-0x68(%rbp)

	std::thread write_thread(writeGr, 1);
    26a7:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%rbp)
    26ae:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    26b2:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    26b6:	48 8d 35 ec fc ff ff 	lea    -0x314(%rip),%rsi        # 23a9 <writeGr(int)>
    26bd:	48 89 c7             	mov    %rax,%rdi
    26c0:	e8 93 04 00 00       	callq  2b58 <std::thread::thread<void (&)(int), int, void>(void (&)(int), int&&)>

	std::thread trouble_thread1(troubleGr, 0 * (N / 4));
    26c5:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
    26cc:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    26d0:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
    26d4:	48 8d 35 aa fd ff ff 	lea    -0x256(%rip),%rsi        # 2485 <troubleGr(int)>
    26db:	48 89 c7             	mov    %rax,%rdi
    26de:	e8 75 04 00 00       	callq  2b58 <std::thread::thread<void (&)(int), int, void>(void (&)(int), int&&)>
	std::thread trouble_thread2(troubleGr, 2 * (N / 4));
    26e3:	c7 45 e0 80 f0 fa 02 	movl   $0x2faf080,-0x20(%rbp)
    26ea:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    26ee:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    26f2:	48 8d 35 8c fd ff ff 	lea    -0x274(%rip),%rsi        # 2485 <troubleGr(int)>
    26f9:	48 89 c7             	mov    %rax,%rdi
    26fc:	e8 57 04 00 00       	callq  2b58 <std::thread::thread<void (&)(int), int, void>(void (&)(int), int&&)>

	std::thread read_thread1(readGr, 2, 1 * 1000 * 1000);
    2701:	c7 45 e0 40 42 0f 00 	movl   $0xf4240,-0x20(%rbp)
    2708:	c7 45 d8 02 00 00 00 	movl   $0x2,-0x28(%rbp)
    270f:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
    2713:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
    2717:	48 8d 45 b8          	lea    -0x48(%rbp),%rax
    271b:	48 8d 35 ff fd ff ff 	lea    -0x201(%rip),%rsi        # 2521 <readGr(int, int)>
    2722:	48 89 c7             	mov    %rax,%rdi
    2725:	e8 10 05 00 00       	callq  2c3a <std::thread::thread<void (&)(int, int), int, int, void>(void (&)(int, int), int&&, int&&)>
	std::thread read_thread2(readGr, 3, 2 * 1000 * 1000);
    272a:	c7 45 e0 80 84 1e 00 	movl   $0x1e8480,-0x20(%rbp)
    2731:	c7 45 d8 03 00 00 00 	movl   $0x3,-0x28(%rbp)
    2738:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
    273c:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
    2740:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2744:	48 8d 35 d6 fd ff ff 	lea    -0x22a(%rip),%rsi        # 2521 <readGr(int, int)>
    274b:	48 89 c7             	mov    %rax,%rdi
    274e:	e8 e7 04 00 00       	callq  2c3a <std::thread::thread<void (&)(int, int), int, int, void>(void (&)(int, int), int&&, int&&)>
	std::thread read_thread3(readGr, 4, 3 * 1000 * 1000);
    2753:	c7 45 e0 c0 c6 2d 00 	movl   $0x2dc6c0,-0x20(%rbp)
    275a:	c7 45 d8 04 00 00 00 	movl   $0x4,-0x28(%rbp)
    2761:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
    2765:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
    2769:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    276d:	48 8d 35 ad fd ff ff 	lea    -0x253(%rip),%rsi        # 2521 <readGr(int, int)>
    2774:	48 89 c7             	mov    %rax,%rdi
    2777:	e8 be 04 00 00       	callq  2c3a <std::thread::thread<void (&)(int, int), int, int, void>(void (&)(int, int), int&&, int&&)>

	write_thread.join();
    277c:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    2780:	48 89 c7             	mov    %rax,%rdi
    2783:	e8 e8 fa ff ff       	callq  2270 <std::thread::join()@plt>
	trouble_thread1.detach();
    2788:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
    278c:	48 89 c7             	mov    %rax,%rdi
    278f:	e8 fc fa ff ff       	callq  2290 <std::thread::detach()@plt>
	trouble_thread2.detach();
    2794:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    2798:	48 89 c7             	mov    %rax,%rdi
    279b:	e8 f0 fa ff ff       	callq  2290 <std::thread::detach()@plt>
	read_thread1.join();
    27a0:	48 8d 45 b8          	lea    -0x48(%rbp),%rax
    27a4:	48 89 c7             	mov    %rax,%rdi
    27a7:	e8 c4 fa ff ff       	callq  2270 <std::thread::join()@plt>
	read_thread2.join();
    27ac:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    27b0:	48 89 c7             	mov    %rax,%rdi
    27b3:	e8 b8 fa ff ff       	callq  2270 <std::thread::join()@plt>
	read_thread3.join();
    27b8:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    27bc:	48 89 c7             	mov    %rax,%rdi
    27bf:	e8 ac fa ff ff       	callq  2270 <std::thread::join()@plt>

	auto d = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::steady_clock::now() - bt);
    27c4:	e8 77 fa ff ff       	callq  2240 <std::chrono::_V2::steady_clock::now()@plt>
    27c9:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    27cd:	48 8d 55 98          	lea    -0x68(%rbp),%rdx
    27d1:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    27d5:	48 89 d6             	mov    %rdx,%rsi
    27d8:	48 89 c7             	mov    %rax,%rdi
    27db:	e8 52 05 00 00       	callq  2d32 <std::common_type<std::chrono::duration<long, std::ratio<1l, 1000000000l> >, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::type std::chrono::operator-<std::chrono::_V2::steady_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> >, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >(std::chrono::time_point<std::chrono::_V2::steady_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> > > const&, std::chrono::time_point<std::chrono::_V2::steady_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> > > const&)>
    27e0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    27e4:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    27e8:	48 89 c7             	mov    %rax,%rdi
    27eb:	e8 ae 05 00 00       	callq  2d9e <std::enable_if<std::chrono::__is_duration<std::chrono::duration<long, std::ratio<1l, 1000l> > >::value, std::chrono::duration<long, std::ratio<1l, 1000l> > >::type std::chrono::duration_cast<std::chrono::duration<long, std::ratio<1l, 1000l> >, long, std::ratio<1l, 1000000000l> >(std::chrono::duration<long, std::ratio<1l, 1000000000l> > const&)>
    27f0:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
	std::cout << "Time elapsed: " << d.count() << " ms" << std::endl;
    27f4:	48 8d 35 30 28 00 00 	lea    0x2830(%rip),%rsi        # 502b <N+0x17>
    27fb:	48 8d 3d 3e 58 00 00 	lea    0x583e(%rip),%rdi        # 8040 <std::cout@@GLIBCXX_3.4>
    2802:	e8 e9 f9 ff ff       	callq  21f0 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>
    2807:	48 89 c3             	mov    %rax,%rbx
    280a:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    280e:	48 89 c7             	mov    %rax,%rdi
    2811:	e8 a6 05 00 00       	callq  2dbc <std::chrono::duration<long, std::ratio<1l, 1000l> >::count() const>
    2816:	48 89 c6             	mov    %rax,%rsi
    2819:	48 89 df             	mov    %rbx,%rdi
    281c:	e8 8f fa ff ff       	callq  22b0 <std::ostream::operator<<(long)@plt>
    2821:	48 8d 35 12 28 00 00 	lea    0x2812(%rip),%rsi        # 503a <N+0x26>
    2828:	48 89 c7             	mov    %rax,%rdi
    282b:	e8 c0 f9 ff ff       	callq  21f0 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>
    2830:	48 89 c2             	mov    %rax,%rdx
    2833:	48 8b 05 7e 57 00 00 	mov    0x577e(%rip),%rax        # 7fb8 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GLIBCXX_3.4>
    283a:	48 89 c6             	mov    %rax,%rsi
    283d:	48 89 d7             	mov    %rdx,%rdi
    2840:	e8 db f9 ff ff       	callq  2220 <std::ostream::operator<<(std::ostream& (*)(std::ostream&))@plt>

	std::this_thread::sleep_for(std::chrono::milliseconds(1));
    2845:	c7 45 d8 01 00 00 00 	movl   $0x1,-0x28(%rbp)
    284c:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
    2850:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    2854:	48 89 d6             	mov    %rdx,%rsi
    2857:	48 89 c7             	mov    %rax,%rdi
    285a:	e8 73 05 00 00       	callq  2dd2 <std::chrono::duration<long, std::ratio<1l, 1000l> >::duration<int, void>(int const&)>
    285f:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    2863:	48 89 c7             	mov    %rax,%rdi
    2866:	e8 f3 07 00 00       	callq  305e <void std::this_thread::sleep_for<long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)>

	return 0;
    286b:	bb 00 00 00 00       	mov    $0x0,%ebx
	std::thread read_thread3(readGr, 4, 3 * 1000 * 1000);
    2870:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    2874:	48 89 c7             	mov    %rax,%rdi
    2877:	e8 b0 01 00 00       	callq  2a2c <std::thread::~thread()>
	std::thread read_thread2(readGr, 3, 2 * 1000 * 1000);
    287c:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2880:	48 89 c7             	mov    %rax,%rdi
    2883:	e8 a4 01 00 00       	callq  2a2c <std::thread::~thread()>
	std::thread read_thread1(readGr, 2, 1 * 1000 * 1000);
    2888:	48 8d 45 b8          	lea    -0x48(%rbp),%rax
    288c:	48 89 c7             	mov    %rax,%rdi
    288f:	e8 98 01 00 00       	callq  2a2c <std::thread::~thread()>
	std::thread trouble_thread2(troubleGr, 2 * (N / 4));
    2894:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    2898:	48 89 c7             	mov    %rax,%rdi
    289b:	e8 8c 01 00 00       	callq  2a2c <std::thread::~thread()>
	std::thread trouble_thread1(troubleGr, 0 * (N / 4));
    28a0:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
    28a4:	48 89 c7             	mov    %rax,%rdi
    28a7:	e8 80 01 00 00       	callq  2a2c <std::thread::~thread()>
	std::thread write_thread(writeGr, 1);
    28ac:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    28b0:	48 89 c7             	mov    %rax,%rdi
    28b3:	e8 74 01 00 00       	callq  2a2c <std::thread::~thread()>
    28b8:	89 d8                	mov    %ebx,%eax
}
    28ba:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    28be:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    28c5:	00 00 
    28c7:	0f 84 91 00 00 00    	je     295e <main+0x320>
    28cd:	e9 87 00 00 00       	jmpq   2959 <main+0x31b>
    28d2:	f3 0f 1e fa          	endbr64 
    28d6:	48 89 c3             	mov    %rax,%rbx
	std::thread read_thread3(readGr, 4, 3 * 1000 * 1000);
    28d9:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    28dd:	48 89 c7             	mov    %rax,%rdi
    28e0:	e8 47 01 00 00       	callq  2a2c <std::thread::~thread()>
    28e5:	eb 07                	jmp    28ee <main+0x2b0>
    28e7:	f3 0f 1e fa          	endbr64 
    28eb:	48 89 c3             	mov    %rax,%rbx
	std::thread read_thread2(readGr, 3, 2 * 1000 * 1000);
    28ee:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    28f2:	48 89 c7             	mov    %rax,%rdi
    28f5:	e8 32 01 00 00       	callq  2a2c <std::thread::~thread()>
    28fa:	eb 07                	jmp    2903 <main+0x2c5>
    28fc:	f3 0f 1e fa          	endbr64 
    2900:	48 89 c3             	mov    %rax,%rbx
	std::thread read_thread1(readGr, 2, 1 * 1000 * 1000);
    2903:	48 8d 45 b8          	lea    -0x48(%rbp),%rax
    2907:	48 89 c7             	mov    %rax,%rdi
    290a:	e8 1d 01 00 00       	callq  2a2c <std::thread::~thread()>
    290f:	eb 07                	jmp    2918 <main+0x2da>
    2911:	f3 0f 1e fa          	endbr64 
    2915:	48 89 c3             	mov    %rax,%rbx
	std::thread trouble_thread2(troubleGr, 2 * (N / 4));
    2918:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    291c:	48 89 c7             	mov    %rax,%rdi
    291f:	e8 08 01 00 00       	callq  2a2c <std::thread::~thread()>
    2924:	eb 07                	jmp    292d <main+0x2ef>
    2926:	f3 0f 1e fa          	endbr64 
    292a:	48 89 c3             	mov    %rax,%rbx
	std::thread trouble_thread1(troubleGr, 0 * (N / 4));
    292d:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
    2931:	48 89 c7             	mov    %rax,%rdi
    2934:	e8 f3 00 00 00       	callq  2a2c <std::thread::~thread()>
    2939:	eb 07                	jmp    2942 <main+0x304>
    293b:	f3 0f 1e fa          	endbr64 
    293f:	48 89 c3             	mov    %rax,%rbx
	std::thread write_thread(writeGr, 1);
    2942:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    2946:	48 89 c7             	mov    %rax,%rdi
    2949:	e8 de 00 00 00       	callq  2a2c <std::thread::~thread()>
    294e:	48 89 d8             	mov    %rbx,%rax
    2951:	48 89 c7             	mov    %rax,%rdi
    2954:	e8 47 f9 ff ff       	callq  22a0 <_Unwind_Resume@plt>
}
    2959:	e8 d2 f8 ff ff       	callq  2230 <__stack_chk_fail@plt>
    295e:	48 83 c4 68          	add    $0x68,%rsp
    2962:	5b                   	pop    %rbx
    2963:	5d                   	pop    %rbp
    2964:	c3                   	retq   

0000000000002965 <__static_initialization_and_destruction_0(int, int)>:
    2965:	f3 0f 1e fa          	endbr64 
    2969:	55                   	push   %rbp
    296a:	48 89 e5             	mov    %rsp,%rbp
    296d:	48 83 ec 10          	sub    $0x10,%rsp
    2971:	89 7d fc             	mov    %edi,-0x4(%rbp)
    2974:	89 75 f8             	mov    %esi,-0x8(%rbp)
    2977:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    297b:	75 32                	jne    29af <__static_initialization_and_destruction_0(int, int)+0x4a>
    297d:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    2984:	75 29                	jne    29af <__static_initialization_and_destruction_0(int, int)+0x4a>
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  //@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
    2986:	48 8d 3d eb 57 00 00 	lea    0x57eb(%rip),%rdi        # 8178 <std::__ioinit>
    298d:	e8 be f8 ff ff       	callq  2250 <std::ios_base::Init::Init()@plt>
    2992:	48 8d 15 6f 56 00 00 	lea    0x566f(%rip),%rdx        # 8008 <__dso_handle>
    2999:	48 8d 35 d8 57 00 00 	lea    0x57d8(%rip),%rsi        # 8178 <std::__ioinit>
    29a0:	48 8b 05 41 56 00 00 	mov    0x5641(%rip),%rax        # 7fe8 <std::ios_base::Init::~Init()@GLIBCXX_3.4>
    29a7:	48 89 c7             	mov    %rax,%rdi
    29aa:	e8 21 f8 ff ff       	callq  21d0 <__cxa_atexit@plt>
    29af:	90                   	nop
    29b0:	c9                   	leaveq 
    29b1:	c3                   	retq   

00000000000029b2 <_GLOBAL__sub_I_arrI>:
    29b2:	f3 0f 1e fa          	endbr64 
    29b6:	55                   	push   %rbp
    29b7:	48 89 e5             	mov    %rsp,%rbp
    29ba:	be ff ff 00 00       	mov    $0xffff,%esi
    29bf:	bf 01 00 00 00       	mov    $0x1,%edi
    29c4:	e8 9c ff ff ff       	callq  2965 <__static_initialization_and_destruction_0(int, int)>
    29c9:	5d                   	pop    %rbp
    29ca:	c3                   	retq   
    29cb:	90                   	nop

00000000000029cc <std::chrono::duration<long, std::ratio<1l, 1000000000l> >::count() const>:
	~duration() = default;
	duration& operator=(const duration&) = default;

	// 20.11.5.2 observer
	constexpr rep
	count() const
    29cc:	f3 0f 1e fa          	endbr64 
    29d0:	55                   	push   %rbp
    29d1:	48 89 e5             	mov    %rsp,%rbp
    29d4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	{ return __r; }
    29d8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    29dc:	48 8b 00             	mov    (%rax),%rax
    29df:	5d                   	pop    %rbp
    29e0:	c3                   	retq   
    29e1:	90                   	nop

00000000000029e2 <std::chrono::duration<long, std::ratio<1l, 1000000000l> >::duration<long, void>(long const&)>:
	  constexpr explicit duration(const _Rep2& __rep)
    29e2:	f3 0f 1e fa          	endbr64 
    29e6:	55                   	push   %rbp
    29e7:	48 89 e5             	mov    %rsp,%rbp
    29ea:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    29ee:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	  : __r(static_cast<rep>(__rep)) { }
    29f2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    29f6:	48 8b 10             	mov    (%rax),%rdx
    29f9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    29fd:	48 89 10             	mov    %rdx,(%rax)
    2a00:	90                   	nop
    2a01:	5d                   	pop    %rbp
    2a02:	c3                   	retq   

0000000000002a03 <std::chrono::duration_values<long>::zero()>:
	zero() noexcept
    2a03:	f3 0f 1e fa          	endbr64 
    2a07:	55                   	push   %rbp
    2a08:	48 89 e5             	mov    %rsp,%rbp
	{ return _Rep(0); }
    2a0b:	b8 00 00 00 00       	mov    $0x0,%eax
    2a10:	5d                   	pop    %rbp
    2a11:	c3                   	retq   

0000000000002a12 <std::thread::id::id()>:
    class id
    {
      native_handle_type	_M_thread;

    public:
      id() noexcept : _M_thread() { }
    2a12:	f3 0f 1e fa          	endbr64 
    2a16:	55                   	push   %rbp
    2a17:	48 89 e5             	mov    %rsp,%rbp
    2a1a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2a1e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2a22:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    2a29:	90                   	nop
    2a2a:	5d                   	pop    %rbp
    2a2b:	c3                   	retq   

0000000000002a2c <std::thread::~thread()>:
	      __make_invoker(std::forward<_Callable>(__f),
			     std::forward<_Args>(__args)...)),
	    __depend);
      }

    ~thread()
    2a2c:	f3 0f 1e fa          	endbr64 
    2a30:	55                   	push   %rbp
    2a31:	48 89 e5             	mov    %rsp,%rbp
    2a34:	48 83 ec 10          	sub    $0x10,%rsp
    2a38:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    {
      if (joinable())
    2a3c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2a40:	48 89 c7             	mov    %rax,%rdi
    2a43:	e8 0c 00 00 00       	callq  2a54 <std::thread::joinable() const>
    2a48:	84 c0                	test   %al,%al
    2a4a:	74 05                	je     2a51 <std::thread::~thread()+0x25>
	std::terminate();
    2a4c:	e8 4f f7 ff ff       	callq  21a0 <std::terminate()@plt>
    }
    2a51:	90                   	nop
    2a52:	c9                   	leaveq 
    2a53:	c3                   	retq   

0000000000002a54 <std::thread::joinable() const>:
    void
    swap(thread& __t) noexcept
    { std::swap(_M_id, __t._M_id); }

    bool
    joinable() const noexcept
    2a54:	f3 0f 1e fa          	endbr64 
    2a58:	55                   	push   %rbp
    2a59:	48 89 e5             	mov    %rsp,%rbp
    2a5c:	48 83 ec 20          	sub    $0x20,%rsp
    2a60:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    2a64:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2a6b:	00 00 
    2a6d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2a71:	31 c0                	xor    %eax,%eax
    { return !(_M_id == id()); }
    2a73:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    2a77:	48 89 c7             	mov    %rax,%rdi
    2a7a:	e8 93 ff ff ff       	callq  2a12 <std::thread::id::id()>
    2a7f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2a83:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    2a87:	48 89 c6             	mov    %rax,%rsi
    2a8a:	48 8b 3a             	mov    (%rdx),%rdi
    2a8d:	e8 19 00 00 00       	callq  2aab <std::operator==(std::thread::id, std::thread::id)>
    2a92:	83 f0 01             	xor    $0x1,%eax
    2a95:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    2a99:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2aa0:	00 00 
    2aa2:	74 05                	je     2aa9 <std::thread::joinable() const+0x55>
    2aa4:	e8 87 f7 ff ff       	callq  2230 <__stack_chk_fail@plt>
    2aa9:	c9                   	leaveq 
    2aaa:	c3                   	retq   

0000000000002aab <std::operator==(std::thread::id, std::thread::id)>:
  swap(thread& __x, thread& __y) noexcept
  { __x.swap(__y); }

  inline bool
  operator==(thread::id __x, thread::id __y) noexcept
  {
    2aab:	f3 0f 1e fa          	endbr64 
    2aaf:	55                   	push   %rbp
    2ab0:	48 89 e5             	mov    %rsp,%rbp
    2ab3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2ab7:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    // pthread_equal is undefined if either thread ID is not valid, so we
    // can't safely use __gthread_equal on default-constructed values (nor
    // the non-zero value returned by this_thread::get_id() for
    // single-threaded programs using GNU libc). Assume EqualityComparable.
    return __x._M_thread == __y._M_thread;
    2abb:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    2abf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2ac3:	48 39 c2             	cmp    %rax,%rdx
    2ac6:	0f 94 c0             	sete   %al
  }
    2ac9:	5d                   	pop    %rbp
    2aca:	c3                   	retq   

0000000000002acb <Timer::NowMicroSec()>:
                gettimeofday(&tv, 0); 
                int64_t l = (tv.tv_sec-_begin.tv_sec)*1000000+(tv.tv_usec-_begin.tv_usec);
		printf("Timer(%s), elapsed=%ld MICRO SECONDS\n", _desc.c_str(), l);
        }

	static int64_t NowMicroSec() {
    2acb:	f3 0f 1e fa          	endbr64 
    2acf:	55                   	push   %rbp
    2ad0:	48 89 e5             	mov    %rsp,%rbp
    2ad3:	48 83 ec 20          	sub    $0x20,%rsp
    2ad7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2ade:	00 00 
    2ae0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2ae4:	31 c0                	xor    %eax,%eax
		timeval t;
                gettimeofday(&t, 0); 
    2ae6:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    2aea:	be 00 00 00 00       	mov    $0x0,%esi
    2aef:	48 89 c7             	mov    %rax,%rdi
    2af2:	e8 69 f7 ff ff       	callq  2260 <gettimeofday@plt>
		return t.tv_sec*1000000+t.tv_usec;
    2af7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2afb:	48 69 d0 40 42 0f 00 	imul   $0xf4240,%rax,%rdx
    2b02:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2b06:	48 01 d0             	add    %rdx,%rax
	}
    2b09:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    2b0d:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2b14:	00 00 
    2b16:	74 05                	je     2b1d <Timer::NowMicroSec()+0x52>
    2b18:	e8 13 f7 ff ff       	callq  2230 <__stack_chk_fail@plt>
    2b1d:	c9                   	leaveq 
    2b1e:	c3                   	retq   
    2b1f:	90                   	nop

0000000000002b20 <std::chrono::duration<long, std::ratio<1l, 1l> >::count() const>:
	count() const
    2b20:	f3 0f 1e fa          	endbr64 
    2b24:	55                   	push   %rbp
    2b25:	48 89 e5             	mov    %rsp,%rbp
    2b28:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	{ return __r; }
    2b2c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2b30:	48 8b 00             	mov    (%rax),%rax
    2b33:	5d                   	pop    %rbp
    2b34:	c3                   	retq   
    2b35:	90                   	nop

0000000000002b36 <std::chrono::duration<long, std::ratio<1l, 1l> >::duration<long, void>(long const&)>:
	  constexpr explicit duration(const _Rep2& __rep)
    2b36:	f3 0f 1e fa          	endbr64 
    2b3a:	55                   	push   %rbp
    2b3b:	48 89 e5             	mov    %rsp,%rbp
    2b3e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2b42:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	  : __r(static_cast<rep>(__rep)) { }
    2b46:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2b4a:	48 8b 10             	mov    (%rax),%rdx
    2b4d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2b51:	48 89 10             	mov    %rdx,(%rax)
    2b54:	90                   	nop
    2b55:	5d                   	pop    %rbp
    2b56:	c3                   	retq   
    2b57:	90                   	nop

0000000000002b58 <std::thread::thread<void (&)(int), int, void>(void (&)(int), int&&)>:
      thread(_Callable&& __f, _Args&&... __args)
    2b58:	f3 0f 1e fa          	endbr64 
    2b5c:	55                   	push   %rbp
    2b5d:	48 89 e5             	mov    %rsp,%rbp
    2b60:	53                   	push   %rbx
    2b61:	48 83 ec 58          	sub    $0x58,%rsp
    2b65:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    2b69:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    2b6d:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
    2b71:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2b78:	00 00 
    2b7a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2b7e:	31 c0                	xor    %eax,%eax
      {
    2b80:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2b84:	48 89 c7             	mov    %rax,%rdi
    2b87:	e8 86 fe ff ff       	callq  2a12 <std::thread::id::id()>
	auto __depend = reinterpret_cast<void(*)()>(&pthread_create);
    2b8c:	48 8b 05 2d 54 00 00 	mov    0x542d(%rip),%rax        # 7fc0 <pthread_create@GLIBC_2.2.5>
    2b93:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
        _M_start_thread(_S_make_state(
    2b97:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    2b9b:	48 89 c7             	mov    %rax,%rdi
    2b9e:	e8 b4 05 00 00       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    2ba3:	48 89 c3             	mov    %rax,%rbx
    2ba6:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2baa:	48 89 c7             	mov    %rax,%rdi
    2bad:	e8 93 05 00 00       	callq  3145 <void (&std::forward<void (&)(int)>(std::remove_reference<void (&)(int)>::type&))(int)>
    2bb2:	48 89 c1             	mov    %rax,%rcx
    2bb5:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    2bb9:	48 89 da             	mov    %rbx,%rdx
    2bbc:	48 89 ce             	mov    %rcx,%rsi
    2bbf:	48 89 c7             	mov    %rax,%rdi
    2bc2:	e8 08 07 00 00       	callq  32cf <std::thread::_Invoker<std::tuple<std::decay<void (&)(int)>::type, std::decay<int>::type> > std::thread::__make_invoker<void (&)(int), int>(void (&)(int), int&&)>
    2bc7:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2bcb:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
    2bcf:	48 89 d6             	mov    %rdx,%rsi
    2bd2:	48 89 c7             	mov    %rax,%rdi
    2bd5:	e8 4a 07 00 00       	callq  3324 <std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> > std::thread::_S_make_state<std::thread::_Invoker<std::tuple<void (*)(int), int> > >(std::thread::_Invoker<std::tuple<void (*)(int), int> >&&)>
    2bda:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    2bde:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    2be2:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2be6:	48 89 ce             	mov    %rcx,%rsi
    2be9:	48 89 c7             	mov    %rax,%rdi
    2bec:	e8 ef f5 ff ff       	callq  21e0 <std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())@plt>
    2bf1:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2bf5:	48 89 c7             	mov    %rax,%rdi
    2bf8:	e8 81 07 00 00       	callq  337e <std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >::~unique_ptr()>
      }
    2bfd:	90                   	nop
    2bfe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2c02:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2c09:	00 00 
    2c0b:	74 25                	je     2c32 <std::thread::thread<void (&)(int), int, void>(void (&)(int), int&&)+0xda>
    2c0d:	eb 1e                	jmp    2c2d <std::thread::thread<void (&)(int), int, void>(void (&)(int), int&&)+0xd5>
    2c0f:	f3 0f 1e fa          	endbr64 
    2c13:	48 89 c3             	mov    %rax,%rbx
        _M_start_thread(_S_make_state(
    2c16:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2c1a:	48 89 c7             	mov    %rax,%rdi
    2c1d:	e8 5c 07 00 00       	callq  337e <std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >::~unique_ptr()>
    2c22:	48 89 d8             	mov    %rbx,%rax
    2c25:	48 89 c7             	mov    %rax,%rdi
    2c28:	e8 73 f6 ff ff       	callq  22a0 <_Unwind_Resume@plt>
      }
    2c2d:	e8 fe f5 ff ff       	callq  2230 <__stack_chk_fail@plt>
    2c32:	48 83 c4 58          	add    $0x58,%rsp
    2c36:	5b                   	pop    %rbx
    2c37:	5d                   	pop    %rbp
    2c38:	c3                   	retq   
    2c39:	90                   	nop

0000000000002c3a <std::thread::thread<void (&)(int, int), int, int, void>(void (&)(int, int), int&&, int&&)>:
      thread(_Callable&& __f, _Args&&... __args)
    2c3a:	f3 0f 1e fa          	endbr64 
    2c3e:	55                   	push   %rbp
    2c3f:	48 89 e5             	mov    %rsp,%rbp
    2c42:	41 54                	push   %r12
    2c44:	53                   	push   %rbx
    2c45:	48 83 ec 50          	sub    $0x50,%rsp
    2c49:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    2c4d:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    2c51:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
    2c55:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
    2c59:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2c60:	00 00 
    2c62:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2c66:	31 c0                	xor    %eax,%eax
      {
    2c68:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2c6c:	48 89 c7             	mov    %rax,%rdi
    2c6f:	e8 9e fd ff ff       	callq  2a12 <std::thread::id::id()>
	auto __depend = reinterpret_cast<void(*)()>(&pthread_create);
    2c74:	48 8b 05 45 53 00 00 	mov    0x5345(%rip),%rax        # 7fc0 <pthread_create@GLIBC_2.2.5>
    2c7b:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
        _M_start_thread(_S_make_state(
    2c7f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    2c83:	48 89 c7             	mov    %rax,%rdi
    2c86:	e8 cc 04 00 00       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    2c8b:	49 89 c4             	mov    %rax,%r12
    2c8e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    2c92:	48 89 c7             	mov    %rax,%rdi
    2c95:	e8 bd 04 00 00       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    2c9a:	48 89 c3             	mov    %rax,%rbx
    2c9d:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2ca1:	48 89 c7             	mov    %rax,%rdi
    2ca4:	e8 3e 07 00 00       	callq  33e7 <void (&std::forward<void (&)(int, int)>(std::remove_reference<void (&)(int, int)>::type&))(int, int)>
    2ca9:	48 89 c6             	mov    %rax,%rsi
    2cac:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    2cb0:	4c 89 e1             	mov    %r12,%rcx
    2cb3:	48 89 da             	mov    %rbx,%rdx
    2cb6:	48 89 c7             	mov    %rax,%rdi
    2cb9:	e8 31 09 00 00       	callq  35ef <std::thread::_Invoker<std::tuple<std::decay<void (&)(int, int)>::type, std::decay<int>::type, std::decay<int>::type> > std::thread::__make_invoker<void (&)(int, int), int, int>(void (&)(int, int), int&&, int&&)>
    2cbe:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2cc2:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
    2cc6:	48 89 d6             	mov    %rdx,%rsi
    2cc9:	48 89 c7             	mov    %rax,%rdi
    2ccc:	e8 8d 09 00 00       	callq  365e <std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> > std::thread::_S_make_state<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >(std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> >&&)>
    2cd1:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    2cd5:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    2cd9:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2cdd:	48 89 ce             	mov    %rcx,%rsi
    2ce0:	48 89 c7             	mov    %rax,%rdi
    2ce3:	e8 f8 f4 ff ff       	callq  21e0 <std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())@plt>
    2ce8:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2cec:	48 89 c7             	mov    %rax,%rdi
    2cef:	e8 8a 06 00 00       	callq  337e <std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >::~unique_ptr()>
      }
    2cf4:	90                   	nop
    2cf5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2cf9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2d00:	00 00 
    2d02:	74 25                	je     2d29 <std::thread::thread<void (&)(int, int), int, int, void>(void (&)(int, int), int&&, int&&)+0xef>
    2d04:	eb 1e                	jmp    2d24 <std::thread::thread<void (&)(int, int), int, int, void>(void (&)(int, int), int&&, int&&)+0xea>
    2d06:	f3 0f 1e fa          	endbr64 
    2d0a:	48 89 c3             	mov    %rax,%rbx
        _M_start_thread(_S_make_state(
    2d0d:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2d11:	48 89 c7             	mov    %rax,%rdi
    2d14:	e8 65 06 00 00       	callq  337e <std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >::~unique_ptr()>
    2d19:	48 89 d8             	mov    %rbx,%rax
    2d1c:	48 89 c7             	mov    %rax,%rdi
    2d1f:	e8 7c f5 ff ff       	callq  22a0 <_Unwind_Resume@plt>
      }
    2d24:	e8 07 f5 ff ff       	callq  2230 <__stack_chk_fail@plt>
    2d29:	48 83 c4 50          	add    $0x50,%rsp
    2d2d:	5b                   	pop    %rbx
    2d2e:	41 5c                	pop    %r12
    2d30:	5d                   	pop    %rbp
    2d31:	c3                   	retq   

0000000000002d32 <std::common_type<std::chrono::duration<long, std::ratio<1l, 1000000000l> >, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::type std::chrono::operator-<std::chrono::_V2::steady_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> >, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >(std::chrono::time_point<std::chrono::_V2::steady_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> > > const&, std::chrono::time_point<std::chrono::_V2::steady_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> > > const&)>:
	return __time_point(__lhs.time_since_epoch() -__rhs);
      }

    template<typename _Clock, typename _Dur1, typename _Dur2>
      constexpr typename common_type<_Dur1, _Dur2>::type
      operator-(const time_point<_Clock, _Dur1>& __lhs,
    2d32:	f3 0f 1e fa          	endbr64 
    2d36:	55                   	push   %rbp
    2d37:	48 89 e5             	mov    %rsp,%rbp
    2d3a:	48 83 ec 30          	sub    $0x30,%rsp
    2d3e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    2d42:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    2d46:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2d4d:	00 00 
    2d4f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2d53:	31 c0                	xor    %eax,%eax
		const time_point<_Clock, _Dur2>& __rhs)
      { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
    2d55:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2d59:	48 89 c7             	mov    %rax,%rdi
    2d5c:	e8 57 09 00 00       	callq  36b8 <std::chrono::time_point<std::chrono::_V2::steady_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::time_since_epoch() const>
    2d61:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    2d65:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2d69:	48 89 c7             	mov    %rax,%rdi
    2d6c:	e8 47 09 00 00       	callq  36b8 <std::chrono::time_point<std::chrono::_V2::steady_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::time_since_epoch() const>
    2d71:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2d75:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
    2d79:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    2d7d:	48 89 d6             	mov    %rdx,%rsi
    2d80:	48 89 c7             	mov    %rax,%rdi
    2d83:	e8 45 09 00 00       	callq  36cd <std::common_type<std::chrono::duration<long, std::ratio<1l, 1000000000l> >, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::type std::chrono::operator-<long, std::ratio<1l, 1000000000l>, long, std::ratio<1l, 1000000000l> >(std::chrono::duration<long, std::ratio<1l, 1000000000l> > const&, std::chrono::duration<long, std::ratio<1l, 1000000000l> > const&)>
    2d88:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    2d8c:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2d93:	00 00 
    2d95:	74 05                	je     2d9c <std::common_type<std::chrono::duration<long, std::ratio<1l, 1000000000l> >, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::type std::chrono::operator-<std::chrono::_V2::steady_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> >, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >(std::chrono::time_point<std::chrono::_V2::steady_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> > > const&, std::chrono::time_point<std::chrono::_V2::steady_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> > > const&)+0x6a>
    2d97:	e8 94 f4 ff ff       	callq  2230 <__stack_chk_fail@plt>
    2d9c:	c9                   	leaveq 
    2d9d:	c3                   	retq   

0000000000002d9e <std::enable_if<std::chrono::__is_duration<std::chrono::duration<long, std::ratio<1l, 1000l> > >::value, std::chrono::duration<long, std::ratio<1l, 1000l> > >::type std::chrono::duration_cast<std::chrono::duration<long, std::ratio<1l, 1000l> >, long, std::ratio<1l, 1000000000l> >(std::chrono::duration<long, std::ratio<1l, 1000000000l> > const&)>:
      duration_cast(const duration<_Rep, _Period>& __d)
    2d9e:	f3 0f 1e fa          	endbr64 
    2da2:	55                   	push   %rbp
    2da3:	48 89 e5             	mov    %rsp,%rbp
    2da6:	48 83 ec 10          	sub    $0x10,%rsp
    2daa:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	return __dc::__cast(__d);
    2dae:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2db2:	48 89 c7             	mov    %rax,%rdi
    2db5:	e8 a4 09 00 00       	callq  375e <std::chrono::duration<long, std::ratio<1l, 1000l> > std::chrono::__duration_cast_impl<std::chrono::duration<long, std::ratio<1l, 1000l> >, std::ratio<1l, 1000000l>, long, true, false>::__cast<long, std::ratio<1l, 1000000000l> >(std::chrono::duration<long, std::ratio<1l, 1000000000l> > const&)>
      }
    2dba:	c9                   	leaveq 
    2dbb:	c3                   	retq   

0000000000002dbc <std::chrono::duration<long, std::ratio<1l, 1000l> >::count() const>:
	count() const
    2dbc:	f3 0f 1e fa          	endbr64 
    2dc0:	55                   	push   %rbp
    2dc1:	48 89 e5             	mov    %rsp,%rbp
    2dc4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	{ return __r; }
    2dc8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2dcc:	48 8b 00             	mov    (%rax),%rax
    2dcf:	5d                   	pop    %rbp
    2dd0:	c3                   	retq   
    2dd1:	90                   	nop

0000000000002dd2 <std::chrono::duration<long, std::ratio<1l, 1000l> >::duration<int, void>(int const&)>:
	  constexpr explicit duration(const _Rep2& __rep)
    2dd2:	f3 0f 1e fa          	endbr64 
    2dd6:	55                   	push   %rbp
    2dd7:	48 89 e5             	mov    %rsp,%rbp
    2dda:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2dde:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	  : __r(static_cast<rep>(__rep)) { }
    2de2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2de6:	8b 00                	mov    (%rax),%eax
    2de8:	48 63 d0             	movslq %eax,%rdx
    2deb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2def:	48 89 10             	mov    %rdx,(%rax)
    2df2:	90                   	nop
    2df3:	5d                   	pop    %rbp
    2df4:	c3                   	retq   

0000000000002df5 <bool std::chrono::operator<=<long, std::ratio<1l, 1000l>, long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&, std::chrono::duration<long, std::ratio<1l, 1000l> > const&)>:
      operator<=(const duration<_Rep1, _Period1>& __lhs,
    2df5:	f3 0f 1e fa          	endbr64 
    2df9:	55                   	push   %rbp
    2dfa:	48 89 e5             	mov    %rsp,%rbp
    2dfd:	48 83 ec 10          	sub    $0x10,%rsp
    2e01:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2e05:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { return !(__rhs < __lhs); }
    2e09:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    2e0d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2e11:	48 89 d6             	mov    %rdx,%rsi
    2e14:	48 89 c7             	mov    %rax,%rdi
    2e17:	e8 77 00 00 00       	callq  2e93 <bool std::chrono::operator< <long, std::ratio<1l, 1000l>, long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&, std::chrono::duration<long, std::ratio<1l, 1000l> > const&)>
    2e1c:	83 f0 01             	xor    $0x1,%eax
    2e1f:	c9                   	leaveq 
    2e20:	c3                   	retq   

0000000000002e21 <std::chrono::duration<long, std::ratio<1l, 1000l> >::zero()>:
	zero() noexcept
    2e21:	f3 0f 1e fa          	endbr64 
    2e25:	55                   	push   %rbp
    2e26:	48 89 e5             	mov    %rsp,%rbp
    2e29:	48 83 ec 20          	sub    $0x20,%rsp
    2e2d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2e34:	00 00 
    2e36:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2e3a:	31 c0                	xor    %eax,%eax
	{ return duration(duration_values<rep>::zero()); }
    2e3c:	e8 c2 fb ff ff       	callq  2a03 <std::chrono::duration_values<long>::zero()>
    2e41:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2e45:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
    2e49:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    2e4d:	48 89 d6             	mov    %rdx,%rsi
    2e50:	48 89 c7             	mov    %rax,%rdi
    2e53:	e8 1a 00 00 00       	callq  2e72 <std::chrono::duration<long, std::ratio<1l, 1000l> >::duration<long, void>(long const&)>
    2e58:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2e5c:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    2e60:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2e67:	00 00 
    2e69:	74 05                	je     2e70 <std::chrono::duration<long, std::ratio<1l, 1000l> >::zero()+0x4f>
    2e6b:	e8 c0 f3 ff ff       	callq  2230 <__stack_chk_fail@plt>
    2e70:	c9                   	leaveq 
    2e71:	c3                   	retq   

0000000000002e72 <std::chrono::duration<long, std::ratio<1l, 1000l> >::duration<long, void>(long const&)>:
	  constexpr explicit duration(const _Rep2& __rep)
    2e72:	f3 0f 1e fa          	endbr64 
    2e76:	55                   	push   %rbp
    2e77:	48 89 e5             	mov    %rsp,%rbp
    2e7a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2e7e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	  : __r(static_cast<rep>(__rep)) { }
    2e82:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2e86:	48 8b 10             	mov    (%rax),%rdx
    2e89:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2e8d:	48 89 10             	mov    %rdx,(%rax)
    2e90:	90                   	nop
    2e91:	5d                   	pop    %rbp
    2e92:	c3                   	retq   

0000000000002e93 <bool std::chrono::operator< <long, std::ratio<1l, 1000l>, long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&, std::chrono::duration<long, std::ratio<1l, 1000l> > const&)>:
      operator<(const duration<_Rep1, _Period1>& __lhs,
    2e93:	f3 0f 1e fa          	endbr64 
    2e97:	55                   	push   %rbp
    2e98:	48 89 e5             	mov    %rsp,%rbp
    2e9b:	53                   	push   %rbx
    2e9c:	48 83 ec 38          	sub    $0x38,%rsp
    2ea0:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    2ea4:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    2ea8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2eaf:	00 00 
    2eb1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2eb5:	31 c0                	xor    %eax,%eax
	return __ct(__lhs).count() < __ct(__rhs).count();
    2eb7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2ebb:	48 8b 00             	mov    (%rax),%rax
    2ebe:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    2ec2:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    2ec6:	48 89 c7             	mov    %rax,%rdi
    2ec9:	e8 ee fe ff ff       	callq  2dbc <std::chrono::duration<long, std::ratio<1l, 1000l> >::count() const>
    2ece:	48 89 c3             	mov    %rax,%rbx
    2ed1:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2ed5:	48 8b 00             	mov    (%rax),%rax
    2ed8:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    2edc:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    2ee0:	48 89 c7             	mov    %rax,%rdi
    2ee3:	e8 d4 fe ff ff       	callq  2dbc <std::chrono::duration<long, std::ratio<1l, 1000l> >::count() const>
    2ee8:	48 39 c3             	cmp    %rax,%rbx
    2eeb:	0f 9c c0             	setl   %al
      }
    2eee:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    2ef2:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    2ef9:	00 00 
    2efb:	74 05                	je     2f02 <bool std::chrono::operator< <long, std::ratio<1l, 1000l>, long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&, std::chrono::duration<long, std::ratio<1l, 1000l> > const&)+0x6f>
    2efd:	e8 2e f3 ff ff       	callq  2230 <__stack_chk_fail@plt>
    2f02:	48 83 c4 38          	add    $0x38,%rsp
    2f06:	5b                   	pop    %rbx
    2f07:	5d                   	pop    %rbp
    2f08:	c3                   	retq   

0000000000002f09 <std::enable_if<std::chrono::__is_duration<std::chrono::duration<long, std::ratio<1l, 1l> > >::value, std::chrono::duration<long, std::ratio<1l, 1l> > >::type std::chrono::duration_cast<std::chrono::duration<long, std::ratio<1l, 1l> >, long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)>:
      duration_cast(const duration<_Rep, _Period>& __d)
    2f09:	f3 0f 1e fa          	endbr64 
    2f0d:	55                   	push   %rbp
    2f0e:	48 89 e5             	mov    %rsp,%rbp
    2f11:	48 83 ec 10          	sub    $0x10,%rsp
    2f15:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	return __dc::__cast(__d);
    2f19:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2f1d:	48 89 c7             	mov    %rax,%rdi
    2f20:	e8 02 00 00 00       	callq  2f27 <std::chrono::duration<long, std::ratio<1l, 1l> > std::chrono::__duration_cast_impl<std::chrono::duration<long, std::ratio<1l, 1l> >, std::ratio<1l, 1000l>, long, true, false>::__cast<long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)>
      }
    2f25:	c9                   	leaveq 
    2f26:	c3                   	retq   

0000000000002f27 <std::chrono::duration<long, std::ratio<1l, 1l> > std::chrono::__duration_cast_impl<std::chrono::duration<long, std::ratio<1l, 1l> >, std::ratio<1l, 1000l>, long, true, false>::__cast<long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)>:
	  __cast(const duration<_Rep, _Period>& __d)
    2f27:	f3 0f 1e fa          	endbr64 
    2f2b:	55                   	push   %rbp
    2f2c:	48 89 e5             	mov    %rsp,%rbp
    2f2f:	48 83 ec 30          	sub    $0x30,%rsp
    2f33:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    2f37:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2f3e:	00 00 
    2f40:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2f44:	31 c0                	xor    %eax,%eax
	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
    2f46:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2f4a:	48 89 c7             	mov    %rax,%rdi
    2f4d:	e8 6a fe ff ff       	callq  2dbc <std::chrono::duration<long, std::ratio<1l, 1000l> >::count() const>
    2f52:	48 89 c1             	mov    %rax,%rcx
    2f55:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
    2f5c:	9b c4 20 
    2f5f:	48 89 c8             	mov    %rcx,%rax
    2f62:	48 f7 ea             	imul   %rdx
    2f65:	48 c1 fa 07          	sar    $0x7,%rdx
    2f69:	48 89 c8             	mov    %rcx,%rax
    2f6c:	48 c1 f8 3f          	sar    $0x3f,%rax
    2f70:	48 29 c2             	sub    %rax,%rdx
    2f73:	48 89 d0             	mov    %rdx,%rax
    2f76:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2f7a:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
    2f7e:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    2f82:	48 89 d6             	mov    %rdx,%rsi
    2f85:	48 89 c7             	mov    %rax,%rdi
    2f88:	e8 a9 fb ff ff       	callq  2b36 <std::chrono::duration<long, std::ratio<1l, 1l> >::duration<long, void>(long const&)>
    2f8d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
	  }
    2f91:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    2f95:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    2f9c:	00 00 
    2f9e:	74 05                	je     2fa5 <std::chrono::duration<long, std::ratio<1l, 1l> > std::chrono::__duration_cast_impl<std::chrono::duration<long, std::ratio<1l, 1l> >, std::ratio<1l, 1000l>, long, true, false>::__cast<long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)+0x7e>
    2fa0:	e8 8b f2 ff ff       	callq  2230 <__stack_chk_fail@plt>
    2fa5:	c9                   	leaveq 
    2fa6:	c3                   	retq   

0000000000002fa7 <std::enable_if<std::chrono::__is_duration<std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::value, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::type std::chrono::duration_cast<std::chrono::duration<long, std::ratio<1l, 1000000000l> >, long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)>:
      duration_cast(const duration<_Rep, _Period>& __d)
    2fa7:	f3 0f 1e fa          	endbr64 
    2fab:	55                   	push   %rbp
    2fac:	48 89 e5             	mov    %rsp,%rbp
    2faf:	48 83 ec 10          	sub    $0x10,%rsp
    2fb3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	return __dc::__cast(__d);
    2fb7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2fbb:	48 89 c7             	mov    %rax,%rdi
    2fbe:	e8 1b 08 00 00       	callq  37de <std::chrono::duration<long, std::ratio<1l, 1000000000l> > std::chrono::__duration_cast_impl<std::chrono::duration<long, std::ratio<1l, 1000000000l> >, std::ratio<1000000l, 1l>, long, false, true>::__cast<long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)>
      }
    2fc3:	c9                   	leaveq 
    2fc4:	c3                   	retq   

0000000000002fc5 <std::common_type<std::chrono::duration<long, std::ratio<1l, 1000l> >, std::chrono::duration<long, std::ratio<1l, 1l> > >::type std::chrono::operator-<long, std::ratio<1l, 1000l>, long, std::ratio<1l, 1l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&, std::chrono::duration<long, std::ratio<1l, 1l> > const&)>:
      operator-(const duration<_Rep1, _Period1>& __lhs,
    2fc5:	f3 0f 1e fa          	endbr64 
    2fc9:	55                   	push   %rbp
    2fca:	48 89 e5             	mov    %rsp,%rbp
    2fcd:	53                   	push   %rbx
    2fce:	48 83 ec 48          	sub    $0x48,%rsp
    2fd2:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    2fd6:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    2fda:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2fe1:	00 00 
    2fe3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2fe7:	31 c0                	xor    %eax,%eax
	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
    2fe9:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2fed:	48 8b 00             	mov    (%rax),%rax
    2ff0:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    2ff4:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    2ff8:	48 89 c7             	mov    %rax,%rdi
    2ffb:	e8 bc fd ff ff       	callq  2dbc <std::chrono::duration<long, std::ratio<1l, 1000l> >::count() const>
    3000:	48 89 c3             	mov    %rax,%rbx
    3003:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    3007:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    300b:	48 89 d6             	mov    %rdx,%rsi
    300e:	48 89 c7             	mov    %rax,%rdi
    3011:	e8 2c 08 00 00       	callq  3842 <std::chrono::duration<long, std::ratio<1l, 1000l> >::duration<long, std::ratio<1l, 1l>, void>(std::chrono::duration<long, std::ratio<1l, 1l> > const&)>
    3016:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    301a:	48 89 c7             	mov    %rax,%rdi
    301d:	e8 9a fd ff ff       	callq  2dbc <std::chrono::duration<long, std::ratio<1l, 1000l> >::count() const>
    3022:	48 29 c3             	sub    %rax,%rbx
    3025:	48 89 d8             	mov    %rbx,%rax
    3028:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    302c:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
    3030:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    3034:	48 89 d6             	mov    %rdx,%rsi
    3037:	48 89 c7             	mov    %rax,%rdi
    303a:	e8 33 fe ff ff       	callq  2e72 <std::chrono::duration<long, std::ratio<1l, 1000l> >::duration<long, void>(long const&)>
    303f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
      }
    3043:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    3047:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    304e:	00 00 
    3050:	74 05                	je     3057 <std::common_type<std::chrono::duration<long, std::ratio<1l, 1000l> >, std::chrono::duration<long, std::ratio<1l, 1l> > >::type std::chrono::operator-<long, std::ratio<1l, 1000l>, long, std::ratio<1l, 1l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&, std::chrono::duration<long, std::ratio<1l, 1l> > const&)+0x92>
    3052:	e8 d9 f1 ff ff       	callq  2230 <__stack_chk_fail@plt>
    3057:	48 83 c4 48          	add    $0x48,%rsp
    305b:	5b                   	pop    %rbx
    305c:	5d                   	pop    %rbp
    305d:	c3                   	retq   

000000000000305e <void std::this_thread::sleep_for<long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)>:
    __sleep_for(chrono::seconds, chrono::nanoseconds);

    /// sleep_for
    template<typename _Rep, typename _Period>
      inline void
      sleep_for(const chrono::duration<_Rep, _Period>& __rtime)
    305e:	f3 0f 1e fa          	endbr64 
    3062:	55                   	push   %rbp
    3063:	48 89 e5             	mov    %rsp,%rbp
    3066:	48 83 ec 40          	sub    $0x40,%rsp
    306a:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    306e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3075:	00 00 
    3077:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    307b:	31 c0                	xor    %eax,%eax
      {
	if (__rtime <= __rtime.zero())
    307d:	e8 9f fd ff ff       	callq  2e21 <std::chrono::duration<long, std::ratio<1l, 1000l> >::zero()>
    3082:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    3086:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    308a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    308e:	48 89 d6             	mov    %rdx,%rsi
    3091:	48 89 c7             	mov    %rax,%rdi
    3094:	e8 5c fd ff ff       	callq  2df5 <bool std::chrono::operator<=<long, std::ratio<1l, 1000l>, long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&, std::chrono::duration<long, std::ratio<1l, 1000l> > const&)>
    3099:	84 c0                	test   %al,%al
    309b:	0f 85 8d 00 00 00    	jne    312e <void std::this_thread::sleep_for<long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)+0xd0>
	  return;
	auto __s = chrono::duration_cast<chrono::seconds>(__rtime);
    30a1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    30a5:	48 89 c7             	mov    %rax,%rdi
    30a8:	e8 5c fe ff ff       	callq  2f09 <std::enable_if<std::chrono::__is_duration<std::chrono::duration<long, std::ratio<1l, 1l> > >::value, std::chrono::duration<long, std::ratio<1l, 1l> > >::type std::chrono::duration_cast<std::chrono::duration<long, std::ratio<1l, 1l> >, long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)>
    30ad:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
	auto __ns = chrono::duration_cast<chrono::nanoseconds>(__rtime - __s);
    30b1:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
    30b5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    30b9:	48 89 d6             	mov    %rdx,%rsi
    30bc:	48 89 c7             	mov    %rax,%rdi
    30bf:	e8 01 ff ff ff       	callq  2fc5 <std::common_type<std::chrono::duration<long, std::ratio<1l, 1000l> >, std::chrono::duration<long, std::ratio<1l, 1l> > >::type std::chrono::operator-<long, std::ratio<1l, 1000l>, long, std::ratio<1l, 1l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&, std::chrono::duration<long, std::ratio<1l, 1l> > const&)>
    30c4:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    30c8:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    30cc:	48 89 c7             	mov    %rax,%rdi
    30cf:	e8 d3 fe ff ff       	callq  2fa7 <std::enable_if<std::chrono::__is_duration<std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::value, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::type std::chrono::duration_cast<std::chrono::duration<long, std::ratio<1l, 1000000000l> >, long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)>
    30d4:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
#ifdef _GLIBCXX_USE_NANOSLEEP
	__gthread_time_t __ts =
	  {
	    static_cast<std::time_t>(__s.count()),
    30d8:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    30dc:	48 89 c7             	mov    %rax,%rdi
    30df:	e8 3c fa ff ff       	callq  2b20 <std::chrono::duration<long, std::ratio<1l, 1l> >::count() const>
	__gthread_time_t __ts =
    30e4:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
	    static_cast<long>(__ns.count())
    30e8:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    30ec:	48 89 c7             	mov    %rax,%rdi
    30ef:	e8 d8 f8 ff ff       	callq  29cc <std::chrono::duration<long, std::ratio<1l, 1000000000l> >::count() const>
	__gthread_time_t __ts =
    30f4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	  };
	while (::nanosleep(&__ts, &__ts) == -1 && errno == EINTR)
    30f8:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    30fc:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    3100:	48 89 d6             	mov    %rdx,%rsi
    3103:	48 89 c7             	mov    %rax,%rdi
    3106:	e8 a5 f0 ff ff       	callq  21b0 <nanosleep@plt>
    310b:	83 f8 ff             	cmp    $0xffffffff,%eax
    310e:	75 13                	jne    3123 <void std::this_thread::sleep_for<long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)+0xc5>
    3110:	e8 7b f0 ff ff       	callq  2190 <__errno_location@plt>
    3115:	8b 00                	mov    (%rax),%eax
    3117:	83 f8 04             	cmp    $0x4,%eax
    311a:	75 07                	jne    3123 <void std::this_thread::sleep_for<long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)+0xc5>
    311c:	b8 01 00 00 00       	mov    $0x1,%eax
    3121:	eb 05                	jmp    3128 <void std::this_thread::sleep_for<long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)+0xca>
    3123:	b8 00 00 00 00       	mov    $0x0,%eax
    3128:	84 c0                	test   %al,%al
    312a:	74 03                	je     312f <void std::this_thread::sleep_for<long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)+0xd1>
    312c:	eb ca                	jmp    30f8 <void std::this_thread::sleep_for<long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)+0x9a>
	  return;
    312e:	90                   	nop
	  { }
#else
	__sleep_for(__s, __ns);
#endif
      }
    312f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3133:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    313a:	00 00 
    313c:	74 05                	je     3143 <void std::this_thread::sleep_for<long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)+0xe5>
    313e:	e8 ed f0 ff ff       	callq  2230 <__stack_chk_fail@plt>
    3143:	c9                   	leaveq 
    3144:	c3                   	retq   

0000000000003145 <void (&std::forward<void (&)(int)>(std::remove_reference<void (&)(int)>::type&))(int)>:
   *
   *  This function is used to implement "perfect forwarding".
   */
  template<typename _Tp>
    constexpr _Tp&&
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    3145:	f3 0f 1e fa          	endbr64 
    3149:	55                   	push   %rbp
    314a:	48 89 e5             	mov    %rsp,%rbp
    314d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
    3151:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3155:	5d                   	pop    %rbp
    3156:	c3                   	retq   

0000000000003157 <int&& std::forward<int>(std::remove_reference<int>::type&)>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    3157:	f3 0f 1e fa          	endbr64 
    315b:	55                   	push   %rbp
    315c:	48 89 e5             	mov    %rsp,%rbp
    315f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
    3163:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3167:	5d                   	pop    %rbp
    3168:	c3                   	retq   
    3169:	90                   	nop

000000000000316a <std::tuple<void (*)(int), int>::tuple(std::tuple<void (*)(int), int>&&)>:
        explicit constexpr tuple(_U1&& __a1, _U2&& __a2)
	: _Inherited(std::forward<_U1>(__a1), std::forward<_U2>(__a2)) { }

      constexpr tuple(const tuple&) = default;

      constexpr tuple(tuple&&) = default;
    316a:	f3 0f 1e fa          	endbr64 
    316e:	55                   	push   %rbp
    316f:	48 89 e5             	mov    %rsp,%rbp
    3172:	48 83 ec 10          	sub    $0x10,%rsp
    3176:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    317a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    317e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3182:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    3186:	48 89 d6             	mov    %rdx,%rsi
    3189:	48 89 c7             	mov    %rax,%rdi
    318c:	e8 0f 07 00 00       	callq  38a0 <std::_Tuple_impl<0ul, void (*)(int), int>::_Tuple_impl(std::_Tuple_impl<0ul, void (*)(int), int>&&)>
    3191:	90                   	nop
    3192:	c9                   	leaveq 
    3193:	c3                   	retq   

0000000000003194 <std::tuple<void (*)(int), int>::tuple<void (&)(int), int, true>(void (&)(int), int&&)>:
        constexpr tuple(_U1&& __a1, _U2&& __a2)
    3194:	f3 0f 1e fa          	endbr64 
    3198:	55                   	push   %rbp
    3199:	48 89 e5             	mov    %rsp,%rbp
    319c:	41 54                	push   %r12
    319e:	53                   	push   %rbx
    319f:	48 83 ec 20          	sub    $0x20,%rsp
    31a3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    31a7:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    31ab:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
	: _Inherited(std::forward<_U1>(__a1), std::forward<_U2>(__a2)) { }
    31af:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    31b3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    31b7:	48 89 c7             	mov    %rax,%rdi
    31ba:	e8 98 ff ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    31bf:	49 89 c4             	mov    %rax,%r12
    31c2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    31c6:	48 89 c7             	mov    %rax,%rdi
    31c9:	e8 77 ff ff ff       	callq  3145 <void (&std::forward<void (&)(int)>(std::remove_reference<void (&)(int)>::type&))(int)>
    31ce:	4c 89 e2             	mov    %r12,%rdx
    31d1:	48 89 c6             	mov    %rax,%rsi
    31d4:	48 89 df             	mov    %rbx,%rdi
    31d7:	e8 0a 00 00 00       	callq  31e6 <std::_Tuple_impl<0ul, void (*)(int), int>::_Tuple_impl<void (&)(int), int, void>(void (&)(int), int&&)>
    31dc:	90                   	nop
    31dd:	48 83 c4 20          	add    $0x20,%rsp
    31e1:	5b                   	pop    %rbx
    31e2:	41 5c                	pop    %r12
    31e4:	5d                   	pop    %rbp
    31e5:	c3                   	retq   

00000000000031e6 <std::_Tuple_impl<0ul, void (*)(int), int>::_Tuple_impl<void (&)(int), int, void>(void (&)(int), int&&)>:
        constexpr _Tuple_impl(_UHead&& __head, _UTail&&... __tail)
    31e6:	f3 0f 1e fa          	endbr64 
    31ea:	55                   	push   %rbp
    31eb:	48 89 e5             	mov    %rsp,%rbp
    31ee:	53                   	push   %rbx
    31ef:	48 83 ec 38          	sub    $0x38,%rsp
    31f3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    31f7:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    31fb:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    31ff:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3206:	00 00 
    3208:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    320c:	31 c0                	xor    %eax,%eax
	  _Base(std::forward<_UHead>(__head)) { }
    320e:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
    3212:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    3216:	48 89 c7             	mov    %rax,%rdi
    3219:	e8 39 ff ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    321e:	48 89 c6             	mov    %rax,%rsi
    3221:	48 89 df             	mov    %rbx,%rdi
    3224:	e8 43 00 00 00       	callq  326c <std::_Tuple_impl<1ul, int>::_Tuple_impl<int>(int&&)>
    3229:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    322d:	48 8d 58 08          	lea    0x8(%rax),%rbx
    3231:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3235:	48 89 c7             	mov    %rax,%rdi
    3238:	e8 08 ff ff ff       	callq  3145 <void (&std::forward<void (&)(int)>(std::remove_reference<void (&)(int)>::type&))(int)>
    323d:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    3241:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    3245:	48 89 c6             	mov    %rax,%rsi
    3248:	48 89 df             	mov    %rbx,%rdi
    324b:	e8 b8 06 00 00       	callq  3908 <std::_Head_base<0ul, void (*)(int), false>::_Head_base(void (* const&)(int))>
    3250:	90                   	nop
    3251:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3255:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    325c:	00 00 
    325e:	74 05                	je     3265 <std::_Tuple_impl<0ul, void (*)(int), int>::_Tuple_impl<void (&)(int), int, void>(void (&)(int), int&&)+0x7f>
    3260:	e8 cb ef ff ff       	callq  2230 <__stack_chk_fail@plt>
    3265:	48 83 c4 38          	add    $0x38,%rsp
    3269:	5b                   	pop    %rbx
    326a:	5d                   	pop    %rbp
    326b:	c3                   	retq   

000000000000326c <std::_Tuple_impl<1ul, int>::_Tuple_impl<int>(int&&)>:
        constexpr _Tuple_impl(_UHead&& __head)
    326c:	f3 0f 1e fa          	endbr64 
    3270:	55                   	push   %rbp
    3271:	48 89 e5             	mov    %rsp,%rbp
    3274:	53                   	push   %rbx
    3275:	48 83 ec 18          	sub    $0x18,%rsp
    3279:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    327d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	: _Base(std::forward<_UHead>(__head)) { }
    3281:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    3285:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3289:	48 89 c7             	mov    %rax,%rdi
    328c:	e8 c6 fe ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    3291:	48 89 c6             	mov    %rax,%rsi
    3294:	48 89 df             	mov    %rbx,%rdi
    3297:	e8 08 00 00 00       	callq  32a4 <std::_Head_base<1ul, int, false>::_Head_base<int>(int&&)>
    329c:	90                   	nop
    329d:	48 83 c4 18          	add    $0x18,%rsp
    32a1:	5b                   	pop    %rbx
    32a2:	5d                   	pop    %rbp
    32a3:	c3                   	retq   

00000000000032a4 <std::_Head_base<1ul, int, false>::_Head_base<int>(int&&)>:
        constexpr _Head_base(_UHead&& __h)
    32a4:	f3 0f 1e fa          	endbr64 
    32a8:	55                   	push   %rbp
    32a9:	48 89 e5             	mov    %rsp,%rbp
    32ac:	48 83 ec 10          	sub    $0x10,%rsp
    32b0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    32b4:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	: _M_head_impl(std::forward<_UHead>(__h)) { }
    32b8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    32bc:	48 89 c7             	mov    %rax,%rdi
    32bf:	e8 93 fe ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    32c4:	8b 10                	mov    (%rax),%edx
    32c6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    32ca:	89 10                	mov    %edx,(%rax)
    32cc:	90                   	nop
    32cd:	c9                   	leaveq 
    32ce:	c3                   	retq   

00000000000032cf <std::thread::_Invoker<std::tuple<std::decay<void (&)(int)>::type, std::decay<int>::type> > std::thread::__make_invoker<void (&)(int), int>(void (&)(int), int&&)>:
      __make_invoker(_Callable&& __callable, _Args&&... __args)
    32cf:	f3 0f 1e fa          	endbr64 
    32d3:	55                   	push   %rbp
    32d4:	48 89 e5             	mov    %rsp,%rbp
    32d7:	41 54                	push   %r12
    32d9:	53                   	push   %rbx
    32da:	48 83 ec 20          	sub    $0x20,%rsp
    32de:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    32e2:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    32e6:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
	} };
    32ea:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    32ee:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    32f2:	48 89 c7             	mov    %rax,%rdi
    32f5:	e8 4b fe ff ff       	callq  3145 <void (&std::forward<void (&)(int)>(std::remove_reference<void (&)(int)>::type&))(int)>
    32fa:	49 89 c4             	mov    %rax,%r12
    32fd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3301:	48 89 c7             	mov    %rax,%rdi
    3304:	e8 4e fe ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    3309:	48 89 c2             	mov    %rax,%rdx
    330c:	4c 89 e6             	mov    %r12,%rsi
    330f:	48 89 df             	mov    %rbx,%rdi
    3312:	e8 7d fe ff ff       	callq  3194 <std::tuple<void (*)(int), int>::tuple<void (&)(int), int, true>(void (&)(int), int&&)>
      }
    3317:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    331b:	48 83 c4 20          	add    $0x20,%rsp
    331f:	5b                   	pop    %rbx
    3320:	41 5c                	pop    %r12
    3322:	5d                   	pop    %rbp
    3323:	c3                   	retq   

0000000000003324 <std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> > std::thread::_S_make_state<std::thread::_Invoker<std::tuple<void (*)(int), int> > >(std::thread::_Invoker<std::tuple<void (*)(int), int> >&&)>:
      _S_make_state(_Callable&& __f)
    3324:	f3 0f 1e fa          	endbr64 
    3328:	55                   	push   %rbp
    3329:	48 89 e5             	mov    %rsp,%rbp
    332c:	41 54                	push   %r12
    332e:	53                   	push   %rbx
    332f:	48 83 ec 10          	sub    $0x10,%rsp
    3333:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3337:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	return _State_ptr{new _Impl{std::forward<_Callable>(__f)}};
    333b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    333f:	48 89 c7             	mov    %rax,%rdi
    3342:	e8 e2 05 00 00       	callq  3929 <std::thread::_Invoker<std::tuple<void (*)(int), int> >&& std::forward<std::thread::_Invoker<std::tuple<void (*)(int), int> > >(std::remove_reference<std::thread::_Invoker<std::tuple<void (*)(int), int> > >::type&)>
    3347:	49 89 c4             	mov    %rax,%r12
    334a:	bf 18 00 00 00       	mov    $0x18,%edi
    334f:	e8 ac ee ff ff       	callq  2200 <operator new(unsigned long)@plt>
    3354:	48 89 c3             	mov    %rax,%rbx
    3357:	4c 89 e6             	mov    %r12,%rsi
    335a:	48 89 df             	mov    %rbx,%rdi
    335d:	e8 22 06 00 00       	callq  3984 <std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int), int> > >::_State_impl(std::thread::_Invoker<std::tuple<void (*)(int), int> >&&)>
    3362:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3366:	48 89 de             	mov    %rbx,%rsi
    3369:	48 89 c7             	mov    %rax,%rdi
    336c:	e8 69 06 00 00       	callq  39da <std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >::unique_ptr<std::default_delete<std::thread::_State>, void>(std::thread::_State*)>
      }
    3371:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3375:	48 83 c4 10          	add    $0x10,%rsp
    3379:	5b                   	pop    %rbx
    337a:	41 5c                	pop    %r12
    337c:	5d                   	pop    %rbp
    337d:	c3                   	retq   

000000000000337e <std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >::~unique_ptr()>:
	unique_ptr(auto_ptr<_Up>&& __u) noexcept;
#pragma GCC diagnostic pop
#endif

      /// Destructor, invokes the deleter if the stored pointer is not null.
      ~unique_ptr() noexcept
    337e:	f3 0f 1e fa          	endbr64 
    3382:	55                   	push   %rbp
    3383:	48 89 e5             	mov    %rsp,%rbp
    3386:	53                   	push   %rbx
    3387:	48 83 ec 28          	sub    $0x28,%rsp
    338b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
      {
	static_assert(__is_invocable<deleter_type&, pointer>::value,
		      "unique_ptr's deleter must be invocable with a pointer");
	auto& __ptr = _M_t._M_ptr();
    338f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3393:	48 89 c7             	mov    %rax,%rdi
    3396:	e8 69 06 00 00       	callq  3a04 <std::__uniq_ptr_impl<std::thread::_State, std::default_delete<std::thread::_State> >::_M_ptr()>
    339b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	if (__ptr != nullptr)
    339f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    33a3:	48 8b 00             	mov    (%rax),%rax
    33a6:	48 85 c0             	test   %rax,%rax
    33a9:	74 29                	je     33d4 <std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >::~unique_ptr()+0x56>
	  get_deleter()(std::move(__ptr));
    33ab:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    33af:	48 89 c7             	mov    %rax,%rdi
    33b2:	e8 6b 06 00 00       	callq  3a22 <std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >::get_deleter()>
    33b7:	48 89 c3             	mov    %rax,%rbx
    33ba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    33be:	48 89 c7             	mov    %rax,%rdi
    33c1:	e8 7a 06 00 00       	callq  3a40 <std::remove_reference<std::thread::_State*&>::type&& std::move<std::thread::_State*&>(std::thread::_State*&)>
    33c6:	48 8b 00             	mov    (%rax),%rax
    33c9:	48 89 c6             	mov    %rax,%rsi
    33cc:	48 89 df             	mov    %rbx,%rdi
    33cf:	e8 7e 06 00 00       	callq  3a52 <std::default_delete<std::thread::_State>::operator()(std::thread::_State*) const>
	__ptr = pointer();
    33d4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    33d8:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
      }
    33df:	90                   	nop
    33e0:	48 83 c4 28          	add    $0x28,%rsp
    33e4:	5b                   	pop    %rbx
    33e5:	5d                   	pop    %rbp
    33e6:	c3                   	retq   

00000000000033e7 <void (&std::forward<void (&)(int, int)>(std::remove_reference<void (&)(int, int)>::type&))(int, int)>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    33e7:	f3 0f 1e fa          	endbr64 
    33eb:	55                   	push   %rbp
    33ec:	48 89 e5             	mov    %rsp,%rbp
    33ef:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
    33f3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    33f7:	5d                   	pop    %rbp
    33f8:	c3                   	retq   
    33f9:	90                   	nop

00000000000033fa <std::tuple<void (*)(int, int), int, int>::tuple(std::tuple<void (*)(int, int), int, int>&&)>:
      constexpr tuple(tuple&&) = default;
    33fa:	f3 0f 1e fa          	endbr64 
    33fe:	55                   	push   %rbp
    33ff:	48 89 e5             	mov    %rsp,%rbp
    3402:	48 83 ec 10          	sub    $0x10,%rsp
    3406:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    340a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    340e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3412:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    3416:	48 89 d6             	mov    %rdx,%rsi
    3419:	48 89 c7             	mov    %rax,%rdi
    341c:	e8 61 06 00 00       	callq  3a82 <std::_Tuple_impl<0ul, void (*)(int, int), int, int>::_Tuple_impl(std::_Tuple_impl<0ul, void (*)(int, int), int, int>&&)>
    3421:	90                   	nop
    3422:	c9                   	leaveq 
    3423:	c3                   	retq   

0000000000003424 <std::tuple<void (*)(int, int), int, int>::tuple<void (&)(int, int), int, int, true>(void (&)(int, int), int&&, int&&)>:
        constexpr tuple(_UElements&&... __elements)
    3424:	f3 0f 1e fa          	endbr64 
    3428:	55                   	push   %rbp
    3429:	48 89 e5             	mov    %rsp,%rbp
    342c:	41 55                	push   %r13
    342e:	41 54                	push   %r12
    3430:	53                   	push   %rbx
    3431:	48 83 ec 28          	sub    $0x28,%rsp
    3435:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    3439:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    343d:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    3441:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
        : _Inherited(std::forward<_UElements>(__elements)...) { }
    3445:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
    3449:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    344d:	48 89 c7             	mov    %rax,%rdi
    3450:	e8 02 fd ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    3455:	49 89 c5             	mov    %rax,%r13
    3458:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    345c:	48 89 c7             	mov    %rax,%rdi
    345f:	e8 f3 fc ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    3464:	49 89 c4             	mov    %rax,%r12
    3467:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    346b:	48 89 c7             	mov    %rax,%rdi
    346e:	e8 74 ff ff ff       	callq  33e7 <void (&std::forward<void (&)(int, int)>(std::remove_reference<void (&)(int, int)>::type&))(int, int)>
    3473:	4c 89 e9             	mov    %r13,%rcx
    3476:	4c 89 e2             	mov    %r12,%rdx
    3479:	48 89 c6             	mov    %rax,%rsi
    347c:	48 89 df             	mov    %rbx,%rdi
    347f:	e8 0c 00 00 00       	callq  3490 <std::_Tuple_impl<0ul, void (*)(int, int), int, int>::_Tuple_impl<void (&)(int, int), int, int, void>(void (&)(int, int), int&&, int&&)>
    3484:	90                   	nop
    3485:	48 83 c4 28          	add    $0x28,%rsp
    3489:	5b                   	pop    %rbx
    348a:	41 5c                	pop    %r12
    348c:	41 5d                	pop    %r13
    348e:	5d                   	pop    %rbp
    348f:	c3                   	retq   

0000000000003490 <std::_Tuple_impl<0ul, void (*)(int, int), int, int>::_Tuple_impl<void (&)(int, int), int, int, void>(void (&)(int, int), int&&, int&&)>:
        constexpr _Tuple_impl(_UHead&& __head, _UTail&&... __tail)
    3490:	f3 0f 1e fa          	endbr64 
    3494:	55                   	push   %rbp
    3495:	48 89 e5             	mov    %rsp,%rbp
    3498:	41 54                	push   %r12
    349a:	53                   	push   %rbx
    349b:	48 83 ec 30          	sub    $0x30,%rsp
    349f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    34a3:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    34a7:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    34ab:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    34af:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    34b6:	00 00 
    34b8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    34bc:	31 c0                	xor    %eax,%eax
	  _Base(std::forward<_UHead>(__head)) { }
    34be:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
    34c2:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    34c6:	48 89 c7             	mov    %rax,%rdi
    34c9:	e8 89 fc ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    34ce:	49 89 c4             	mov    %rax,%r12
    34d1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    34d5:	48 89 c7             	mov    %rax,%rdi
    34d8:	e8 7a fc ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    34dd:	4c 89 e2             	mov    %r12,%rdx
    34e0:	48 89 c6             	mov    %rax,%rsi
    34e3:	48 89 df             	mov    %rbx,%rdi
    34e6:	e8 45 00 00 00       	callq  3530 <std::_Tuple_impl<1ul, int, int>::_Tuple_impl<int, int, void>(int&&, int&&)>
    34eb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    34ef:	48 8d 58 08          	lea    0x8(%rax),%rbx
    34f3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    34f7:	48 89 c7             	mov    %rax,%rdi
    34fa:	e8 e8 fe ff ff       	callq  33e7 <void (&std::forward<void (&)(int, int)>(std::remove_reference<void (&)(int, int)>::type&))(int, int)>
    34ff:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    3503:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    3507:	48 89 c6             	mov    %rax,%rsi
    350a:	48 89 df             	mov    %rbx,%rdi
    350d:	e8 d8 05 00 00       	callq  3aea <std::_Head_base<0ul, void (*)(int, int), false>::_Head_base(void (* const&)(int, int))>
    3512:	90                   	nop
    3513:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3517:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    351e:	00 00 
    3520:	74 05                	je     3527 <std::_Tuple_impl<0ul, void (*)(int, int), int, int>::_Tuple_impl<void (&)(int, int), int, int, void>(void (&)(int, int), int&&, int&&)+0x97>
    3522:	e8 09 ed ff ff       	callq  2230 <__stack_chk_fail@plt>
    3527:	48 83 c4 30          	add    $0x30,%rsp
    352b:	5b                   	pop    %rbx
    352c:	41 5c                	pop    %r12
    352e:	5d                   	pop    %rbp
    352f:	c3                   	retq   

0000000000003530 <std::_Tuple_impl<1ul, int, int>::_Tuple_impl<int, int, void>(int&&, int&&)>:
        constexpr _Tuple_impl(_UHead&& __head, _UTail&&... __tail)
    3530:	f3 0f 1e fa          	endbr64 
    3534:	55                   	push   %rbp
    3535:	48 89 e5             	mov    %rsp,%rbp
    3538:	53                   	push   %rbx
    3539:	48 83 ec 28          	sub    $0x28,%rsp
    353d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3541:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    3545:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
	  _Base(std::forward<_UHead>(__head)) { }
    3549:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    354d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3551:	48 89 c7             	mov    %rax,%rdi
    3554:	e8 fe fb ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    3559:	48 89 c6             	mov    %rax,%rsi
    355c:	48 89 df             	mov    %rbx,%rdi
    355f:	e8 28 00 00 00       	callq  358c <std::_Tuple_impl<2ul, int>::_Tuple_impl<int>(int&&)>
    3564:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3568:	48 8d 58 04          	lea    0x4(%rax),%rbx
    356c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3570:	48 89 c7             	mov    %rax,%rdi
    3573:	e8 df fb ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    3578:	48 89 c6             	mov    %rax,%rsi
    357b:	48 89 df             	mov    %rbx,%rdi
    357e:	e8 21 fd ff ff       	callq  32a4 <std::_Head_base<1ul, int, false>::_Head_base<int>(int&&)>
    3583:	90                   	nop
    3584:	48 83 c4 28          	add    $0x28,%rsp
    3588:	5b                   	pop    %rbx
    3589:	5d                   	pop    %rbp
    358a:	c3                   	retq   
    358b:	90                   	nop

000000000000358c <std::_Tuple_impl<2ul, int>::_Tuple_impl<int>(int&&)>:
        constexpr _Tuple_impl(_UHead&& __head)
    358c:	f3 0f 1e fa          	endbr64 
    3590:	55                   	push   %rbp
    3591:	48 89 e5             	mov    %rsp,%rbp
    3594:	53                   	push   %rbx
    3595:	48 83 ec 18          	sub    $0x18,%rsp
    3599:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    359d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	: _Base(std::forward<_UHead>(__head)) { }
    35a1:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    35a5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    35a9:	48 89 c7             	mov    %rax,%rdi
    35ac:	e8 a6 fb ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    35b1:	48 89 c6             	mov    %rax,%rsi
    35b4:	48 89 df             	mov    %rbx,%rdi
    35b7:	e8 08 00 00 00       	callq  35c4 <std::_Head_base<2ul, int, false>::_Head_base<int>(int&&)>
    35bc:	90                   	nop
    35bd:	48 83 c4 18          	add    $0x18,%rsp
    35c1:	5b                   	pop    %rbx
    35c2:	5d                   	pop    %rbp
    35c3:	c3                   	retq   

00000000000035c4 <std::_Head_base<2ul, int, false>::_Head_base<int>(int&&)>:
        constexpr _Head_base(_UHead&& __h)
    35c4:	f3 0f 1e fa          	endbr64 
    35c8:	55                   	push   %rbp
    35c9:	48 89 e5             	mov    %rsp,%rbp
    35cc:	48 83 ec 10          	sub    $0x10,%rsp
    35d0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    35d4:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	: _M_head_impl(std::forward<_UHead>(__h)) { }
    35d8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    35dc:	48 89 c7             	mov    %rax,%rdi
    35df:	e8 73 fb ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    35e4:	8b 10                	mov    (%rax),%edx
    35e6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    35ea:	89 10                	mov    %edx,(%rax)
    35ec:	90                   	nop
    35ed:	c9                   	leaveq 
    35ee:	c3                   	retq   

00000000000035ef <std::thread::_Invoker<std::tuple<std::decay<void (&)(int, int)>::type, std::decay<int>::type, std::decay<int>::type> > std::thread::__make_invoker<void (&)(int, int), int, int>(void (&)(int, int), int&&, int&&)>:
      __make_invoker(_Callable&& __callable, _Args&&... __args)
    35ef:	f3 0f 1e fa          	endbr64 
    35f3:	55                   	push   %rbp
    35f4:	48 89 e5             	mov    %rsp,%rbp
    35f7:	41 55                	push   %r13
    35f9:	41 54                	push   %r12
    35fb:	53                   	push   %rbx
    35fc:	48 83 ec 28          	sub    $0x28,%rsp
    3600:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    3604:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    3608:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    360c:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
	} };
    3610:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
    3614:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3618:	48 89 c7             	mov    %rax,%rdi
    361b:	e8 c7 fd ff ff       	callq  33e7 <void (&std::forward<void (&)(int, int)>(std::remove_reference<void (&)(int, int)>::type&))(int, int)>
    3620:	49 89 c4             	mov    %rax,%r12
    3623:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    3627:	48 89 c7             	mov    %rax,%rdi
    362a:	e8 28 fb ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    362f:	49 89 c5             	mov    %rax,%r13
    3632:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    3636:	48 89 c7             	mov    %rax,%rdi
    3639:	e8 19 fb ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    363e:	48 89 c1             	mov    %rax,%rcx
    3641:	4c 89 ea             	mov    %r13,%rdx
    3644:	4c 89 e6             	mov    %r12,%rsi
    3647:	48 89 df             	mov    %rbx,%rdi
    364a:	e8 d5 fd ff ff       	callq  3424 <std::tuple<void (*)(int, int), int, int>::tuple<void (&)(int, int), int, int, true>(void (&)(int, int), int&&, int&&)>
      }
    364f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3653:	48 83 c4 28          	add    $0x28,%rsp
    3657:	5b                   	pop    %rbx
    3658:	41 5c                	pop    %r12
    365a:	41 5d                	pop    %r13
    365c:	5d                   	pop    %rbp
    365d:	c3                   	retq   

000000000000365e <std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> > std::thread::_S_make_state<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >(std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> >&&)>:
      _S_make_state(_Callable&& __f)
    365e:	f3 0f 1e fa          	endbr64 
    3662:	55                   	push   %rbp
    3663:	48 89 e5             	mov    %rsp,%rbp
    3666:	41 54                	push   %r12
    3668:	53                   	push   %rbx
    3669:	48 83 ec 10          	sub    $0x10,%rsp
    366d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3671:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	return _State_ptr{new _Impl{std::forward<_Callable>(__f)}};
    3675:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3679:	48 89 c7             	mov    %rax,%rdi
    367c:	e8 8a 04 00 00       	callq  3b0b <std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> >&& std::forward<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >(std::remove_reference<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >::type&)>
    3681:	49 89 c4             	mov    %rax,%r12
    3684:	bf 18 00 00 00       	mov    $0x18,%edi
    3689:	e8 72 eb ff ff       	callq  2200 <operator new(unsigned long)@plt>
    368e:	48 89 c3             	mov    %rax,%rbx
    3691:	4c 89 e6             	mov    %r12,%rsi
    3694:	48 89 df             	mov    %rbx,%rdi
    3697:	e8 ac 04 00 00       	callq  3b48 <std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >::_State_impl(std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> >&&)>
    369c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    36a0:	48 89 de             	mov    %rbx,%rsi
    36a3:	48 89 c7             	mov    %rax,%rdi
    36a6:	e8 2f 03 00 00       	callq  39da <std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >::unique_ptr<std::default_delete<std::thread::_State>, void>(std::thread::_State*)>
      }
    36ab:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    36af:	48 83 c4 10          	add    $0x10,%rsp
    36b3:	5b                   	pop    %rbx
    36b4:	41 5c                	pop    %r12
    36b6:	5d                   	pop    %rbp
    36b7:	c3                   	retq   

00000000000036b8 <std::chrono::time_point<std::chrono::_V2::steady_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::time_since_epoch() const>:
	time_since_epoch() const
    36b8:	f3 0f 1e fa          	endbr64 
    36bc:	55                   	push   %rbp
    36bd:	48 89 e5             	mov    %rsp,%rbp
    36c0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	{ return __d; }
    36c4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    36c8:	48 8b 00             	mov    (%rax),%rax
    36cb:	5d                   	pop    %rbp
    36cc:	c3                   	retq   

00000000000036cd <std::common_type<std::chrono::duration<long, std::ratio<1l, 1000000000l> >, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::type std::chrono::operator-<long, std::ratio<1l, 1000000000l>, long, std::ratio<1l, 1000000000l> >(std::chrono::duration<long, std::ratio<1l, 1000000000l> > const&, std::chrono::duration<long, std::ratio<1l, 1000000000l> > const&)>:
      operator-(const duration<_Rep1, _Period1>& __lhs,
    36cd:	f3 0f 1e fa          	endbr64 
    36d1:	55                   	push   %rbp
    36d2:	48 89 e5             	mov    %rsp,%rbp
    36d5:	53                   	push   %rbx
    36d6:	48 83 ec 48          	sub    $0x48,%rsp
    36da:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    36de:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    36e2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    36e9:	00 00 
    36eb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    36ef:	31 c0                	xor    %eax,%eax
	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
    36f1:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    36f5:	48 8b 00             	mov    (%rax),%rax
    36f8:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    36fc:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    3700:	48 89 c7             	mov    %rax,%rdi
    3703:	e8 c4 f2 ff ff       	callq  29cc <std::chrono::duration<long, std::ratio<1l, 1000000000l> >::count() const>
    3708:	48 89 c3             	mov    %rax,%rbx
    370b:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    370f:	48 8b 00             	mov    (%rax),%rax
    3712:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    3716:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    371a:	48 89 c7             	mov    %rax,%rdi
    371d:	e8 aa f2 ff ff       	callq  29cc <std::chrono::duration<long, std::ratio<1l, 1000000000l> >::count() const>
    3722:	48 29 c3             	sub    %rax,%rbx
    3725:	48 89 d8             	mov    %rbx,%rax
    3728:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    372c:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
    3730:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    3734:	48 89 d6             	mov    %rdx,%rsi
    3737:	48 89 c7             	mov    %rax,%rdi
    373a:	e8 a3 f2 ff ff       	callq  29e2 <std::chrono::duration<long, std::ratio<1l, 1000000000l> >::duration<long, void>(long const&)>
    373f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
      }
    3743:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    3747:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    374e:	00 00 
    3750:	74 05                	je     3757 <std::common_type<std::chrono::duration<long, std::ratio<1l, 1000000000l> >, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::type std::chrono::operator-<long, std::ratio<1l, 1000000000l>, long, std::ratio<1l, 1000000000l> >(std::chrono::duration<long, std::ratio<1l, 1000000000l> > const&, std::chrono::duration<long, std::ratio<1l, 1000000000l> > const&)+0x8a>
    3752:	e8 d9 ea ff ff       	callq  2230 <__stack_chk_fail@plt>
    3757:	48 83 c4 48          	add    $0x48,%rsp
    375b:	5b                   	pop    %rbx
    375c:	5d                   	pop    %rbp
    375d:	c3                   	retq   

000000000000375e <std::chrono::duration<long, std::ratio<1l, 1000l> > std::chrono::__duration_cast_impl<std::chrono::duration<long, std::ratio<1l, 1000l> >, std::ratio<1l, 1000000l>, long, true, false>::__cast<long, std::ratio<1l, 1000000000l> >(std::chrono::duration<long, std::ratio<1l, 1000000000l> > const&)>:
	  __cast(const duration<_Rep, _Period>& __d)
    375e:	f3 0f 1e fa          	endbr64 
    3762:	55                   	push   %rbp
    3763:	48 89 e5             	mov    %rsp,%rbp
    3766:	48 83 ec 30          	sub    $0x30,%rsp
    376a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    376e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3775:	00 00 
    3777:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    377b:	31 c0                	xor    %eax,%eax
	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
    377d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3781:	48 89 c7             	mov    %rax,%rdi
    3784:	e8 43 f2 ff ff       	callq  29cc <std::chrono::duration<long, std::ratio<1l, 1000000000l> >::count() const>
    3789:	48 89 c1             	mov    %rax,%rcx
    378c:	48 ba db 34 b6 d7 82 	movabs $0x431bde82d7b634db,%rdx
    3793:	de 1b 43 
    3796:	48 89 c8             	mov    %rcx,%rax
    3799:	48 f7 ea             	imul   %rdx
    379c:	48 c1 fa 12          	sar    $0x12,%rdx
    37a0:	48 89 c8             	mov    %rcx,%rax
    37a3:	48 c1 f8 3f          	sar    $0x3f,%rax
    37a7:	48 29 c2             	sub    %rax,%rdx
    37aa:	48 89 d0             	mov    %rdx,%rax
    37ad:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    37b1:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
    37b5:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    37b9:	48 89 d6             	mov    %rdx,%rsi
    37bc:	48 89 c7             	mov    %rax,%rdi
    37bf:	e8 ae f6 ff ff       	callq  2e72 <std::chrono::duration<long, std::ratio<1l, 1000l> >::duration<long, void>(long const&)>
    37c4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
	  }
    37c8:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    37cc:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    37d3:	00 00 
    37d5:	74 05                	je     37dc <std::chrono::duration<long, std::ratio<1l, 1000l> > std::chrono::__duration_cast_impl<std::chrono::duration<long, std::ratio<1l, 1000l> >, std::ratio<1l, 1000000l>, long, true, false>::__cast<long, std::ratio<1l, 1000000000l> >(std::chrono::duration<long, std::ratio<1l, 1000000000l> > const&)+0x7e>
    37d7:	e8 54 ea ff ff       	callq  2230 <__stack_chk_fail@plt>
    37dc:	c9                   	leaveq 
    37dd:	c3                   	retq   

00000000000037de <std::chrono::duration<long, std::ratio<1l, 1000000000l> > std::chrono::__duration_cast_impl<std::chrono::duration<long, std::ratio<1l, 1000000000l> >, std::ratio<1000000l, 1l>, long, false, true>::__cast<long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)>:
	  __cast(const duration<_Rep, _Period>& __d)
    37de:	f3 0f 1e fa          	endbr64 
    37e2:	55                   	push   %rbp
    37e3:	48 89 e5             	mov    %rsp,%rbp
    37e6:	48 83 ec 30          	sub    $0x30,%rsp
    37ea:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    37ee:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    37f5:	00 00 
    37f7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    37fb:	31 c0                	xor    %eax,%eax
	      static_cast<_CR>(__d.count()) * static_cast<_CR>(_CF::num)));
    37fd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3801:	48 89 c7             	mov    %rax,%rdi
    3804:	e8 b3 f5 ff ff       	callq  2dbc <std::chrono::duration<long, std::ratio<1l, 1000l> >::count() const>
    3809:	48 69 c0 40 42 0f 00 	imul   $0xf4240,%rax,%rax
    3810:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3814:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
    3818:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    381c:	48 89 d6             	mov    %rdx,%rsi
    381f:	48 89 c7             	mov    %rax,%rdi
    3822:	e8 bb f1 ff ff       	callq  29e2 <std::chrono::duration<long, std::ratio<1l, 1000000000l> >::duration<long, void>(long const&)>
    3827:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
	  }
    382b:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    382f:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    3836:	00 00 
    3838:	74 05                	je     383f <std::chrono::duration<long, std::ratio<1l, 1000000000l> > std::chrono::__duration_cast_impl<std::chrono::duration<long, std::ratio<1l, 1000000000l> >, std::ratio<1000000l, 1l>, long, false, true>::__cast<long, std::ratio<1l, 1000l> >(std::chrono::duration<long, std::ratio<1l, 1000l> > const&)+0x61>
    383a:	e8 f1 e9 ff ff       	callq  2230 <__stack_chk_fail@plt>
    383f:	c9                   	leaveq 
    3840:	c3                   	retq   
    3841:	90                   	nop

0000000000003842 <std::chrono::duration<long, std::ratio<1l, 1000l> >::duration<long, std::ratio<1l, 1l>, void>(std::chrono::duration<long, std::ratio<1l, 1l> > const&)>:
	  constexpr duration(const duration<_Rep2, _Period2>& __d)
    3842:	f3 0f 1e fa          	endbr64 
    3846:	55                   	push   %rbp
    3847:	48 89 e5             	mov    %rsp,%rbp
    384a:	48 83 ec 20          	sub    $0x20,%rsp
    384e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3852:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    3856:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    385d:	00 00 
    385f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    3863:	31 c0                	xor    %eax,%eax
	  : __r(duration_cast<duration>(__d).count()) { }
    3865:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3869:	48 89 c7             	mov    %rax,%rdi
    386c:	e8 2d 03 00 00       	callq  3b9e <std::enable_if<std::chrono::__is_duration<std::chrono::duration<long, std::ratio<1l, 1000l> > >::value, std::chrono::duration<long, std::ratio<1l, 1000l> > >::type std::chrono::duration_cast<std::chrono::duration<long, std::ratio<1l, 1000l> >, long, std::ratio<1l, 1l> >(std::chrono::duration<long, std::ratio<1l, 1l> > const&)>
    3871:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3875:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    3879:	48 89 c7             	mov    %rax,%rdi
    387c:	e8 3b f5 ff ff       	callq  2dbc <std::chrono::duration<long, std::ratio<1l, 1000l> >::count() const>
    3881:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    3885:	48 89 02             	mov    %rax,(%rdx)
    3888:	90                   	nop
    3889:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    388d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3894:	00 00 
    3896:	74 05                	je     389d <std::chrono::duration<long, std::ratio<1l, 1000l> >::duration<long, std::ratio<1l, 1l>, void>(std::chrono::duration<long, std::ratio<1l, 1l> > const&)+0x5b>
    3898:	e8 93 e9 ff ff       	callq  2230 <__stack_chk_fail@plt>
    389d:	c9                   	leaveq 
    389e:	c3                   	retq   
    389f:	90                   	nop

00000000000038a0 <std::_Tuple_impl<0ul, void (*)(int), int>::_Tuple_impl(std::_Tuple_impl<0ul, void (*)(int), int>&&)>:
      _Tuple_impl(_Tuple_impl&& __in)
    38a0:	f3 0f 1e fa          	endbr64 
    38a4:	55                   	push   %rbp
    38a5:	48 89 e5             	mov    %rsp,%rbp
    38a8:	53                   	push   %rbx
    38a9:	48 83 ec 18          	sub    $0x18,%rsp
    38ad:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    38b1:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	_Base(std::forward<_Head>(_M_head(__in))) { }
    38b5:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
      : _Inherited(std::move(_M_tail(__in))),
    38b9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    38bd:	48 89 c7             	mov    %rax,%rdi
    38c0:	e8 f7 02 00 00       	callq  3bbc <std::_Tuple_impl<0ul, void (*)(int), int>::_M_tail(std::_Tuple_impl<0ul, void (*)(int), int>&)>
    38c5:	48 89 c7             	mov    %rax,%rdi
    38c8:	e8 01 03 00 00       	callq  3bce <std::remove_reference<std::_Tuple_impl<1ul, int>&>::type&& std::move<std::_Tuple_impl<1ul, int>&>(std::_Tuple_impl<1ul, int>&)>
	_Base(std::forward<_Head>(_M_head(__in))) { }
    38cd:	48 89 c6             	mov    %rax,%rsi
    38d0:	48 89 df             	mov    %rbx,%rdi
    38d3:	e8 3c 03 00 00       	callq  3c14 <std::_Tuple_impl<1ul, int>::_Tuple_impl(std::_Tuple_impl<1ul, int>&&)>
    38d8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    38dc:	48 8d 58 08          	lea    0x8(%rax),%rbx
    38e0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    38e4:	48 89 c7             	mov    %rax,%rdi
    38e7:	e8 f4 02 00 00       	callq  3be0 <std::_Tuple_impl<0ul, void (*)(int), int>::_M_head(std::_Tuple_impl<0ul, void (*)(int), int>&)>
    38ec:	48 89 c7             	mov    %rax,%rdi
    38ef:	e8 0e 03 00 00       	callq  3c02 <void (*&&std::forward<void (*)(int)>(std::remove_reference<void (*)(int)>::type&))(int)>
    38f4:	48 89 c6             	mov    %rax,%rsi
    38f7:	48 89 df             	mov    %rbx,%rdi
    38fa:	e8 55 03 00 00       	callq  3c54 <std::_Head_base<0ul, void (*)(int), false>::_Head_base<void (*)(int)>(void (*&&)(int))>
    38ff:	90                   	nop
    3900:	48 83 c4 18          	add    $0x18,%rsp
    3904:	5b                   	pop    %rbx
    3905:	5d                   	pop    %rbp
    3906:	c3                   	retq   
    3907:	90                   	nop

0000000000003908 <std::_Head_base<0ul, void (*)(int), false>::_Head_base(void (* const&)(int))>:
      constexpr _Head_base(const _Head& __h)
    3908:	f3 0f 1e fa          	endbr64 
    390c:	55                   	push   %rbp
    390d:	48 89 e5             	mov    %rsp,%rbp
    3910:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3914:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      : _M_head_impl(__h) { }
    3918:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    391c:	48 8b 10             	mov    (%rax),%rdx
    391f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3923:	48 89 10             	mov    %rdx,(%rax)
    3926:	90                   	nop
    3927:	5d                   	pop    %rbp
    3928:	c3                   	retq   

0000000000003929 <std::thread::_Invoker<std::tuple<void (*)(int), int> >&& std::forward<std::thread::_Invoker<std::tuple<void (*)(int), int> > >(std::remove_reference<std::thread::_Invoker<std::tuple<void (*)(int), int> > >::type&)>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    3929:	f3 0f 1e fa          	endbr64 
    392d:	55                   	push   %rbp
    392e:	48 89 e5             	mov    %rsp,%rbp
    3931:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
    3935:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3939:	5d                   	pop    %rbp
    393a:	c3                   	retq   
    393b:	90                   	nop

000000000000393c <std::thread::_State::_State()>:
    struct _State
    393c:	f3 0f 1e fa          	endbr64 
    3940:	55                   	push   %rbp
    3941:	48 89 e5             	mov    %rsp,%rbp
    3944:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3948:	48 8d 15 41 43 00 00 	lea    0x4341(%rip),%rdx        # 7c90 <vtable for std::thread::_State@@GLIBCXX_3.4.22+0x10>
    394f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3953:	48 89 10             	mov    %rdx,(%rax)
    3956:	90                   	nop
    3957:	5d                   	pop    %rbp
    3958:	c3                   	retq   
    3959:	90                   	nop

000000000000395a <std::thread::_Invoker<std::tuple<void (*)(int), int> >::_Invoker(std::thread::_Invoker<std::tuple<void (*)(int), int> >&&)>:
      struct _Invoker
    395a:	f3 0f 1e fa          	endbr64 
    395e:	55                   	push   %rbp
    395f:	48 89 e5             	mov    %rsp,%rbp
    3962:	48 83 ec 10          	sub    $0x10,%rsp
    3966:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    396a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    396e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3972:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    3976:	48 89 d6             	mov    %rdx,%rsi
    3979:	48 89 c7             	mov    %rax,%rdi
    397c:	e8 e9 f7 ff ff       	callq  316a <std::tuple<void (*)(int), int>::tuple(std::tuple<void (*)(int), int>&&)>
    3981:	90                   	nop
    3982:	c9                   	leaveq 
    3983:	c3                   	retq   

0000000000003984 <std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int), int> > >::_State_impl(std::thread::_Invoker<std::tuple<void (*)(int), int> >&&)>:
	_State_impl(_Callable&& __f) : _M_func(std::forward<_Callable>(__f))
    3984:	f3 0f 1e fa          	endbr64 
    3988:	55                   	push   %rbp
    3989:	48 89 e5             	mov    %rsp,%rbp
    398c:	53                   	push   %rbx
    398d:	48 83 ec 18          	sub    $0x18,%rsp
    3991:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3995:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    3999:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    399d:	48 89 c7             	mov    %rax,%rdi
    39a0:	e8 97 ff ff ff       	callq  393c <std::thread::_State::_State()>
    39a5:	48 8d 15 ac 42 00 00 	lea    0x42ac(%rip),%rdx        # 7c58 <vtable for std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int), int> > >+0x10>
    39ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    39b0:	48 89 10             	mov    %rdx,(%rax)
    39b3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    39b7:	48 8d 58 08          	lea    0x8(%rax),%rbx
    39bb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    39bf:	48 89 c7             	mov    %rax,%rdi
    39c2:	e8 62 ff ff ff       	callq  3929 <std::thread::_Invoker<std::tuple<void (*)(int), int> >&& std::forward<std::thread::_Invoker<std::tuple<void (*)(int), int> > >(std::remove_reference<std::thread::_Invoker<std::tuple<void (*)(int), int> > >::type&)>
    39c7:	48 89 c6             	mov    %rax,%rsi
    39ca:	48 89 df             	mov    %rbx,%rdi
    39cd:	e8 88 ff ff ff       	callq  395a <std::thread::_Invoker<std::tuple<void (*)(int), int> >::_Invoker(std::thread::_Invoker<std::tuple<void (*)(int), int> >&&)>
	{ }
    39d2:	90                   	nop
    39d3:	48 83 c4 18          	add    $0x18,%rsp
    39d7:	5b                   	pop    %rbx
    39d8:	5d                   	pop    %rbp
    39d9:	c3                   	retq   

00000000000039da <std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >::unique_ptr<std::default_delete<std::thread::_State>, void>(std::thread::_State*)>:
	unique_ptr(pointer __p) noexcept
    39da:	f3 0f 1e fa          	endbr64 
    39de:	55                   	push   %rbp
    39df:	48 89 e5             	mov    %rsp,%rbp
    39e2:	48 83 ec 10          	sub    $0x10,%rsp
    39e6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    39ea:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	: _M_t(__p)
    39ee:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    39f2:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    39f6:	48 89 d6             	mov    %rdx,%rsi
    39f9:	48 89 c7             	mov    %rax,%rdi
    39fc:	e8 81 02 00 00       	callq  3c82 <std::__uniq_ptr_impl<std::thread::_State, std::default_delete<std::thread::_State> >::__uniq_ptr_impl(std::thread::_State*)>
        { }
    3a01:	90                   	nop
    3a02:	c9                   	leaveq 
    3a03:	c3                   	retq   

0000000000003a04 <std::__uniq_ptr_impl<std::thread::_State, std::default_delete<std::thread::_State> >::_M_ptr()>:
      pointer&   _M_ptr() { return std::get<0>(_M_t); }
    3a04:	f3 0f 1e fa          	endbr64 
    3a08:	55                   	push   %rbp
    3a09:	48 89 e5             	mov    %rsp,%rbp
    3a0c:	48 83 ec 10          	sub    $0x10,%rsp
    3a10:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3a14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3a18:	48 89 c7             	mov    %rax,%rdi
    3a1b:	e8 98 02 00 00       	callq  3cb8 <std::tuple_element<0ul, std::tuple<std::thread::_State*, std::default_delete<std::thread::_State> > >::type& std::get<0ul, std::thread::_State*, std::default_delete<std::thread::_State> >(std::tuple<std::thread::_State*, std::default_delete<std::thread::_State> >&)>
    3a20:	c9                   	leaveq 
    3a21:	c3                   	retq   

0000000000003a22 <std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >::get_deleter()>:
      get() const noexcept
      { return _M_t._M_ptr(); }

      /// Return a reference to the stored deleter.
      deleter_type&
      get_deleter() noexcept
    3a22:	f3 0f 1e fa          	endbr64 
    3a26:	55                   	push   %rbp
    3a27:	48 89 e5             	mov    %rsp,%rbp
    3a2a:	48 83 ec 10          	sub    $0x10,%rsp
    3a2e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_t._M_deleter(); }
    3a32:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3a36:	48 89 c7             	mov    %rax,%rdi
    3a39:	e8 98 02 00 00       	callq  3cd6 <std::__uniq_ptr_impl<std::thread::_State, std::default_delete<std::thread::_State> >::_M_deleter()>
    3a3e:	c9                   	leaveq 
    3a3f:	c3                   	retq   

0000000000003a40 <std::remove_reference<std::thread::_State*&>::type&& std::move<std::thread::_State*&>(std::thread::_State*&)>:
   *  @param  __t  A thing of arbitrary type.
   *  @return The parameter cast to an rvalue-reference to allow moving it.
  */
  template<typename _Tp>
    constexpr typename std::remove_reference<_Tp>::type&&
    move(_Tp&& __t) noexcept
    3a40:	f3 0f 1e fa          	endbr64 
    3a44:	55                   	push   %rbp
    3a45:	48 89 e5             	mov    %rsp,%rbp
    3a48:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
    3a4c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3a50:	5d                   	pop    %rbp
    3a51:	c3                   	retq   

0000000000003a52 <std::default_delete<std::thread::_State>::operator()(std::thread::_State*) const>:
      operator()(_Tp* __ptr) const
    3a52:	f3 0f 1e fa          	endbr64 
    3a56:	55                   	push   %rbp
    3a57:	48 89 e5             	mov    %rsp,%rbp
    3a5a:	48 83 ec 10          	sub    $0x10,%rsp
    3a5e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3a62:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	delete __ptr;
    3a66:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3a6a:	48 85 c0             	test   %rax,%rax
    3a6d:	74 0f                	je     3a7e <std::default_delete<std::thread::_State>::operator()(std::thread::_State*) const+0x2c>
    3a6f:	48 8b 10             	mov    (%rax),%rdx
    3a72:	48 83 c2 08          	add    $0x8,%rdx
    3a76:	48 8b 12             	mov    (%rdx),%rdx
    3a79:	48 89 c7             	mov    %rax,%rdi
    3a7c:	ff d2                	callq  *%rdx
      }
    3a7e:	90                   	nop
    3a7f:	c9                   	leaveq 
    3a80:	c3                   	retq   
    3a81:	90                   	nop

0000000000003a82 <std::_Tuple_impl<0ul, void (*)(int, int), int, int>::_Tuple_impl(std::_Tuple_impl<0ul, void (*)(int, int), int, int>&&)>:
      _Tuple_impl(_Tuple_impl&& __in)
    3a82:	f3 0f 1e fa          	endbr64 
    3a86:	55                   	push   %rbp
    3a87:	48 89 e5             	mov    %rsp,%rbp
    3a8a:	53                   	push   %rbx
    3a8b:	48 83 ec 18          	sub    $0x18,%rsp
    3a8f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3a93:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	_Base(std::forward<_Head>(_M_head(__in))) { }
    3a97:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
      : _Inherited(std::move(_M_tail(__in))),
    3a9b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3a9f:	48 89 c7             	mov    %rax,%rdi
    3aa2:	e8 4d 02 00 00       	callq  3cf4 <std::_Tuple_impl<0ul, void (*)(int, int), int, int>::_M_tail(std::_Tuple_impl<0ul, void (*)(int, int), int, int>&)>
    3aa7:	48 89 c7             	mov    %rax,%rdi
    3aaa:	e8 57 02 00 00       	callq  3d06 <std::remove_reference<std::_Tuple_impl<1ul, int, int>&>::type&& std::move<std::_Tuple_impl<1ul, int, int>&>(std::_Tuple_impl<1ul, int, int>&)>
	_Base(std::forward<_Head>(_M_head(__in))) { }
    3aaf:	48 89 c6             	mov    %rax,%rsi
    3ab2:	48 89 df             	mov    %rbx,%rdi
    3ab5:	e8 92 02 00 00       	callq  3d4c <std::_Tuple_impl<1ul, int, int>::_Tuple_impl(std::_Tuple_impl<1ul, int, int>&&)>
    3aba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3abe:	48 8d 58 08          	lea    0x8(%rax),%rbx
    3ac2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3ac6:	48 89 c7             	mov    %rax,%rdi
    3ac9:	e8 4a 02 00 00       	callq  3d18 <std::_Tuple_impl<0ul, void (*)(int, int), int, int>::_M_head(std::_Tuple_impl<0ul, void (*)(int, int), int, int>&)>
    3ace:	48 89 c7             	mov    %rax,%rdi
    3ad1:	e8 64 02 00 00       	callq  3d3a <void (*&&std::forward<void (*)(int, int)>(std::remove_reference<void (*)(int, int)>::type&))(int, int)>
    3ad6:	48 89 c6             	mov    %rax,%rsi
    3ad9:	48 89 df             	mov    %rbx,%rdi
    3adc:	e8 d3 02 00 00       	callq  3db4 <std::_Head_base<0ul, void (*)(int, int), false>::_Head_base<void (*)(int, int)>(void (*&&)(int, int))>
    3ae1:	90                   	nop
    3ae2:	48 83 c4 18          	add    $0x18,%rsp
    3ae6:	5b                   	pop    %rbx
    3ae7:	5d                   	pop    %rbp
    3ae8:	c3                   	retq   
    3ae9:	90                   	nop

0000000000003aea <std::_Head_base<0ul, void (*)(int, int), false>::_Head_base(void (* const&)(int, int))>:
      constexpr _Head_base(const _Head& __h)
    3aea:	f3 0f 1e fa          	endbr64 
    3aee:	55                   	push   %rbp
    3aef:	48 89 e5             	mov    %rsp,%rbp
    3af2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3af6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      : _M_head_impl(__h) { }
    3afa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3afe:	48 8b 10             	mov    (%rax),%rdx
    3b01:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3b05:	48 89 10             	mov    %rdx,(%rax)
    3b08:	90                   	nop
    3b09:	5d                   	pop    %rbp
    3b0a:	c3                   	retq   

0000000000003b0b <std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> >&& std::forward<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >(std::remove_reference<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >::type&)>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    3b0b:	f3 0f 1e fa          	endbr64 
    3b0f:	55                   	push   %rbp
    3b10:	48 89 e5             	mov    %rsp,%rbp
    3b13:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
    3b17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3b1b:	5d                   	pop    %rbp
    3b1c:	c3                   	retq   
    3b1d:	90                   	nop

0000000000003b1e <std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> >::_Invoker(std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> >&&)>:
      struct _Invoker
    3b1e:	f3 0f 1e fa          	endbr64 
    3b22:	55                   	push   %rbp
    3b23:	48 89 e5             	mov    %rsp,%rbp
    3b26:	48 83 ec 10          	sub    $0x10,%rsp
    3b2a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3b2e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    3b32:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3b36:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    3b3a:	48 89 d6             	mov    %rdx,%rsi
    3b3d:	48 89 c7             	mov    %rax,%rdi
    3b40:	e8 b5 f8 ff ff       	callq  33fa <std::tuple<void (*)(int, int), int, int>::tuple(std::tuple<void (*)(int, int), int, int>&&)>
    3b45:	90                   	nop
    3b46:	c9                   	leaveq 
    3b47:	c3                   	retq   

0000000000003b48 <std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >::_State_impl(std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> >&&)>:
	_State_impl(_Callable&& __f) : _M_func(std::forward<_Callable>(__f))
    3b48:	f3 0f 1e fa          	endbr64 
    3b4c:	55                   	push   %rbp
    3b4d:	48 89 e5             	mov    %rsp,%rbp
    3b50:	53                   	push   %rbx
    3b51:	48 83 ec 18          	sub    $0x18,%rsp
    3b55:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3b59:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    3b5d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3b61:	48 89 c7             	mov    %rax,%rdi
    3b64:	e8 d3 fd ff ff       	callq  393c <std::thread::_State::_State()>
    3b69:	48 8d 15 c0 40 00 00 	lea    0x40c0(%rip),%rdx        # 7c30 <vtable for std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >+0x10>
    3b70:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3b74:	48 89 10             	mov    %rdx,(%rax)
    3b77:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3b7b:	48 8d 58 08          	lea    0x8(%rax),%rbx
    3b7f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3b83:	48 89 c7             	mov    %rax,%rdi
    3b86:	e8 80 ff ff ff       	callq  3b0b <std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> >&& std::forward<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >(std::remove_reference<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >::type&)>
    3b8b:	48 89 c6             	mov    %rax,%rsi
    3b8e:	48 89 df             	mov    %rbx,%rdi
    3b91:	e8 88 ff ff ff       	callq  3b1e <std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> >::_Invoker(std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> >&&)>
	{ }
    3b96:	90                   	nop
    3b97:	48 83 c4 18          	add    $0x18,%rsp
    3b9b:	5b                   	pop    %rbx
    3b9c:	5d                   	pop    %rbp
    3b9d:	c3                   	retq   

0000000000003b9e <std::enable_if<std::chrono::__is_duration<std::chrono::duration<long, std::ratio<1l, 1000l> > >::value, std::chrono::duration<long, std::ratio<1l, 1000l> > >::type std::chrono::duration_cast<std::chrono::duration<long, std::ratio<1l, 1000l> >, long, std::ratio<1l, 1l> >(std::chrono::duration<long, std::ratio<1l, 1l> > const&)>:
      duration_cast(const duration<_Rep, _Period>& __d)
    3b9e:	f3 0f 1e fa          	endbr64 
    3ba2:	55                   	push   %rbp
    3ba3:	48 89 e5             	mov    %rsp,%rbp
    3ba6:	48 83 ec 10          	sub    $0x10,%rsp
    3baa:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	return __dc::__cast(__d);
    3bae:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3bb2:	48 89 c7             	mov    %rax,%rdi
    3bb5:	e8 27 02 00 00       	callq  3de1 <std::chrono::duration<long, std::ratio<1l, 1000l> > std::chrono::__duration_cast_impl<std::chrono::duration<long, std::ratio<1l, 1000l> >, std::ratio<1000l, 1l>, long, false, true>::__cast<long, std::ratio<1l, 1l> >(std::chrono::duration<long, std::ratio<1l, 1l> > const&)>
      }
    3bba:	c9                   	leaveq 
    3bbb:	c3                   	retq   

0000000000003bbc <std::_Tuple_impl<0ul, void (*)(int), int>::_M_tail(std::_Tuple_impl<0ul, void (*)(int), int>&)>:
      _M_tail(_Tuple_impl& __t) noexcept { return __t; }
    3bbc:	f3 0f 1e fa          	endbr64 
    3bc0:	55                   	push   %rbp
    3bc1:	48 89 e5             	mov    %rsp,%rbp
    3bc4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3bc8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3bcc:	5d                   	pop    %rbp
    3bcd:	c3                   	retq   

0000000000003bce <std::remove_reference<std::_Tuple_impl<1ul, int>&>::type&& std::move<std::_Tuple_impl<1ul, int>&>(std::_Tuple_impl<1ul, int>&)>:
    move(_Tp&& __t) noexcept
    3bce:	f3 0f 1e fa          	endbr64 
    3bd2:	55                   	push   %rbp
    3bd3:	48 89 e5             	mov    %rsp,%rbp
    3bd6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
    3bda:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3bde:	5d                   	pop    %rbp
    3bdf:	c3                   	retq   

0000000000003be0 <std::_Tuple_impl<0ul, void (*)(int), int>::_M_head(std::_Tuple_impl<0ul, void (*)(int), int>&)>:
      _M_head(_Tuple_impl& __t) noexcept { return _Base::_M_head(__t); }
    3be0:	f3 0f 1e fa          	endbr64 
    3be4:	55                   	push   %rbp
    3be5:	48 89 e5             	mov    %rsp,%rbp
    3be8:	48 83 ec 10          	sub    $0x10,%rsp
    3bec:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3bf0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3bf4:	48 83 c0 08          	add    $0x8,%rax
    3bf8:	48 89 c7             	mov    %rax,%rdi
    3bfb:	e8 44 02 00 00       	callq  3e44 <std::_Head_base<0ul, void (*)(int), false>::_M_head(std::_Head_base<0ul, void (*)(int), false>&)>
    3c00:	c9                   	leaveq 
    3c01:	c3                   	retq   

0000000000003c02 <void (*&&std::forward<void (*)(int)>(std::remove_reference<void (*)(int)>::type&))(int)>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    3c02:	f3 0f 1e fa          	endbr64 
    3c06:	55                   	push   %rbp
    3c07:	48 89 e5             	mov    %rsp,%rbp
    3c0a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
    3c0e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3c12:	5d                   	pop    %rbp
    3c13:	c3                   	retq   

0000000000003c14 <std::_Tuple_impl<1ul, int>::_Tuple_impl(std::_Tuple_impl<1ul, int>&&)>:
      _Tuple_impl(_Tuple_impl&& __in)
    3c14:	f3 0f 1e fa          	endbr64 
    3c18:	55                   	push   %rbp
    3c19:	48 89 e5             	mov    %rsp,%rbp
    3c1c:	53                   	push   %rbx
    3c1d:	48 83 ec 18          	sub    $0x18,%rsp
    3c21:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3c25:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
      : _Base(std::forward<_Head>(_M_head(__in))) { }
    3c29:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    3c2d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3c31:	48 89 c7             	mov    %rax,%rdi
    3c34:	e8 1d 02 00 00       	callq  3e56 <std::_Tuple_impl<1ul, int>::_M_head(std::_Tuple_impl<1ul, int>&)>
    3c39:	48 89 c7             	mov    %rax,%rdi
    3c3c:	e8 16 f5 ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    3c41:	48 89 c6             	mov    %rax,%rsi
    3c44:	48 89 df             	mov    %rbx,%rdi
    3c47:	e8 58 f6 ff ff       	callq  32a4 <std::_Head_base<1ul, int, false>::_Head_base<int>(int&&)>
    3c4c:	90                   	nop
    3c4d:	48 83 c4 18          	add    $0x18,%rsp
    3c51:	5b                   	pop    %rbx
    3c52:	5d                   	pop    %rbp
    3c53:	c3                   	retq   

0000000000003c54 <std::_Head_base<0ul, void (*)(int), false>::_Head_base<void (*)(int)>(void (*&&)(int))>:
        constexpr _Head_base(_UHead&& __h)
    3c54:	f3 0f 1e fa          	endbr64 
    3c58:	55                   	push   %rbp
    3c59:	48 89 e5             	mov    %rsp,%rbp
    3c5c:	48 83 ec 10          	sub    $0x10,%rsp
    3c60:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3c64:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	: _M_head_impl(std::forward<_UHead>(__h)) { }
    3c68:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3c6c:	48 89 c7             	mov    %rax,%rdi
    3c6f:	e8 8e ff ff ff       	callq  3c02 <void (*&&std::forward<void (*)(int)>(std::remove_reference<void (*)(int)>::type&))(int)>
    3c74:	48 8b 10             	mov    (%rax),%rdx
    3c77:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3c7b:	48 89 10             	mov    %rdx,(%rax)
    3c7e:	90                   	nop
    3c7f:	c9                   	leaveq 
    3c80:	c3                   	retq   
    3c81:	90                   	nop

0000000000003c82 <std::__uniq_ptr_impl<std::thread::_State, std::default_delete<std::thread::_State> >::__uniq_ptr_impl(std::thread::_State*)>:
      __uniq_ptr_impl(pointer __p) : _M_t() { _M_ptr() = __p; }
    3c82:	f3 0f 1e fa          	endbr64 
    3c86:	55                   	push   %rbp
    3c87:	48 89 e5             	mov    %rsp,%rbp
    3c8a:	48 83 ec 10          	sub    $0x10,%rsp
    3c8e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3c92:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    3c96:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3c9a:	48 89 c7             	mov    %rax,%rdi
    3c9d:	e8 d2 01 00 00       	callq  3e74 <std::tuple<std::thread::_State*, std::default_delete<std::thread::_State> >::tuple<std::thread::_State*, std::default_delete<std::thread::_State>, true>()>
    3ca2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3ca6:	48 89 c7             	mov    %rax,%rdi
    3ca9:	e8 56 fd ff ff       	callq  3a04 <std::__uniq_ptr_impl<std::thread::_State, std::default_delete<std::thread::_State> >::_M_ptr()>
    3cae:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    3cb2:	48 89 10             	mov    %rdx,(%rax)
    3cb5:	90                   	nop
    3cb6:	c9                   	leaveq 
    3cb7:	c3                   	retq   

0000000000003cb8 <std::tuple_element<0ul, std::tuple<std::thread::_State*, std::default_delete<std::thread::_State> > >::type& std::get<0ul, std::thread::_State*, std::default_delete<std::thread::_State> >(std::tuple<std::thread::_State*, std::default_delete<std::thread::_State> >&)>:
    { return _Tuple_impl<__i, _Head, _Tail...>::_M_head(__t); }

  /// Return a reference to the ith element of a tuple.
  template<std::size_t __i, typename... _Elements>
    constexpr __tuple_element_t<__i, tuple<_Elements...>>&
    get(tuple<_Elements...>& __t) noexcept
    3cb8:	f3 0f 1e fa          	endbr64 
    3cbc:	55                   	push   %rbp
    3cbd:	48 89 e5             	mov    %rsp,%rbp
    3cc0:	48 83 ec 10          	sub    $0x10,%rsp
    3cc4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return std::__get_helper<__i>(__t); }
    3cc8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3ccc:	48 89 c7             	mov    %rax,%rdi
    3ccf:	e8 bf 01 00 00       	callq  3e93 <std::thread::_State*& std::__get_helper<0ul, std::thread::_State*, std::default_delete<std::thread::_State> >(std::_Tuple_impl<0ul, std::thread::_State*, std::default_delete<std::thread::_State> >&)>
    3cd4:	c9                   	leaveq 
    3cd5:	c3                   	retq   

0000000000003cd6 <std::__uniq_ptr_impl<std::thread::_State, std::default_delete<std::thread::_State> >::_M_deleter()>:
      _Dp&       _M_deleter() { return std::get<1>(_M_t); }
    3cd6:	f3 0f 1e fa          	endbr64 
    3cda:	55                   	push   %rbp
    3cdb:	48 89 e5             	mov    %rsp,%rbp
    3cde:	48 83 ec 10          	sub    $0x10,%rsp
    3ce2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3ce6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3cea:	48 89 c7             	mov    %rax,%rdi
    3ced:	e8 bf 01 00 00       	callq  3eb1 <std::tuple_element<1ul, std::tuple<std::thread::_State*, std::default_delete<std::thread::_State> > >::type& std::get<1ul, std::thread::_State*, std::default_delete<std::thread::_State> >(std::tuple<std::thread::_State*, std::default_delete<std::thread::_State> >&)>
    3cf2:	c9                   	leaveq 
    3cf3:	c3                   	retq   

0000000000003cf4 <std::_Tuple_impl<0ul, void (*)(int, int), int, int>::_M_tail(std::_Tuple_impl<0ul, void (*)(int, int), int, int>&)>:
      _M_tail(_Tuple_impl& __t) noexcept { return __t; }
    3cf4:	f3 0f 1e fa          	endbr64 
    3cf8:	55                   	push   %rbp
    3cf9:	48 89 e5             	mov    %rsp,%rbp
    3cfc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3d00:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3d04:	5d                   	pop    %rbp
    3d05:	c3                   	retq   

0000000000003d06 <std::remove_reference<std::_Tuple_impl<1ul, int, int>&>::type&& std::move<std::_Tuple_impl<1ul, int, int>&>(std::_Tuple_impl<1ul, int, int>&)>:
    move(_Tp&& __t) noexcept
    3d06:	f3 0f 1e fa          	endbr64 
    3d0a:	55                   	push   %rbp
    3d0b:	48 89 e5             	mov    %rsp,%rbp
    3d0e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
    3d12:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3d16:	5d                   	pop    %rbp
    3d17:	c3                   	retq   

0000000000003d18 <std::_Tuple_impl<0ul, void (*)(int, int), int, int>::_M_head(std::_Tuple_impl<0ul, void (*)(int, int), int, int>&)>:
      _M_head(_Tuple_impl& __t) noexcept { return _Base::_M_head(__t); }
    3d18:	f3 0f 1e fa          	endbr64 
    3d1c:	55                   	push   %rbp
    3d1d:	48 89 e5             	mov    %rsp,%rbp
    3d20:	48 83 ec 10          	sub    $0x10,%rsp
    3d24:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3d28:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3d2c:	48 83 c0 08          	add    $0x8,%rax
    3d30:	48 89 c7             	mov    %rax,%rdi
    3d33:	e8 97 01 00 00       	callq  3ecf <std::_Head_base<0ul, void (*)(int, int), false>::_M_head(std::_Head_base<0ul, void (*)(int, int), false>&)>
    3d38:	c9                   	leaveq 
    3d39:	c3                   	retq   

0000000000003d3a <void (*&&std::forward<void (*)(int, int)>(std::remove_reference<void (*)(int, int)>::type&))(int, int)>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    3d3a:	f3 0f 1e fa          	endbr64 
    3d3e:	55                   	push   %rbp
    3d3f:	48 89 e5             	mov    %rsp,%rbp
    3d42:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
    3d46:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3d4a:	5d                   	pop    %rbp
    3d4b:	c3                   	retq   

0000000000003d4c <std::_Tuple_impl<1ul, int, int>::_Tuple_impl(std::_Tuple_impl<1ul, int, int>&&)>:
      _Tuple_impl(_Tuple_impl&& __in)
    3d4c:	f3 0f 1e fa          	endbr64 
    3d50:	55                   	push   %rbp
    3d51:	48 89 e5             	mov    %rsp,%rbp
    3d54:	53                   	push   %rbx
    3d55:	48 83 ec 18          	sub    $0x18,%rsp
    3d59:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3d5d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	_Base(std::forward<_Head>(_M_head(__in))) { }
    3d61:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
      : _Inherited(std::move(_M_tail(__in))),
    3d65:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3d69:	48 89 c7             	mov    %rax,%rdi
    3d6c:	e8 70 01 00 00       	callq  3ee1 <std::_Tuple_impl<1ul, int, int>::_M_tail(std::_Tuple_impl<1ul, int, int>&)>
    3d71:	48 89 c7             	mov    %rax,%rdi
    3d74:	e8 7a 01 00 00       	callq  3ef3 <std::remove_reference<std::_Tuple_impl<2ul, int>&>::type&& std::move<std::_Tuple_impl<2ul, int>&>(std::_Tuple_impl<2ul, int>&)>
	_Base(std::forward<_Head>(_M_head(__in))) { }
    3d79:	48 89 c6             	mov    %rax,%rsi
    3d7c:	48 89 df             	mov    %rbx,%rdi
    3d7f:	e8 a4 01 00 00       	callq  3f28 <std::_Tuple_impl<2ul, int>::_Tuple_impl(std::_Tuple_impl<2ul, int>&&)>
    3d84:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3d88:	48 8d 58 04          	lea    0x4(%rax),%rbx
    3d8c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3d90:	48 89 c7             	mov    %rax,%rdi
    3d93:	e8 6d 01 00 00       	callq  3f05 <std::_Tuple_impl<1ul, int, int>::_M_head(std::_Tuple_impl<1ul, int, int>&)>
    3d98:	48 89 c7             	mov    %rax,%rdi
    3d9b:	e8 b7 f3 ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    3da0:	48 89 c6             	mov    %rax,%rsi
    3da3:	48 89 df             	mov    %rbx,%rdi
    3da6:	e8 f9 f4 ff ff       	callq  32a4 <std::_Head_base<1ul, int, false>::_Head_base<int>(int&&)>
    3dab:	90                   	nop
    3dac:	48 83 c4 18          	add    $0x18,%rsp
    3db0:	5b                   	pop    %rbx
    3db1:	5d                   	pop    %rbp
    3db2:	c3                   	retq   
    3db3:	90                   	nop

0000000000003db4 <std::_Head_base<0ul, void (*)(int, int), false>::_Head_base<void (*)(int, int)>(void (*&&)(int, int))>:
        constexpr _Head_base(_UHead&& __h)
    3db4:	f3 0f 1e fa          	endbr64 
    3db8:	55                   	push   %rbp
    3db9:	48 89 e5             	mov    %rsp,%rbp
    3dbc:	48 83 ec 10          	sub    $0x10,%rsp
    3dc0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3dc4:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	: _M_head_impl(std::forward<_UHead>(__h)) { }
    3dc8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3dcc:	48 89 c7             	mov    %rax,%rdi
    3dcf:	e8 66 ff ff ff       	callq  3d3a <void (*&&std::forward<void (*)(int, int)>(std::remove_reference<void (*)(int, int)>::type&))(int, int)>
    3dd4:	48 8b 10             	mov    (%rax),%rdx
    3dd7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3ddb:	48 89 10             	mov    %rdx,(%rax)
    3dde:	90                   	nop
    3ddf:	c9                   	leaveq 
    3de0:	c3                   	retq   

0000000000003de1 <std::chrono::duration<long, std::ratio<1l, 1000l> > std::chrono::__duration_cast_impl<std::chrono::duration<long, std::ratio<1l, 1000l> >, std::ratio<1000l, 1l>, long, false, true>::__cast<long, std::ratio<1l, 1l> >(std::chrono::duration<long, std::ratio<1l, 1l> > const&)>:
	  __cast(const duration<_Rep, _Period>& __d)
    3de1:	f3 0f 1e fa          	endbr64 
    3de5:	55                   	push   %rbp
    3de6:	48 89 e5             	mov    %rsp,%rbp
    3de9:	48 83 ec 30          	sub    $0x30,%rsp
    3ded:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    3df1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3df8:	00 00 
    3dfa:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    3dfe:	31 c0                	xor    %eax,%eax
	      static_cast<_CR>(__d.count()) * static_cast<_CR>(_CF::num)));
    3e00:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3e04:	48 89 c7             	mov    %rax,%rdi
    3e07:	e8 14 ed ff ff       	callq  2b20 <std::chrono::duration<long, std::ratio<1l, 1l> >::count() const>
    3e0c:	48 69 c0 e8 03 00 00 	imul   $0x3e8,%rax,%rax
    3e13:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3e17:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
    3e1b:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    3e1f:	48 89 d6             	mov    %rdx,%rsi
    3e22:	48 89 c7             	mov    %rax,%rdi
    3e25:	e8 48 f0 ff ff       	callq  2e72 <std::chrono::duration<long, std::ratio<1l, 1000l> >::duration<long, void>(long const&)>
    3e2a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
	  }
    3e2e:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    3e32:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    3e39:	00 00 
    3e3b:	74 05                	je     3e42 <std::chrono::duration<long, std::ratio<1l, 1000l> > std::chrono::__duration_cast_impl<std::chrono::duration<long, std::ratio<1l, 1000l> >, std::ratio<1000l, 1l>, long, false, true>::__cast<long, std::ratio<1l, 1l> >(std::chrono::duration<long, std::ratio<1l, 1l> > const&)+0x61>
    3e3d:	e8 ee e3 ff ff       	callq  2230 <__stack_chk_fail@plt>
    3e42:	c9                   	leaveq 
    3e43:	c3                   	retq   

0000000000003e44 <std::_Head_base<0ul, void (*)(int), false>::_M_head(std::_Head_base<0ul, void (*)(int), false>&)>:
      _M_head(_Head_base& __b) noexcept { return __b._M_head_impl; }
    3e44:	f3 0f 1e fa          	endbr64 
    3e48:	55                   	push   %rbp
    3e49:	48 89 e5             	mov    %rsp,%rbp
    3e4c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3e50:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3e54:	5d                   	pop    %rbp
    3e55:	c3                   	retq   

0000000000003e56 <std::_Tuple_impl<1ul, int>::_M_head(std::_Tuple_impl<1ul, int>&)>:
      _M_head(_Tuple_impl& __t) noexcept { return _Base::_M_head(__t); }
    3e56:	f3 0f 1e fa          	endbr64 
    3e5a:	55                   	push   %rbp
    3e5b:	48 89 e5             	mov    %rsp,%rbp
    3e5e:	48 83 ec 10          	sub    $0x10,%rsp
    3e62:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3e66:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3e6a:	48 89 c7             	mov    %rax,%rdi
    3e6d:	e8 f6 00 00 00       	callq  3f68 <std::_Head_base<1ul, int, false>::_M_head(std::_Head_base<1ul, int, false>&)>
    3e72:	c9                   	leaveq 
    3e73:	c3                   	retq   

0000000000003e74 <std::tuple<std::thread::_State*, std::default_delete<std::thread::_State> >::tuple<std::thread::_State*, std::default_delete<std::thread::_State>, true>()>:
	constexpr tuple()
    3e74:	f3 0f 1e fa          	endbr64 
    3e78:	55                   	push   %rbp
    3e79:	48 89 e5             	mov    %rsp,%rbp
    3e7c:	48 83 ec 10          	sub    $0x10,%rsp
    3e80:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	: _Inherited() { }
    3e84:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3e88:	48 89 c7             	mov    %rax,%rdi
    3e8b:	e8 ea 00 00 00       	callq  3f7a <std::_Tuple_impl<0ul, std::thread::_State*, std::default_delete<std::thread::_State> >::_Tuple_impl()>
    3e90:	90                   	nop
    3e91:	c9                   	leaveq 
    3e92:	c3                   	retq   

0000000000003e93 <std::thread::_State*& std::__get_helper<0ul, std::thread::_State*, std::default_delete<std::thread::_State> >(std::_Tuple_impl<0ul, std::thread::_State*, std::default_delete<std::thread::_State> >&)>:
    __get_helper(_Tuple_impl<__i, _Head, _Tail...>& __t) noexcept
    3e93:	f3 0f 1e fa          	endbr64 
    3e97:	55                   	push   %rbp
    3e98:	48 89 e5             	mov    %rsp,%rbp
    3e9b:	48 83 ec 10          	sub    $0x10,%rsp
    3e9f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return _Tuple_impl<__i, _Head, _Tail...>::_M_head(__t); }
    3ea3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3ea7:	48 89 c7             	mov    %rax,%rdi
    3eaa:	e8 f6 00 00 00       	callq  3fa5 <std::_Tuple_impl<0ul, std::thread::_State*, std::default_delete<std::thread::_State> >::_M_head(std::_Tuple_impl<0ul, std::thread::_State*, std::default_delete<std::thread::_State> >&)>
    3eaf:	c9                   	leaveq 
    3eb0:	c3                   	retq   

0000000000003eb1 <std::tuple_element<1ul, std::tuple<std::thread::_State*, std::default_delete<std::thread::_State> > >::type& std::get<1ul, std::thread::_State*, std::default_delete<std::thread::_State> >(std::tuple<std::thread::_State*, std::default_delete<std::thread::_State> >&)>:
    get(tuple<_Elements...>& __t) noexcept
    3eb1:	f3 0f 1e fa          	endbr64 
    3eb5:	55                   	push   %rbp
    3eb6:	48 89 e5             	mov    %rsp,%rbp
    3eb9:	48 83 ec 10          	sub    $0x10,%rsp
    3ebd:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return std::__get_helper<__i>(__t); }
    3ec1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3ec5:	48 89 c7             	mov    %rax,%rdi
    3ec8:	e8 f6 00 00 00       	callq  3fc3 <std::default_delete<std::thread::_State>& std::__get_helper<1ul, std::default_delete<std::thread::_State>>(std::_Tuple_impl<1ul, std::default_delete<std::thread::_State>>&)>
    3ecd:	c9                   	leaveq 
    3ece:	c3                   	retq   

0000000000003ecf <std::_Head_base<0ul, void (*)(int, int), false>::_M_head(std::_Head_base<0ul, void (*)(int, int), false>&)>:
      _M_head(_Head_base& __b) noexcept { return __b._M_head_impl; }
    3ecf:	f3 0f 1e fa          	endbr64 
    3ed3:	55                   	push   %rbp
    3ed4:	48 89 e5             	mov    %rsp,%rbp
    3ed7:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3edb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3edf:	5d                   	pop    %rbp
    3ee0:	c3                   	retq   

0000000000003ee1 <std::_Tuple_impl<1ul, int, int>::_M_tail(std::_Tuple_impl<1ul, int, int>&)>:
      _M_tail(_Tuple_impl& __t) noexcept { return __t; }
    3ee1:	f3 0f 1e fa          	endbr64 
    3ee5:	55                   	push   %rbp
    3ee6:	48 89 e5             	mov    %rsp,%rbp
    3ee9:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3eed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3ef1:	5d                   	pop    %rbp
    3ef2:	c3                   	retq   

0000000000003ef3 <std::remove_reference<std::_Tuple_impl<2ul, int>&>::type&& std::move<std::_Tuple_impl<2ul, int>&>(std::_Tuple_impl<2ul, int>&)>:
    move(_Tp&& __t) noexcept
    3ef3:	f3 0f 1e fa          	endbr64 
    3ef7:	55                   	push   %rbp
    3ef8:	48 89 e5             	mov    %rsp,%rbp
    3efb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
    3eff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f03:	5d                   	pop    %rbp
    3f04:	c3                   	retq   

0000000000003f05 <std::_Tuple_impl<1ul, int, int>::_M_head(std::_Tuple_impl<1ul, int, int>&)>:
      _M_head(_Tuple_impl& __t) noexcept { return _Base::_M_head(__t); }
    3f05:	f3 0f 1e fa          	endbr64 
    3f09:	55                   	push   %rbp
    3f0a:	48 89 e5             	mov    %rsp,%rbp
    3f0d:	48 83 ec 10          	sub    $0x10,%rsp
    3f11:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3f15:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f19:	48 83 c0 04          	add    $0x4,%rax
    3f1d:	48 89 c7             	mov    %rax,%rdi
    3f20:	e8 43 00 00 00       	callq  3f68 <std::_Head_base<1ul, int, false>::_M_head(std::_Head_base<1ul, int, false>&)>
    3f25:	c9                   	leaveq 
    3f26:	c3                   	retq   
    3f27:	90                   	nop

0000000000003f28 <std::_Tuple_impl<2ul, int>::_Tuple_impl(std::_Tuple_impl<2ul, int>&&)>:
      _Tuple_impl(_Tuple_impl&& __in)
    3f28:	f3 0f 1e fa          	endbr64 
    3f2c:	55                   	push   %rbp
    3f2d:	48 89 e5             	mov    %rsp,%rbp
    3f30:	53                   	push   %rbx
    3f31:	48 83 ec 18          	sub    $0x18,%rsp
    3f35:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3f39:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
      : _Base(std::forward<_Head>(_M_head(__in))) { }
    3f3d:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    3f41:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3f45:	48 89 c7             	mov    %rax,%rdi
    3f48:	e8 94 00 00 00       	callq  3fe1 <std::_Tuple_impl<2ul, int>::_M_head(std::_Tuple_impl<2ul, int>&)>
    3f4d:	48 89 c7             	mov    %rax,%rdi
    3f50:	e8 02 f2 ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    3f55:	48 89 c6             	mov    %rax,%rsi
    3f58:	48 89 df             	mov    %rbx,%rdi
    3f5b:	e8 64 f6 ff ff       	callq  35c4 <std::_Head_base<2ul, int, false>::_Head_base<int>(int&&)>
    3f60:	90                   	nop
    3f61:	48 83 c4 18          	add    $0x18,%rsp
    3f65:	5b                   	pop    %rbx
    3f66:	5d                   	pop    %rbp
    3f67:	c3                   	retq   

0000000000003f68 <std::_Head_base<1ul, int, false>::_M_head(std::_Head_base<1ul, int, false>&)>:
      _M_head(_Head_base& __b) noexcept { return __b._M_head_impl; }
    3f68:	f3 0f 1e fa          	endbr64 
    3f6c:	55                   	push   %rbp
    3f6d:	48 89 e5             	mov    %rsp,%rbp
    3f70:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3f74:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f78:	5d                   	pop    %rbp
    3f79:	c3                   	retq   

0000000000003f7a <std::_Tuple_impl<0ul, std::thread::_State*, std::default_delete<std::thread::_State> >::_Tuple_impl()>:
      constexpr _Tuple_impl()
    3f7a:	f3 0f 1e fa          	endbr64 
    3f7e:	55                   	push   %rbp
    3f7f:	48 89 e5             	mov    %rsp,%rbp
    3f82:	48 83 ec 10          	sub    $0x10,%rsp
    3f86:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      : _Inherited(), _Base() { }
    3f8a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f8e:	48 89 c7             	mov    %rax,%rdi
    3f91:	e8 6a 00 00 00       	callq  4000 <std::_Tuple_impl<1ul, std::default_delete<std::thread::_State> >::_Tuple_impl()>
    3f96:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f9a:	48 89 c7             	mov    %rax,%rdi
    3f9d:	e8 7e 00 00 00       	callq  4020 <std::_Head_base<0ul, std::thread::_State*, false>::_Head_base()>
    3fa2:	90                   	nop
    3fa3:	c9                   	leaveq 
    3fa4:	c3                   	retq   

0000000000003fa5 <std::_Tuple_impl<0ul, std::thread::_State*, std::default_delete<std::thread::_State> >::_M_head(std::_Tuple_impl<0ul, std::thread::_State*, std::default_delete<std::thread::_State> >&)>:
      _M_head(_Tuple_impl& __t) noexcept { return _Base::_M_head(__t); }
    3fa5:	f3 0f 1e fa          	endbr64 
    3fa9:	55                   	push   %rbp
    3faa:	48 89 e5             	mov    %rsp,%rbp
    3fad:	48 83 ec 10          	sub    $0x10,%rsp
    3fb1:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3fb5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3fb9:	48 89 c7             	mov    %rax,%rdi
    3fbc:	e8 79 00 00 00       	callq  403a <std::_Head_base<0ul, std::thread::_State*, false>::_M_head(std::_Head_base<0ul, std::thread::_State*, false>&)>
    3fc1:	c9                   	leaveq 
    3fc2:	c3                   	retq   

0000000000003fc3 <std::default_delete<std::thread::_State>& std::__get_helper<1ul, std::default_delete<std::thread::_State>>(std::_Tuple_impl<1ul, std::default_delete<std::thread::_State>>&)>:
    __get_helper(_Tuple_impl<__i, _Head, _Tail...>& __t) noexcept
    3fc3:	f3 0f 1e fa          	endbr64 
    3fc7:	55                   	push   %rbp
    3fc8:	48 89 e5             	mov    %rsp,%rbp
    3fcb:	48 83 ec 10          	sub    $0x10,%rsp
    3fcf:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return _Tuple_impl<__i, _Head, _Tail...>::_M_head(__t); }
    3fd3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3fd7:	48 89 c7             	mov    %rax,%rdi
    3fda:	e8 6d 00 00 00       	callq  404c <std::_Tuple_impl<1ul, std::default_delete<std::thread::_State> >::_M_head(std::_Tuple_impl<1ul, std::default_delete<std::thread::_State> >&)>
    3fdf:	c9                   	leaveq 
    3fe0:	c3                   	retq   

0000000000003fe1 <std::_Tuple_impl<2ul, int>::_M_head(std::_Tuple_impl<2ul, int>&)>:
      _M_head(_Tuple_impl& __t) noexcept { return _Base::_M_head(__t); }
    3fe1:	f3 0f 1e fa          	endbr64 
    3fe5:	55                   	push   %rbp
    3fe6:	48 89 e5             	mov    %rsp,%rbp
    3fe9:	48 83 ec 10          	sub    $0x10,%rsp
    3fed:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3ff1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3ff5:	48 89 c7             	mov    %rax,%rdi
    3ff8:	e8 6d 00 00 00       	callq  406a <std::_Head_base<2ul, int, false>::_M_head(std::_Head_base<2ul, int, false>&)>
    3ffd:	c9                   	leaveq 
    3ffe:	c3                   	retq   
    3fff:	90                   	nop

0000000000004000 <std::_Tuple_impl<1ul, std::default_delete<std::thread::_State> >::_Tuple_impl()>:
      constexpr _Tuple_impl()
    4000:	f3 0f 1e fa          	endbr64 
    4004:	55                   	push   %rbp
    4005:	48 89 e5             	mov    %rsp,%rbp
    4008:	48 83 ec 10          	sub    $0x10,%rsp
    400c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      : _Base() { }
    4010:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4014:	48 89 c7             	mov    %rax,%rdi
    4017:	e8 60 00 00 00       	callq  407c <std::_Head_base<1ul, std::default_delete<std::thread::_State>, true>::_Head_base()>
    401c:	90                   	nop
    401d:	c9                   	leaveq 
    401e:	c3                   	retq   
    401f:	90                   	nop

0000000000004020 <std::_Head_base<0ul, std::thread::_State*, false>::_Head_base()>:
      constexpr _Head_base()
    4020:	f3 0f 1e fa          	endbr64 
    4024:	55                   	push   %rbp
    4025:	48 89 e5             	mov    %rsp,%rbp
    4028:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      : _M_head_impl() { }
    402c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4030:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    4037:	90                   	nop
    4038:	5d                   	pop    %rbp
    4039:	c3                   	retq   

000000000000403a <std::_Head_base<0ul, std::thread::_State*, false>::_M_head(std::_Head_base<0ul, std::thread::_State*, false>&)>:
      _M_head(_Head_base& __b) noexcept { return __b._M_head_impl; }
    403a:	f3 0f 1e fa          	endbr64 
    403e:	55                   	push   %rbp
    403f:	48 89 e5             	mov    %rsp,%rbp
    4042:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4046:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    404a:	5d                   	pop    %rbp
    404b:	c3                   	retq   

000000000000404c <std::_Tuple_impl<1ul, std::default_delete<std::thread::_State> >::_M_head(std::_Tuple_impl<1ul, std::default_delete<std::thread::_State> >&)>:
      _M_head(_Tuple_impl& __t) noexcept { return _Base::_M_head(__t); }
    404c:	f3 0f 1e fa          	endbr64 
    4050:	55                   	push   %rbp
    4051:	48 89 e5             	mov    %rsp,%rbp
    4054:	48 83 ec 10          	sub    $0x10,%rsp
    4058:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    405c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4060:	48 89 c7             	mov    %rax,%rdi
    4063:	e8 23 00 00 00       	callq  408b <std::_Head_base<1ul, std::default_delete<std::thread::_State>, true>::_M_head(std::_Head_base<1ul, std::default_delete<std::thread::_State>, true>&)>
    4068:	c9                   	leaveq 
    4069:	c3                   	retq   

000000000000406a <std::_Head_base<2ul, int, false>::_M_head(std::_Head_base<2ul, int, false>&)>:
      _M_head(_Head_base& __b) noexcept { return __b._M_head_impl; }
    406a:	f3 0f 1e fa          	endbr64 
    406e:	55                   	push   %rbp
    406f:	48 89 e5             	mov    %rsp,%rbp
    4072:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4076:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    407a:	5d                   	pop    %rbp
    407b:	c3                   	retq   

000000000000407c <std::_Head_base<1ul, std::default_delete<std::thread::_State>, true>::_Head_base()>:
      constexpr _Head_base()
    407c:	f3 0f 1e fa          	endbr64 
    4080:	55                   	push   %rbp
    4081:	48 89 e5             	mov    %rsp,%rbp
    4084:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      : _Head() { }
    4088:	90                   	nop
    4089:	5d                   	pop    %rbp
    408a:	c3                   	retq   

000000000000408b <std::_Head_base<1ul, std::default_delete<std::thread::_State>, true>::_M_head(std::_Head_base<1ul, std::default_delete<std::thread::_State>, true>&)>:
      _M_head(_Head_base& __b) noexcept { return __b; }
    408b:	f3 0f 1e fa          	endbr64 
    408f:	55                   	push   %rbp
    4090:	48 89 e5             	mov    %rsp,%rbp
    4093:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4097:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    409b:	5d                   	pop    %rbp
    409c:	c3                   	retq   
    409d:	90                   	nop

000000000000409e <std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >::~_State_impl()>:
      struct _State_impl : public _State
    409e:	f3 0f 1e fa          	endbr64 
    40a2:	55                   	push   %rbp
    40a3:	48 89 e5             	mov    %rsp,%rbp
    40a6:	48 83 ec 10          	sub    $0x10,%rsp
    40aa:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    40ae:	48 8d 15 7b 3b 00 00 	lea    0x3b7b(%rip),%rdx        # 7c30 <vtable for std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >+0x10>
    40b5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    40b9:	48 89 10             	mov    %rdx,(%rax)
    40bc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    40c0:	48 89 c7             	mov    %rax,%rdi
    40c3:	e8 f8 e0 ff ff       	callq  21c0 <std::thread::_State::~_State()@plt>
    40c8:	90                   	nop
    40c9:	c9                   	leaveq 
    40ca:	c3                   	retq   
    40cb:	90                   	nop

00000000000040cc <std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >::~_State_impl()>:
    40cc:	f3 0f 1e fa          	endbr64 
    40d0:	55                   	push   %rbp
    40d1:	48 89 e5             	mov    %rsp,%rbp
    40d4:	48 83 ec 10          	sub    $0x10,%rsp
    40d8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    40dc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    40e0:	48 89 c7             	mov    %rax,%rdi
    40e3:	e8 b6 ff ff ff       	callq  409e <std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >::~_State_impl()>
    40e8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    40ec:	be 18 00 00 00       	mov    $0x18,%esi
    40f1:	48 89 c7             	mov    %rax,%rdi
    40f4:	e8 17 e1 ff ff       	callq  2210 <operator delete(void*, unsigned long)@plt>
    40f9:	c9                   	leaveq 
    40fa:	c3                   	retq   
    40fb:	90                   	nop

00000000000040fc <std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int), int> > >::~_State_impl()>:
    40fc:	f3 0f 1e fa          	endbr64 
    4100:	55                   	push   %rbp
    4101:	48 89 e5             	mov    %rsp,%rbp
    4104:	48 83 ec 10          	sub    $0x10,%rsp
    4108:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    410c:	48 8d 15 45 3b 00 00 	lea    0x3b45(%rip),%rdx        # 7c58 <vtable for std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int), int> > >+0x10>
    4113:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4117:	48 89 10             	mov    %rdx,(%rax)
    411a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    411e:	48 89 c7             	mov    %rax,%rdi
    4121:	e8 9a e0 ff ff       	callq  21c0 <std::thread::_State::~_State()@plt>
    4126:	90                   	nop
    4127:	c9                   	leaveq 
    4128:	c3                   	retq   
    4129:	90                   	nop

000000000000412a <std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int), int> > >::~_State_impl()>:
    412a:	f3 0f 1e fa          	endbr64 
    412e:	55                   	push   %rbp
    412f:	48 89 e5             	mov    %rsp,%rbp
    4132:	48 83 ec 10          	sub    $0x10,%rsp
    4136:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    413a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    413e:	48 89 c7             	mov    %rax,%rdi
    4141:	e8 b6 ff ff ff       	callq  40fc <std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int), int> > >::~_State_impl()>
    4146:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    414a:	be 18 00 00 00       	mov    $0x18,%esi
    414f:	48 89 c7             	mov    %rax,%rdi
    4152:	e8 b9 e0 ff ff       	callq  2210 <operator delete(void*, unsigned long)@plt>
    4157:	c9                   	leaveq 
    4158:	c3                   	retq   
    4159:	90                   	nop

000000000000415a <std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >::_M_run()>:
	_M_run() { _M_func(); }
    415a:	f3 0f 1e fa          	endbr64 
    415e:	55                   	push   %rbp
    415f:	48 89 e5             	mov    %rsp,%rbp
    4162:	48 83 ec 10          	sub    $0x10,%rsp
    4166:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    416a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    416e:	48 83 c0 08          	add    $0x8,%rax
    4172:	48 89 c7             	mov    %rax,%rdi
    4175:	e8 28 00 00 00       	callq  41a2 <std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> >::operator()()>
    417a:	90                   	nop
    417b:	c9                   	leaveq 
    417c:	c3                   	retq   
    417d:	90                   	nop

000000000000417e <std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int), int> > >::_M_run()>:
    417e:	f3 0f 1e fa          	endbr64 
    4182:	55                   	push   %rbp
    4183:	48 89 e5             	mov    %rsp,%rbp
    4186:	48 83 ec 10          	sub    $0x10,%rsp
    418a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    418e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4192:	48 83 c0 08          	add    $0x8,%rax
    4196:	48 89 c7             	mov    %rax,%rdi
    4199:	e8 46 00 00 00       	callq  41e4 <std::thread::_Invoker<std::tuple<void (*)(int), int> >::operator()()>
    419e:	90                   	nop
    419f:	c9                   	leaveq 
    41a0:	c3                   	retq   
    41a1:	90                   	nop

00000000000041a2 <std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> >::operator()()>:
	operator()()
    41a2:	f3 0f 1e fa          	endbr64 
    41a6:	55                   	push   %rbp
    41a7:	48 89 e5             	mov    %rsp,%rbp
    41aa:	48 83 ec 20          	sub    $0x20,%rsp
    41ae:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    41b2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    41b9:	00 00 
    41bb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    41bf:	31 c0                	xor    %eax,%eax
	  return _M_invoke(_Indices());
    41c1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    41c5:	48 89 c7             	mov    %rax,%rdi
    41c8:	e8 59 00 00 00       	callq  4226 <void std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> >::_M_invoke<0ul, 1ul, 2ul>(std::_Index_tuple<0ul, 1ul, 2ul>)>
	}
    41cd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    41d1:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    41d8:	00 00 
    41da:	74 05                	je     41e1 <std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> >::operator()()+0x3f>
    41dc:	e8 4f e0 ff ff       	callq  2230 <__stack_chk_fail@plt>
    41e1:	c9                   	leaveq 
    41e2:	c3                   	retq   
    41e3:	90                   	nop

00000000000041e4 <std::thread::_Invoker<std::tuple<void (*)(int), int> >::operator()()>:
	operator()()
    41e4:	f3 0f 1e fa          	endbr64 
    41e8:	55                   	push   %rbp
    41e9:	48 89 e5             	mov    %rsp,%rbp
    41ec:	48 83 ec 20          	sub    $0x20,%rsp
    41f0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    41f4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    41fb:	00 00 
    41fd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4201:	31 c0                	xor    %eax,%eax
	  return _M_invoke(_Indices());
    4203:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4207:	48 89 c7             	mov    %rax,%rdi
    420a:	e8 85 00 00 00       	callq  4294 <void std::thread::_Invoker<std::tuple<void (*)(int), int> >::_M_invoke<0ul, 1ul>(std::_Index_tuple<0ul, 1ul>)>
	}
    420f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4213:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    421a:	00 00 
    421c:	74 05                	je     4223 <std::thread::_Invoker<std::tuple<void (*)(int), int> >::operator()()+0x3f>
    421e:	e8 0d e0 ff ff       	callq  2230 <__stack_chk_fail@plt>
    4223:	c9                   	leaveq 
    4224:	c3                   	retq   
    4225:	90                   	nop

0000000000004226 <void std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> >::_M_invoke<0ul, 1ul, 2ul>(std::_Index_tuple<0ul, 1ul, 2ul>)>:
	  _M_invoke(_Index_tuple<_Ind...>)
    4226:	f3 0f 1e fa          	endbr64 
    422a:	55                   	push   %rbp
    422b:	48 89 e5             	mov    %rsp,%rbp
    422e:	41 54                	push   %r12
    4230:	53                   	push   %rbx
    4231:	48 83 ec 10          	sub    $0x10,%rsp
    4235:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
	  { return std::__invoke(std::get<_Ind>(std::move(_M_t))...); }
    4239:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    423d:	48 89 c7             	mov    %rax,%rdi
    4240:	e8 9e 00 00 00       	callq  42e3 <std::remove_reference<std::tuple<void (*)(int, int), int, int>&>::type&& std::move<std::tuple<void (*)(int, int), int, int>&>(std::tuple<void (*)(int, int), int, int>&)>
    4245:	48 89 c7             	mov    %rax,%rdi
    4248:	e8 f4 00 00 00       	callq  4341 <std::tuple_element<2ul, std::tuple<void (*)(int, int), int, int> >::type&& std::get<2ul, void (*)(int, int), int, int>(std::tuple<void (*)(int, int), int, int>&&)>
    424d:	49 89 c4             	mov    %rax,%r12
    4250:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4254:	48 89 c7             	mov    %rax,%rdi
    4257:	e8 87 00 00 00       	callq  42e3 <std::remove_reference<std::tuple<void (*)(int, int), int, int>&>::type&& std::move<std::tuple<void (*)(int, int), int, int>&>(std::tuple<void (*)(int, int), int, int>&)>
    425c:	48 89 c7             	mov    %rax,%rdi
    425f:	e8 b7 00 00 00       	callq  431b <std::tuple_element<1ul, std::tuple<void (*)(int, int), int, int> >::type&& std::get<1ul, void (*)(int, int), int, int>(std::tuple<void (*)(int, int), int, int>&&)>
    4264:	48 89 c3             	mov    %rax,%rbx
    4267:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    426b:	48 89 c7             	mov    %rax,%rdi
    426e:	e8 70 00 00 00       	callq  42e3 <std::remove_reference<std::tuple<void (*)(int, int), int, int>&>::type&& std::move<std::tuple<void (*)(int, int), int, int>&>(std::tuple<void (*)(int, int), int, int>&)>
    4273:	48 89 c7             	mov    %rax,%rdi
    4276:	e8 7a 00 00 00       	callq  42f5 <std::tuple_element<0ul, std::tuple<void (*)(int, int), int, int> >::type&& std::get<0ul, void (*)(int, int), int, int>(std::tuple<void (*)(int, int), int, int>&&)>
    427b:	4c 89 e2             	mov    %r12,%rdx
    427e:	48 89 de             	mov    %rbx,%rsi
    4281:	48 89 c7             	mov    %rax,%rdi
    4284:	e8 de 00 00 00       	callq  4367 <std::__invoke_result<void (*)(int, int), int, int>::type std::__invoke<void (*)(int, int), int, int>(void (*&&)(int, int), int&&, int&&)>
    4289:	90                   	nop
    428a:	48 83 c4 10          	add    $0x10,%rsp
    428e:	5b                   	pop    %rbx
    428f:	41 5c                	pop    %r12
    4291:	5d                   	pop    %rbp
    4292:	c3                   	retq   
    4293:	90                   	nop

0000000000004294 <void std::thread::_Invoker<std::tuple<void (*)(int), int> >::_M_invoke<0ul, 1ul>(std::_Index_tuple<0ul, 1ul>)>:
	  _M_invoke(_Index_tuple<_Ind...>)
    4294:	f3 0f 1e fa          	endbr64 
    4298:	55                   	push   %rbp
    4299:	48 89 e5             	mov    %rsp,%rbp
    429c:	53                   	push   %rbx
    429d:	48 83 ec 18          	sub    $0x18,%rsp
    42a1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
	  { return std::__invoke(std::get<_Ind>(std::move(_M_t))...); }
    42a5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    42a9:	48 89 c7             	mov    %rax,%rdi
    42ac:	e8 36 01 00 00       	callq  43e7 <std::remove_reference<std::tuple<void (*)(int), int>&>::type&& std::move<std::tuple<void (*)(int), int>&>(std::tuple<void (*)(int), int>&)>
    42b1:	48 89 c7             	mov    %rax,%rdi
    42b4:	e8 66 01 00 00       	callq  441f <std::tuple_element<1ul, std::tuple<void (*)(int), int> >::type&& std::get<1ul, void (*)(int), int>(std::tuple<void (*)(int), int>&&)>
    42b9:	48 89 c3             	mov    %rax,%rbx
    42bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    42c0:	48 89 c7             	mov    %rax,%rdi
    42c3:	e8 1f 01 00 00       	callq  43e7 <std::remove_reference<std::tuple<void (*)(int), int>&>::type&& std::move<std::tuple<void (*)(int), int>&>(std::tuple<void (*)(int), int>&)>
    42c8:	48 89 c7             	mov    %rax,%rdi
    42cb:	e8 29 01 00 00       	callq  43f9 <std::tuple_element<0ul, std::tuple<void (*)(int), int> >::type&& std::get<0ul, void (*)(int), int>(std::tuple<void (*)(int), int>&&)>
    42d0:	48 89 de             	mov    %rbx,%rsi
    42d3:	48 89 c7             	mov    %rax,%rdi
    42d6:	e8 6a 01 00 00       	callq  4445 <std::__invoke_result<void (*)(int), int>::type std::__invoke<void (*)(int), int>(void (*&&)(int), int&&)>
    42db:	90                   	nop
    42dc:	48 83 c4 18          	add    $0x18,%rsp
    42e0:	5b                   	pop    %rbx
    42e1:	5d                   	pop    %rbp
    42e2:	c3                   	retq   

00000000000042e3 <std::remove_reference<std::tuple<void (*)(int, int), int, int>&>::type&& std::move<std::tuple<void (*)(int, int), int, int>&>(std::tuple<void (*)(int, int), int, int>&)>:
    move(_Tp&& __t) noexcept
    42e3:	f3 0f 1e fa          	endbr64 
    42e7:	55                   	push   %rbp
    42e8:	48 89 e5             	mov    %rsp,%rbp
    42eb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
    42ef:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    42f3:	5d                   	pop    %rbp
    42f4:	c3                   	retq   

00000000000042f5 <std::tuple_element<0ul, std::tuple<void (*)(int, int), int, int> >::type&& std::get<0ul, void (*)(int, int), int, int>(std::tuple<void (*)(int, int), int, int>&&)>:
    { return std::__get_helper<__i>(__t); }

  /// Return an rvalue reference to the ith element of a tuple rvalue.
  template<std::size_t __i, typename... _Elements>
    constexpr __tuple_element_t<__i, tuple<_Elements...>>&&
    get(tuple<_Elements...>&& __t) noexcept
    42f5:	f3 0f 1e fa          	endbr64 
    42f9:	55                   	push   %rbp
    42fa:	48 89 e5             	mov    %rsp,%rbp
    42fd:	48 83 ec 10          	sub    $0x10,%rsp
    4301:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    {
      typedef __tuple_element_t<__i, tuple<_Elements...>> __element_type;
      return std::forward<__element_type&&>(std::get<__i>(__t));
    4305:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4309:	48 89 c7             	mov    %rax,%rdi
    430c:	e8 9a 01 00 00       	callq  44ab <std::tuple_element<0ul, std::tuple<void (*)(int, int), int, int> >::type& std::get<0ul, void (*)(int, int), int, int>(std::tuple<void (*)(int, int), int, int>&)>
    4311:	48 89 c7             	mov    %rax,%rdi
    4314:	e8 b0 01 00 00       	callq  44c9 <void (*&&std::forward<void (*&&)(int, int)>(std::remove_reference<void (*&&)(int, int)>::type&))(int, int)>
    }
    4319:	c9                   	leaveq 
    431a:	c3                   	retq   

000000000000431b <std::tuple_element<1ul, std::tuple<void (*)(int, int), int, int> >::type&& std::get<1ul, void (*)(int, int), int, int>(std::tuple<void (*)(int, int), int, int>&&)>:
    get(tuple<_Elements...>&& __t) noexcept
    431b:	f3 0f 1e fa          	endbr64 
    431f:	55                   	push   %rbp
    4320:	48 89 e5             	mov    %rsp,%rbp
    4323:	48 83 ec 10          	sub    $0x10,%rsp
    4327:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      return std::forward<__element_type&&>(std::get<__i>(__t));
    432b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    432f:	48 89 c7             	mov    %rax,%rdi
    4332:	e8 a4 01 00 00       	callq  44db <std::tuple_element<1ul, std::tuple<void (*)(int, int), int, int> >::type& std::get<1ul, void (*)(int, int), int, int>(std::tuple<void (*)(int, int), int, int>&)>
    4337:	48 89 c7             	mov    %rax,%rdi
    433a:	e8 ba 01 00 00       	callq  44f9 <int&& std::forward<int&&>(std::remove_reference<int&&>::type&)>
    }
    433f:	c9                   	leaveq 
    4340:	c3                   	retq   

0000000000004341 <std::tuple_element<2ul, std::tuple<void (*)(int, int), int, int> >::type&& std::get<2ul, void (*)(int, int), int, int>(std::tuple<void (*)(int, int), int, int>&&)>:
    get(tuple<_Elements...>&& __t) noexcept
    4341:	f3 0f 1e fa          	endbr64 
    4345:	55                   	push   %rbp
    4346:	48 89 e5             	mov    %rsp,%rbp
    4349:	48 83 ec 10          	sub    $0x10,%rsp
    434d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      return std::forward<__element_type&&>(std::get<__i>(__t));
    4351:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4355:	48 89 c7             	mov    %rax,%rdi
    4358:	e8 ae 01 00 00       	callq  450b <std::tuple_element<2ul, std::tuple<void (*)(int, int), int, int> >::type& std::get<2ul, void (*)(int, int), int, int>(std::tuple<void (*)(int, int), int, int>&)>
    435d:	48 89 c7             	mov    %rax,%rdi
    4360:	e8 94 01 00 00       	callq  44f9 <int&& std::forward<int&&>(std::remove_reference<int&&>::type&)>
    }
    4365:	c9                   	leaveq 
    4366:	c3                   	retq   

0000000000004367 <std::__invoke_result<void (*)(int, int), int, int>::type std::__invoke<void (*)(int, int), int, int>(void (*&&)(int, int), int&&, int&&)>:
    { return (*std::forward<_Tp>(__t)).*__f; }

  /// Invoke a callable object.
  template<typename _Callable, typename... _Args>
    constexpr typename __invoke_result<_Callable, _Args...>::type
    __invoke(_Callable&& __fn, _Args&&... __args)
    4367:	f3 0f 1e fa          	endbr64 
    436b:	55                   	push   %rbp
    436c:	48 89 e5             	mov    %rsp,%rbp
    436f:	41 54                	push   %r12
    4371:	53                   	push   %rbx
    4372:	48 83 ec 30          	sub    $0x30,%rsp
    4376:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    437a:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    437e:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    4382:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4389:	00 00 
    438b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    438f:	31 c0                	xor    %eax,%eax
    noexcept(__is_nothrow_invocable<_Callable, _Args...>::value)
    {
      using __result = __invoke_result<_Callable, _Args...>;
      using __type = typename __result::type;
      using __tag = typename __result::__invoke_type;
      return std::__invoke_impl<__type>(__tag{}, std::forward<_Callable>(__fn),
    4391:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    4395:	48 89 c7             	mov    %rax,%rdi
    4398:	e8 ba ed ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    439d:	49 89 c4             	mov    %rax,%r12
    43a0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    43a4:	48 89 c7             	mov    %rax,%rdi
    43a7:	e8 ab ed ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    43ac:	48 89 c3             	mov    %rax,%rbx
    43af:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    43b3:	48 89 c7             	mov    %rax,%rdi
    43b6:	e8 7f f9 ff ff       	callq  3d3a <void (*&&std::forward<void (*)(int, int)>(std::remove_reference<void (*)(int, int)>::type&))(int, int)>
    43bb:	4c 89 e2             	mov    %r12,%rdx
    43be:	48 89 de             	mov    %rbx,%rsi
    43c1:	48 89 c7             	mov    %rax,%rdi
    43c4:	e8 60 01 00 00       	callq  4529 <void std::__invoke_impl<void, void (*)(int, int), int, int>(std::__invoke_other, void (*&&)(int, int), int&&, int&&)>
					std::forward<_Args>(__args)...);
    43c9:	90                   	nop
    }
    43ca:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    43ce:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    43d5:	00 00 
    43d7:	74 05                	je     43de <std::__invoke_result<void (*)(int, int), int, int>::type std::__invoke<void (*)(int, int), int, int>(void (*&&)(int, int), int&&, int&&)+0x77>
    43d9:	e8 52 de ff ff       	callq  2230 <__stack_chk_fail@plt>
    43de:	48 83 c4 30          	add    $0x30,%rsp
    43e2:	5b                   	pop    %rbx
    43e3:	41 5c                	pop    %r12
    43e5:	5d                   	pop    %rbp
    43e6:	c3                   	retq   

00000000000043e7 <std::remove_reference<std::tuple<void (*)(int), int>&>::type&& std::move<std::tuple<void (*)(int), int>&>(std::tuple<void (*)(int), int>&)>:
    move(_Tp&& __t) noexcept
    43e7:	f3 0f 1e fa          	endbr64 
    43eb:	55                   	push   %rbp
    43ec:	48 89 e5             	mov    %rsp,%rbp
    43ef:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
    43f3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    43f7:	5d                   	pop    %rbp
    43f8:	c3                   	retq   

00000000000043f9 <std::tuple_element<0ul, std::tuple<void (*)(int), int> >::type&& std::get<0ul, void (*)(int), int>(std::tuple<void (*)(int), int>&&)>:
    get(tuple<_Elements...>&& __t) noexcept
    43f9:	f3 0f 1e fa          	endbr64 
    43fd:	55                   	push   %rbp
    43fe:	48 89 e5             	mov    %rsp,%rbp
    4401:	48 83 ec 10          	sub    $0x10,%rsp
    4405:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      return std::forward<__element_type&&>(std::get<__i>(__t));
    4409:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    440d:	48 89 c7             	mov    %rax,%rdi
    4410:	e8 6b 01 00 00       	callq  4580 <std::tuple_element<0ul, std::tuple<void (*)(int), int> >::type& std::get<0ul, void (*)(int), int>(std::tuple<void (*)(int), int>&)>
    4415:	48 89 c7             	mov    %rax,%rdi
    4418:	e8 81 01 00 00       	callq  459e <void (*&&std::forward<void (*&&)(int)>(std::remove_reference<void (*&&)(int)>::type&))(int)>
    }
    441d:	c9                   	leaveq 
    441e:	c3                   	retq   

000000000000441f <std::tuple_element<1ul, std::tuple<void (*)(int), int> >::type&& std::get<1ul, void (*)(int), int>(std::tuple<void (*)(int), int>&&)>:
    get(tuple<_Elements...>&& __t) noexcept
    441f:	f3 0f 1e fa          	endbr64 
    4423:	55                   	push   %rbp
    4424:	48 89 e5             	mov    %rsp,%rbp
    4427:	48 83 ec 10          	sub    $0x10,%rsp
    442b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      return std::forward<__element_type&&>(std::get<__i>(__t));
    442f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4433:	48 89 c7             	mov    %rax,%rdi
    4436:	e8 75 01 00 00       	callq  45b0 <std::tuple_element<1ul, std::tuple<void (*)(int), int> >::type& std::get<1ul, void (*)(int), int>(std::tuple<void (*)(int), int>&)>
    443b:	48 89 c7             	mov    %rax,%rdi
    443e:	e8 b6 00 00 00       	callq  44f9 <int&& std::forward<int&&>(std::remove_reference<int&&>::type&)>
    }
    4443:	c9                   	leaveq 
    4444:	c3                   	retq   

0000000000004445 <std::__invoke_result<void (*)(int), int>::type std::__invoke<void (*)(int), int>(void (*&&)(int), int&&)>:
    __invoke(_Callable&& __fn, _Args&&... __args)
    4445:	f3 0f 1e fa          	endbr64 
    4449:	55                   	push   %rbp
    444a:	48 89 e5             	mov    %rsp,%rbp
    444d:	53                   	push   %rbx
    444e:	48 83 ec 28          	sub    $0x28,%rsp
    4452:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    4456:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    445a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4461:	00 00 
    4463:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    4467:	31 c0                	xor    %eax,%eax
      return std::__invoke_impl<__type>(__tag{}, std::forward<_Callable>(__fn),
    4469:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    446d:	48 89 c7             	mov    %rax,%rdi
    4470:	e8 e2 ec ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    4475:	48 89 c3             	mov    %rax,%rbx
    4478:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    447c:	48 89 c7             	mov    %rax,%rdi
    447f:	e8 7e f7 ff ff       	callq  3c02 <void (*&&std::forward<void (*)(int)>(std::remove_reference<void (*)(int)>::type&))(int)>
    4484:	48 89 de             	mov    %rbx,%rsi
    4487:	48 89 c7             	mov    %rax,%rdi
    448a:	e8 3f 01 00 00       	callq  45ce <void std::__invoke_impl<void, void (*)(int), int>(std::__invoke_other, void (*&&)(int), int&&)>
					std::forward<_Args>(__args)...);
    448f:	90                   	nop
    }
    4490:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4494:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    449b:	00 00 
    449d:	74 05                	je     44a4 <std::__invoke_result<void (*)(int), int>::type std::__invoke<void (*)(int), int>(void (*&&)(int), int&&)+0x5f>
    449f:	e8 8c dd ff ff       	callq  2230 <__stack_chk_fail@plt>
    44a4:	48 83 c4 28          	add    $0x28,%rsp
    44a8:	5b                   	pop    %rbx
    44a9:	5d                   	pop    %rbp
    44aa:	c3                   	retq   

00000000000044ab <std::tuple_element<0ul, std::tuple<void (*)(int, int), int, int> >::type& std::get<0ul, void (*)(int, int), int, int>(std::tuple<void (*)(int, int), int, int>&)>:
    get(tuple<_Elements...>& __t) noexcept
    44ab:	f3 0f 1e fa          	endbr64 
    44af:	55                   	push   %rbp
    44b0:	48 89 e5             	mov    %rsp,%rbp
    44b3:	48 83 ec 10          	sub    $0x10,%rsp
    44b7:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return std::__get_helper<__i>(__t); }
    44bb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    44bf:	48 89 c7             	mov    %rax,%rdi
    44c2:	e8 45 01 00 00       	callq  460c <void (*&std::__get_helper<0ul, void (*)(int, int), int, int>(std::_Tuple_impl<0ul, void (*)(int, int), int, int>&))(int, int)>
    44c7:	c9                   	leaveq 
    44c8:	c3                   	retq   

00000000000044c9 <void (*&&std::forward<void (*&&)(int, int)>(std::remove_reference<void (*&&)(int, int)>::type&))(int, int)>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    44c9:	f3 0f 1e fa          	endbr64 
    44cd:	55                   	push   %rbp
    44ce:	48 89 e5             	mov    %rsp,%rbp
    44d1:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
    44d5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    44d9:	5d                   	pop    %rbp
    44da:	c3                   	retq   

00000000000044db <std::tuple_element<1ul, std::tuple<void (*)(int, int), int, int> >::type& std::get<1ul, void (*)(int, int), int, int>(std::tuple<void (*)(int, int), int, int>&)>:
    get(tuple<_Elements...>& __t) noexcept
    44db:	f3 0f 1e fa          	endbr64 
    44df:	55                   	push   %rbp
    44e0:	48 89 e5             	mov    %rsp,%rbp
    44e3:	48 83 ec 10          	sub    $0x10,%rsp
    44e7:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return std::__get_helper<__i>(__t); }
    44eb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    44ef:	48 89 c7             	mov    %rax,%rdi
    44f2:	e8 33 01 00 00       	callq  462a <int& std::__get_helper<1ul, int, int>(std::_Tuple_impl<1ul, int, int>&)>
    44f7:	c9                   	leaveq 
    44f8:	c3                   	retq   

00000000000044f9 <int&& std::forward<int&&>(std::remove_reference<int&&>::type&)>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    44f9:	f3 0f 1e fa          	endbr64 
    44fd:	55                   	push   %rbp
    44fe:	48 89 e5             	mov    %rsp,%rbp
    4501:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
    4505:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4509:	5d                   	pop    %rbp
    450a:	c3                   	retq   

000000000000450b <std::tuple_element<2ul, std::tuple<void (*)(int, int), int, int> >::type& std::get<2ul, void (*)(int, int), int, int>(std::tuple<void (*)(int, int), int, int>&)>:
    get(tuple<_Elements...>& __t) noexcept
    450b:	f3 0f 1e fa          	endbr64 
    450f:	55                   	push   %rbp
    4510:	48 89 e5             	mov    %rsp,%rbp
    4513:	48 83 ec 10          	sub    $0x10,%rsp
    4517:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return std::__get_helper<__i>(__t); }
    451b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    451f:	48 89 c7             	mov    %rax,%rdi
    4522:	e8 21 01 00 00       	callq  4648 <int& std::__get_helper<2ul, int>(std::_Tuple_impl<2ul, int>&)>
    4527:	c9                   	leaveq 
    4528:	c3                   	retq   

0000000000004529 <void std::__invoke_impl<void, void (*)(int, int), int, int>(std::__invoke_other, void (*&&)(int, int), int&&, int&&)>:
    __invoke_impl(__invoke_other, _Fn&& __f, _Args&&... __args)
    4529:	f3 0f 1e fa          	endbr64 
    452d:	55                   	push   %rbp
    452e:	48 89 e5             	mov    %rsp,%rbp
    4531:	41 54                	push   %r12
    4533:	53                   	push   %rbx
    4534:	48 83 ec 20          	sub    $0x20,%rsp
    4538:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    453c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4540:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    { return std::forward<_Fn>(__f)(std::forward<_Args>(__args)...); }
    4544:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4548:	48 89 c7             	mov    %rax,%rdi
    454b:	e8 ea f7 ff ff       	callq  3d3a <void (*&&std::forward<void (*)(int, int)>(std::remove_reference<void (*)(int, int)>::type&))(int, int)>
    4550:	4c 8b 20             	mov    (%rax),%r12
    4553:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4557:	48 89 c7             	mov    %rax,%rdi
    455a:	e8 f8 eb ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    455f:	8b 18                	mov    (%rax),%ebx
    4561:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4565:	48 89 c7             	mov    %rax,%rdi
    4568:	e8 ea eb ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    456d:	8b 00                	mov    (%rax),%eax
    456f:	89 de                	mov    %ebx,%esi
    4571:	89 c7                	mov    %eax,%edi
    4573:	41 ff d4             	callq  *%r12
    4576:	90                   	nop
    4577:	48 83 c4 20          	add    $0x20,%rsp
    457b:	5b                   	pop    %rbx
    457c:	41 5c                	pop    %r12
    457e:	5d                   	pop    %rbp
    457f:	c3                   	retq   

0000000000004580 <std::tuple_element<0ul, std::tuple<void (*)(int), int> >::type& std::get<0ul, void (*)(int), int>(std::tuple<void (*)(int), int>&)>:
    get(tuple<_Elements...>& __t) noexcept
    4580:	f3 0f 1e fa          	endbr64 
    4584:	55                   	push   %rbp
    4585:	48 89 e5             	mov    %rsp,%rbp
    4588:	48 83 ec 10          	sub    $0x10,%rsp
    458c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return std::__get_helper<__i>(__t); }
    4590:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4594:	48 89 c7             	mov    %rax,%rdi
    4597:	e8 ca 00 00 00       	callq  4666 <void (*&std::__get_helper<0ul, void (*)(int), int>(std::_Tuple_impl<0ul, void (*)(int), int>&))(int)>
    459c:	c9                   	leaveq 
    459d:	c3                   	retq   

000000000000459e <void (*&&std::forward<void (*&&)(int)>(std::remove_reference<void (*&&)(int)>::type&))(int)>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    459e:	f3 0f 1e fa          	endbr64 
    45a2:	55                   	push   %rbp
    45a3:	48 89 e5             	mov    %rsp,%rbp
    45a6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
    45aa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    45ae:	5d                   	pop    %rbp
    45af:	c3                   	retq   

00000000000045b0 <std::tuple_element<1ul, std::tuple<void (*)(int), int> >::type& std::get<1ul, void (*)(int), int>(std::tuple<void (*)(int), int>&)>:
    get(tuple<_Elements...>& __t) noexcept
    45b0:	f3 0f 1e fa          	endbr64 
    45b4:	55                   	push   %rbp
    45b5:	48 89 e5             	mov    %rsp,%rbp
    45b8:	48 83 ec 10          	sub    $0x10,%rsp
    45bc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return std::__get_helper<__i>(__t); }
    45c0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    45c4:	48 89 c7             	mov    %rax,%rdi
    45c7:	e8 b8 00 00 00       	callq  4684 <int& std::__get_helper<1ul, int>(std::_Tuple_impl<1ul, int>&)>
    45cc:	c9                   	leaveq 
    45cd:	c3                   	retq   

00000000000045ce <void std::__invoke_impl<void, void (*)(int), int>(std::__invoke_other, void (*&&)(int), int&&)>:
    __invoke_impl(__invoke_other, _Fn&& __f, _Args&&... __args)
    45ce:	f3 0f 1e fa          	endbr64 
    45d2:	55                   	push   %rbp
    45d3:	48 89 e5             	mov    %rsp,%rbp
    45d6:	53                   	push   %rbx
    45d7:	48 83 ec 18          	sub    $0x18,%rsp
    45db:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    45df:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    { return std::forward<_Fn>(__f)(std::forward<_Args>(__args)...); }
    45e3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    45e7:	48 89 c7             	mov    %rax,%rdi
    45ea:	e8 13 f6 ff ff       	callq  3c02 <void (*&&std::forward<void (*)(int)>(std::remove_reference<void (*)(int)>::type&))(int)>
    45ef:	48 8b 18             	mov    (%rax),%rbx
    45f2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    45f6:	48 89 c7             	mov    %rax,%rdi
    45f9:	e8 59 eb ff ff       	callq  3157 <int&& std::forward<int>(std::remove_reference<int>::type&)>
    45fe:	8b 00                	mov    (%rax),%eax
    4600:	89 c7                	mov    %eax,%edi
    4602:	ff d3                	callq  *%rbx
    4604:	90                   	nop
    4605:	48 83 c4 18          	add    $0x18,%rsp
    4609:	5b                   	pop    %rbx
    460a:	5d                   	pop    %rbp
    460b:	c3                   	retq   

000000000000460c <void (*&std::__get_helper<0ul, void (*)(int, int), int, int>(std::_Tuple_impl<0ul, void (*)(int, int), int, int>&))(int, int)>:
    __get_helper(_Tuple_impl<__i, _Head, _Tail...>& __t) noexcept
    460c:	f3 0f 1e fa          	endbr64 
    4610:	55                   	push   %rbp
    4611:	48 89 e5             	mov    %rsp,%rbp
    4614:	48 83 ec 10          	sub    $0x10,%rsp
    4618:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return _Tuple_impl<__i, _Head, _Tail...>::_M_head(__t); }
    461c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4620:	48 89 c7             	mov    %rax,%rdi
    4623:	e8 f0 f6 ff ff       	callq  3d18 <std::_Tuple_impl<0ul, void (*)(int, int), int, int>::_M_head(std::_Tuple_impl<0ul, void (*)(int, int), int, int>&)>
    4628:	c9                   	leaveq 
    4629:	c3                   	retq   

000000000000462a <int& std::__get_helper<1ul, int, int>(std::_Tuple_impl<1ul, int, int>&)>:
    __get_helper(_Tuple_impl<__i, _Head, _Tail...>& __t) noexcept
    462a:	f3 0f 1e fa          	endbr64 
    462e:	55                   	push   %rbp
    462f:	48 89 e5             	mov    %rsp,%rbp
    4632:	48 83 ec 10          	sub    $0x10,%rsp
    4636:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return _Tuple_impl<__i, _Head, _Tail...>::_M_head(__t); }
    463a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    463e:	48 89 c7             	mov    %rax,%rdi
    4641:	e8 bf f8 ff ff       	callq  3f05 <std::_Tuple_impl<1ul, int, int>::_M_head(std::_Tuple_impl<1ul, int, int>&)>
    4646:	c9                   	leaveq 
    4647:	c3                   	retq   

0000000000004648 <int& std::__get_helper<2ul, int>(std::_Tuple_impl<2ul, int>&)>:
    __get_helper(_Tuple_impl<__i, _Head, _Tail...>& __t) noexcept
    4648:	f3 0f 1e fa          	endbr64 
    464c:	55                   	push   %rbp
    464d:	48 89 e5             	mov    %rsp,%rbp
    4650:	48 83 ec 10          	sub    $0x10,%rsp
    4654:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return _Tuple_impl<__i, _Head, _Tail...>::_M_head(__t); }
    4658:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    465c:	48 89 c7             	mov    %rax,%rdi
    465f:	e8 7d f9 ff ff       	callq  3fe1 <std::_Tuple_impl<2ul, int>::_M_head(std::_Tuple_impl<2ul, int>&)>
    4664:	c9                   	leaveq 
    4665:	c3                   	retq   

0000000000004666 <void (*&std::__get_helper<0ul, void (*)(int), int>(std::_Tuple_impl<0ul, void (*)(int), int>&))(int)>:
    __get_helper(_Tuple_impl<__i, _Head, _Tail...>& __t) noexcept
    4666:	f3 0f 1e fa          	endbr64 
    466a:	55                   	push   %rbp
    466b:	48 89 e5             	mov    %rsp,%rbp
    466e:	48 83 ec 10          	sub    $0x10,%rsp
    4672:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return _Tuple_impl<__i, _Head, _Tail...>::_M_head(__t); }
    4676:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    467a:	48 89 c7             	mov    %rax,%rdi
    467d:	e8 5e f5 ff ff       	callq  3be0 <std::_Tuple_impl<0ul, void (*)(int), int>::_M_head(std::_Tuple_impl<0ul, void (*)(int), int>&)>
    4682:	c9                   	leaveq 
    4683:	c3                   	retq   

0000000000004684 <int& std::__get_helper<1ul, int>(std::_Tuple_impl<1ul, int>&)>:
    __get_helper(_Tuple_impl<__i, _Head, _Tail...>& __t) noexcept
    4684:	f3 0f 1e fa          	endbr64 
    4688:	55                   	push   %rbp
    4689:	48 89 e5             	mov    %rsp,%rbp
    468c:	48 83 ec 10          	sub    $0x10,%rsp
    4690:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return _Tuple_impl<__i, _Head, _Tail...>::_M_head(__t); }
    4694:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4698:	48 89 c7             	mov    %rax,%rdi
    469b:	e8 b6 f7 ff ff       	callq  3e56 <std::_Tuple_impl<1ul, int>::_M_head(std::_Tuple_impl<1ul, int>&)>
    46a0:	c9                   	leaveq 
    46a1:	c3                   	retq   
    46a2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    46a9:	00 00 00 
    46ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000046b0 <__libc_csu_init>:
    46b0:	f3 0f 1e fa          	endbr64 
    46b4:	41 57                	push   %r15
    46b6:	4c 8d 3d 4b 35 00 00 	lea    0x354b(%rip),%r15        # 7c08 <__frame_dummy_init_array_entry>
    46bd:	41 56                	push   %r14
    46bf:	49 89 d6             	mov    %rdx,%r14
    46c2:	41 55                	push   %r13
    46c4:	49 89 f5             	mov    %rsi,%r13
    46c7:	41 54                	push   %r12
    46c9:	41 89 fc             	mov    %edi,%r12d
    46cc:	55                   	push   %rbp
    46cd:	48 8d 2d 44 35 00 00 	lea    0x3544(%rip),%rbp        # 7c18 <__do_global_dtors_aux_fini_array_entry>
    46d4:	53                   	push   %rbx
    46d5:	4c 29 fd             	sub    %r15,%rbp
    46d8:	48 83 ec 08          	sub    $0x8,%rsp
    46dc:	e8 1f d9 ff ff       	callq  2000 <_init>
    46e1:	48 c1 fd 03          	sar    $0x3,%rbp
    46e5:	74 1f                	je     4706 <__libc_csu_init+0x56>
    46e7:	31 db                	xor    %ebx,%ebx
    46e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    46f0:	4c 89 f2             	mov    %r14,%rdx
    46f3:	4c 89 ee             	mov    %r13,%rsi
    46f6:	44 89 e7             	mov    %r12d,%edi
    46f9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    46fd:	48 83 c3 01          	add    $0x1,%rbx
    4701:	48 39 dd             	cmp    %rbx,%rbp
    4704:	75 ea                	jne    46f0 <__libc_csu_init+0x40>
    4706:	48 83 c4 08          	add    $0x8,%rsp
    470a:	5b                   	pop    %rbx
    470b:	5d                   	pop    %rbp
    470c:	41 5c                	pop    %r12
    470e:	41 5d                	pop    %r13
    4710:	41 5e                	pop    %r14
    4712:	41 5f                	pop    %r15
    4714:	c3                   	retq   
    4715:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    471c:	00 00 00 00 

0000000000004720 <__libc_csu_fini>:
    4720:	f3 0f 1e fa          	endbr64 
    4724:	c3                   	retq   

Disassembly of section .fini:

0000000000004728 <_fini>:
    4728:	f3 0f 1e fa          	endbr64 
    472c:	48 83 ec 08          	sub    $0x8,%rsp
    4730:	48 83 c4 08          	add    $0x8,%rsp
    4734:	c3                   	retq   
