
test:     file format elf64-x86-64


Disassembly of section .init:

0000000000002000 <_init>:
    2000:	f3 0f 1e fa          	endbr64 
    2004:	48 83 ec 08          	sub    $0x8,%rsp
    2008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 4fe8 <__gmon_start__>
    200f:	48 85 c0             	test   %rax,%rax
    2012:	74 02                	je     2016 <_init+0x16>
    2014:	ff d0                	callq  *%rax
    2016:	48 83 c4 08          	add    $0x8,%rsp
    201a:	c3                   	retq   

Disassembly of section .plt:

0000000000002020 <.plt>:
    2020:	ff 35 d2 2e 00 00    	pushq  0x2ed2(%rip)        # 4ef8 <_GLOBAL_OFFSET_TABLE_+0x8>
    2026:	f2 ff 25 d3 2e 00 00 	bnd jmpq *0x2ed3(%rip)        # 4f00 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    2170:	f3 0f 1e fa          	endbr64 
    2174:	68 14 00 00 00       	pushq  $0x14
    2179:	f2 e9 a1 fe ff ff    	bnd jmpq 2020 <.plt>
    217f:	90                   	nop
    2180:	f3 0f 1e fa          	endbr64 
    2184:	68 15 00 00 00       	pushq  $0x15
    2189:	f2 e9 91 fe ff ff    	bnd jmpq 2020 <.plt>
    218f:	90                   	nop
    2190:	f3 0f 1e fa          	endbr64 
    2194:	68 16 00 00 00       	pushq  $0x16
    2199:	f2 e9 81 fe ff ff    	bnd jmpq 2020 <.plt>
    219f:	90                   	nop
    21a0:	f3 0f 1e fa          	endbr64 
    21a4:	68 17 00 00 00       	pushq  $0x17
    21a9:	f2 e9 71 fe ff ff    	bnd jmpq 2020 <.plt>
    21af:	90                   	nop

Disassembly of section .plt.got:

00000000000021b0 <__cxa_finalize@plt>:
    21b0:	f3 0f 1e fa          	endbr64 
    21b4:	f2 ff 25 0d 2e 00 00 	bnd jmpq *0x2e0d(%rip)        # 4fc8 <__cxa_finalize@GLIBC_2.2.5>
    21bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000021c0 <operator new[](unsigned long)@plt>:
    21c0:	f3 0f 1e fa          	endbr64 
    21c4:	f2 ff 25 3d 2d 00 00 	bnd jmpq *0x2d3d(%rip)        # 4f08 <operator new[](unsigned long)@GLIBCXX_3.4>
    21cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000021d0 <std::ostream::put(char)@plt>:
    21d0:	f3 0f 1e fa          	endbr64 
    21d4:	f2 ff 25 35 2d 00 00 	bnd jmpq *0x2d35(%rip)        # 4f10 <std::ostream::put(char)@GLIBCXX_3.4>
    21db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000021e0 <__errno_location@plt>:
    21e0:	f3 0f 1e fa          	endbr64 
    21e4:	f2 ff 25 2d 2d 00 00 	bnd jmpq *0x2d2d(%rip)        # 4f18 <__errno_location@GLIBC_2.2.5>
    21eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000021f0 <std::terminate()@plt>:
    21f0:	f3 0f 1e fa          	endbr64 
    21f4:	f2 ff 25 25 2d 00 00 	bnd jmpq *0x2d25(%rip)        # 4f20 <std::terminate()@GLIBCXX_3.4>
    21fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002200 <nanosleep@plt>:
    2200:	f3 0f 1e fa          	endbr64 
    2204:	f2 ff 25 1d 2d 00 00 	bnd jmpq *0x2d1d(%rip)        # 4f28 <nanosleep@GLIBC_2.2.5>
    220b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002210 <std::thread::_State::~_State()@plt>:
    2210:	f3 0f 1e fa          	endbr64 
    2214:	f2 ff 25 15 2d 00 00 	bnd jmpq *0x2d15(%rip)        # 4f30 <std::thread::_State::~_State()@GLIBCXX_3.4.22>
    221b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002220 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@plt>:
    2220:	f3 0f 1e fa          	endbr64 
    2224:	f2 ff 25 0d 2d 00 00 	bnd jmpq *0x2d0d(%rip)        # 4f38 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GLIBCXX_3.4>
    222b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002230 <std::ostream::flush()@plt>:
    2230:	f3 0f 1e fa          	endbr64 
    2234:	f2 ff 25 05 2d 00 00 	bnd jmpq *0x2d05(%rip)        # 4f40 <std::ostream::flush()@GLIBCXX_3.4>
    223b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002240 <__cxa_atexit@plt>:
    2240:	f3 0f 1e fa          	endbr64 
    2244:	f2 ff 25 fd 2c 00 00 	bnd jmpq *0x2cfd(%rip)        # 4f48 <__cxa_atexit@GLIBC_2.2.5>
    224b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002250 <std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())@plt>:
    2250:	f3 0f 1e fa          	endbr64 
    2254:	f2 ff 25 f5 2c 00 00 	bnd jmpq *0x2cf5(%rip)        # 4f50 <std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())@GLIBCXX_3.4.22>
    225b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002260 <std::ostream& std::ostream::_M_insert<long>(long)@plt>:
    2260:	f3 0f 1e fa          	endbr64 
    2264:	f2 ff 25 ed 2c 00 00 	bnd jmpq *0x2ced(%rip)        # 4f58 <std::ostream& std::ostream::_M_insert<long>(long)@GLIBCXX_3.4.9>
    226b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002270 <operator new(unsigned long)@plt>:
    2270:	f3 0f 1e fa          	endbr64 
    2274:	f2 ff 25 e5 2c 00 00 	bnd jmpq *0x2ce5(%rip)        # 4f60 <operator new(unsigned long)@GLIBCXX_3.4>
    227b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002280 <operator delete(void*, unsigned long)@plt>:
    2280:	f3 0f 1e fa          	endbr64 
    2284:	f2 ff 25 dd 2c 00 00 	bnd jmpq *0x2cdd(%rip)        # 4f68 <operator delete(void*, unsigned long)@CXXABI_1.3.9>
    228b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002290 <__stack_chk_fail@plt>:
    2290:	f3 0f 1e fa          	endbr64 
    2294:	f2 ff 25 d5 2c 00 00 	bnd jmpq *0x2cd5(%rip)        # 4f70 <__stack_chk_fail@GLIBC_2.4>
    229b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022a0 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>:
    22a0:	f3 0f 1e fa          	endbr64 
    22a4:	f2 ff 25 cd 2c 00 00 	bnd jmpq *0x2ccd(%rip)        # 4f78 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@GLIBCXX_3.4.9>
    22ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022b0 <std::ctype<char>::_M_widen_init() const@plt>:
    22b0:	f3 0f 1e fa          	endbr64 
    22b4:	f2 ff 25 c5 2c 00 00 	bnd jmpq *0x2cc5(%rip)        # 4f80 <std::ctype<char>::_M_widen_init() const@GLIBCXX_3.4.11>
    22bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022c0 <std::__throw_bad_cast()@plt>:
    22c0:	f3 0f 1e fa          	endbr64 
    22c4:	f2 ff 25 bd 2c 00 00 	bnd jmpq *0x2cbd(%rip)        # 4f88 <std::__throw_bad_cast()@GLIBCXX_3.4>
    22cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022d0 <std::chrono::_V2::steady_clock::now()@plt>:
    22d0:	f3 0f 1e fa          	endbr64 
    22d4:	f2 ff 25 b5 2c 00 00 	bnd jmpq *0x2cb5(%rip)        # 4f90 <std::chrono::_V2::steady_clock::now()@GLIBCXX_3.4.19>
    22db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022e0 <std::ios_base::Init::Init()@plt>:
    22e0:	f3 0f 1e fa          	endbr64 
    22e4:	f2 ff 25 ad 2c 00 00 	bnd jmpq *0x2cad(%rip)        # 4f98 <std::ios_base::Init::Init()@GLIBCXX_3.4>
    22eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022f0 <gettimeofday@plt>:
    22f0:	f3 0f 1e fa          	endbr64 
    22f4:	f2 ff 25 a5 2c 00 00 	bnd jmpq *0x2ca5(%rip)        # 4fa0 <gettimeofday@GLIBC_2.2.5>
    22fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002300 <std::thread::join()@plt>:
    2300:	f3 0f 1e fa          	endbr64 
    2304:	f2 ff 25 9d 2c 00 00 	bnd jmpq *0x2c9d(%rip)        # 4fa8 <std::thread::join()@GLIBCXX_3.4.11>
    230b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002310 <std::ostream::operator<<(int)@plt>:
    2310:	f3 0f 1e fa          	endbr64 
    2314:	f2 ff 25 95 2c 00 00 	bnd jmpq *0x2c95(%rip)        # 4fb0 <std::ostream::operator<<(int)@GLIBCXX_3.4>
    231b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002320 <std::thread::detach()@plt>:
    2320:	f3 0f 1e fa          	endbr64 
    2324:	f2 ff 25 8d 2c 00 00 	bnd jmpq *0x2c8d(%rip)        # 4fb8 <std::thread::detach()@GLIBCXX_3.4.11>
    232b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002330 <_Unwind_Resume@plt>:
    2330:	f3 0f 1e fa          	endbr64 
    2334:	f2 ff 25 85 2c 00 00 	bnd jmpq *0x2c85(%rip)        # 4fc0 <_Unwind_Resume@GCC_3.0>
    233b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000002340 <main.cold>:
	    __depend);
      }

    ~thread()
    {
      if (joinable())
    2340:	48 83 7c 24 48 00    	cmpq   $0x0,0x48(%rsp)
    2346:	0f 85 bf 02 00 00    	jne    260b <main+0x27b>
    234c:	48 83 7c 24 40 00    	cmpq   $0x0,0x40(%rsp)
    2352:	0f 85 b3 02 00 00    	jne    260b <main+0x27b>
    2358:	48 83 7c 24 38 00    	cmpq   $0x0,0x38(%rsp)
    235e:	0f 85 a7 02 00 00    	jne    260b <main+0x27b>
    2364:	48 83 7c 24 30 00    	cmpq   $0x0,0x30(%rsp)
    236a:	0f 85 9b 02 00 00    	jne    260b <main+0x27b>
    2370:	48 83 7c 24 28 00    	cmpq   $0x0,0x28(%rsp)
    2376:	0f 85 8f 02 00 00    	jne    260b <main+0x27b>
    237c:	48 83 7c 24 20 00    	cmpq   $0x0,0x20(%rsp)
    2382:	0f 85 83 02 00 00    	jne    260b <main+0x27b>
    2388:	e8 a3 ff ff ff       	callq  2330 <_Unwind_Resume@plt>
    238d:	0f 1f 00             	nopl   (%rax)

0000000000002390 <main>:
		}
	}
	std::cout << index << " done, now=" << Timer::NowMicroSec() << std::endl;
}

int main() {
    2390:	f3 0f 1e fa          	endbr64 
    2394:	41 57                	push   %r15
	arrI = new int32_t[2 * N];
    2396:	bf 00 08 af 2f       	mov    $0x2faf0800,%edi
int main() {
    239b:	41 56                	push   %r14
    239d:	41 55                	push   %r13
    239f:	41 54                	push   %r12
    23a1:	55                   	push   %rbp
    23a2:	53                   	push   %rbx
    23a3:	48 83 ec 78          	sub    $0x78,%rsp
    23a7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    23ae:	00 00 
    23b0:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    23b5:	31 c0                	xor    %eax,%eax
	arrK = new int32_t[2 * N];
	flags = new bool[N];

	auto bt = std::chrono::steady_clock::now();

	std::thread write_thread(writeGr, 1);
    23b7:	48 8d 5c 24 50       	lea    0x50(%rsp),%rbx
    23bc:	4c 8d 7c 24 20       	lea    0x20(%rsp),%r15
	arrI = new int32_t[2 * N];
    23c1:	e8 fa fd ff ff       	callq  21c0 <operator new[](unsigned long)@plt>
	arrJ = new int32_t[2 * N];
    23c6:	bf 00 08 af 2f       	mov    $0x2faf0800,%edi

	std::thread trouble_thread1(troubleGr, 0 * (N / 4));
    23cb:	4c 8d 74 24 28       	lea    0x28(%rsp),%r14
	arrI = new int32_t[2 * N];
    23d0:	48 89 05 99 2d 00 00 	mov    %rax,0x2d99(%rip)        # 5170 <arrI>
	arrJ = new int32_t[2 * N];
    23d7:	e8 e4 fd ff ff       	callq  21c0 <operator new[](unsigned long)@plt>
	arrK = new int32_t[2 * N];
    23dc:	bf 00 08 af 2f       	mov    $0x2faf0800,%edi
	arrJ = new int32_t[2 * N];
    23e1:	48 89 05 80 2d 00 00 	mov    %rax,0x2d80(%rip)        # 5168 <arrJ>
	arrK = new int32_t[2 * N];
    23e8:	e8 d3 fd ff ff       	callq  21c0 <operator new[](unsigned long)@plt>
	flags = new bool[N];
    23ed:	bf 00 e1 f5 05       	mov    $0x5f5e100,%edi
	arrK = new int32_t[2 * N];
    23f2:	48 89 05 67 2d 00 00 	mov    %rax,0x2d67(%rip)        # 5160 <arrK>
	flags = new bool[N];
    23f9:	e8 c2 fd ff ff       	callq  21c0 <operator new[](unsigned long)@plt>
    23fe:	48 89 05 53 2d 00 00 	mov    %rax,0x2d53(%rip)        # 5158 <flags>
	auto bt = std::chrono::steady_clock::now();
    2405:	e8 c6 fe ff ff       	callq  22d0 <std::chrono::_V2::steady_clock::now()@plt>
	std::thread write_thread(writeGr, 1);
    240a:	48 89 da             	mov    %rbx,%rdx
    240d:	4c 89 ff             	mov    %r15,%rdi
    2410:	48 8d 35 e9 03 00 00 	lea    0x3e9(%rip),%rsi        # 2800 <writeGr(int)>
	auto bt = std::chrono::steady_clock::now();
    2417:	48 89 04 24          	mov    %rax,(%rsp)
	std::thread write_thread(writeGr, 1);
    241b:	c7 44 24 50 01 00 00 	movl   $0x1,0x50(%rsp)
    2422:	00 
    2423:	e8 f8 07 00 00       	callq  2c20 <std::thread::thread<void (&)(int), int, void>(void (&)(int), int&&)>
	std::thread trouble_thread1(troubleGr, 0 * (N / 4));
    2428:	48 89 da             	mov    %rbx,%rdx
    242b:	4c 89 f7             	mov    %r14,%rdi
    242e:	48 8d 35 5b 03 00 00 	lea    0x35b(%rip),%rsi        # 2790 <troubleGr(int)>
    2435:	c7 44 24 50 00 00 00 	movl   $0x0,0x50(%rsp)
    243c:	00 
    243d:	e8 de 07 00 00       	callq  2c20 <std::thread::thread<void (&)(int), int, void>(void (&)(int), int&&)>
	std::thread trouble_thread2(troubleGr, 2 * (N / 4));
    2442:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
    2447:	48 89 da             	mov    %rbx,%rdx
    244a:	48 8d 35 3f 03 00 00 	lea    0x33f(%rip),%rsi        # 2790 <troubleGr(int)>
    2451:	c7 44 24 50 80 f0 fa 	movl   $0x2faf080,0x50(%rsp)
    2458:	02 
    2459:	4c 89 ef             	mov    %r13,%rdi
    245c:	e8 bf 07 00 00       	callq  2c20 <std::thread::thread<void (&)(int), int, void>(void (&)(int), int&&)>

	std::thread read_thread1(readGr, 2, 1 * 1000 * 1000);
    2461:	48 8d 6c 24 48       	lea    0x48(%rsp),%rbp
    2466:	4c 8d 64 24 38       	lea    0x38(%rsp),%r12
    246b:	48 89 d9             	mov    %rbx,%rcx
    246e:	c7 44 24 50 40 42 0f 	movl   $0xf4240,0x50(%rsp)
    2475:	00 
    2476:	48 89 ea             	mov    %rbp,%rdx
    2479:	48 8d 35 b0 04 00 00 	lea    0x4b0(%rip),%rsi        # 2930 <readGr(int, int)>
    2480:	4c 89 e7             	mov    %r12,%rdi
    2483:	c7 44 24 48 02 00 00 	movl   $0x2,0x48(%rsp)
    248a:	00 
    248b:	e8 40 08 00 00       	callq  2cd0 <std::thread::thread<void (&)(int, int), int, int, void>(void (&)(int, int), int&&, int&&)>
	std::thread read_thread2(readGr, 3, 2 * 1000 * 1000);
    2490:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    2495:	48 89 ea             	mov    %rbp,%rdx
    2498:	48 8d 35 91 04 00 00 	lea    0x491(%rip),%rsi        # 2930 <readGr(int, int)>
    249f:	c7 44 24 50 80 84 1e 	movl   $0x1e8480,0x50(%rsp)
    24a6:	00 
    24a7:	48 89 cf             	mov    %rcx,%rdi
    24aa:	48 89 d9             	mov    %rbx,%rcx
    24ad:	c7 44 24 48 03 00 00 	movl   $0x3,0x48(%rsp)
    24b4:	00 
    24b5:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    24ba:	e8 11 08 00 00       	callq  2cd0 <std::thread::thread<void (&)(int, int), int, int, void>(void (&)(int, int), int&&, int&&)>
	std::thread read_thread3(readGr, 4, 3 * 1000 * 1000);
    24bf:	48 8d 54 24 1c       	lea    0x1c(%rsp),%rdx
    24c4:	48 89 d9             	mov    %rbx,%rcx
    24c7:	48 8d 35 62 04 00 00 	lea    0x462(%rip),%rsi        # 2930 <readGr(int, int)>
    24ce:	48 89 ef             	mov    %rbp,%rdi
    24d1:	c7 44 24 50 c0 c6 2d 	movl   $0x2dc6c0,0x50(%rsp)
    24d8:	00 
    24d9:	c7 44 24 1c 04 00 00 	movl   $0x4,0x1c(%rsp)
    24e0:	00 
    24e1:	e8 ea 07 00 00       	callq  2cd0 <std::thread::thread<void (&)(int, int), int, int, void>(void (&)(int, int), int&&, int&&)>

	write_thread.join();
    24e6:	4c 89 ff             	mov    %r15,%rdi
    24e9:	e8 12 fe ff ff       	callq  2300 <std::thread::join()@plt>
	trouble_thread1.detach();
    24ee:	4c 89 f7             	mov    %r14,%rdi
    24f1:	e8 2a fe ff ff       	callq  2320 <std::thread::detach()@plt>
	trouble_thread2.detach();
    24f6:	4c 89 ef             	mov    %r13,%rdi
    24f9:	e8 22 fe ff ff       	callq  2320 <std::thread::detach()@plt>
	read_thread1.join();
    24fe:	4c 89 e7             	mov    %r12,%rdi
    2501:	e8 fa fd ff ff       	callq  2300 <std::thread::join()@plt>
	read_thread2.join();
    2506:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    250b:	e8 f0 fd ff ff       	callq  2300 <std::thread::join()@plt>
	read_thread3.join();
    2510:	48 89 ef             	mov    %rbp,%rdi
    2513:	e8 e8 fd ff ff       	callq  2300 <std::thread::join()@plt>

	auto d = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::steady_clock::now() - bt);
    2518:	e8 b3 fd ff ff       	callq  22d0 <std::chrono::_V2::steady_clock::now()@plt>
    operator<<(basic_ostream<char, _Traits>& __out, const char* __s)
    {
      if (!__s)
	__out.setstate(ios_base::badbit);
      else
	__ostream_insert(__out, __s,
    251d:	48 8d 35 f3 0a 00 00 	lea    0xaf3(%rip),%rsi        # 3017 <_IO_stdin_used+0x17>
	  static constexpr _ToDur
	  __cast(const duration<_Rep, _Period>& __d)
	  {
	    typedef typename _ToDur::rep			__to_rep;
	    return _ToDur(static_cast<__to_rep>(
	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
    2524:	48 ba db 34 b6 d7 82 	movabs $0x431bde82d7b634db,%rdx
    252b:	de 1b 43 
    252e:	48 8d 3d 0b 2b 00 00 	lea    0x2b0b(%rip),%rdi        # 5040 <std::cout@@GLIBCXX_3.4>
		const duration<_Rep2, _Period2>& __rhs)
      {
	typedef duration<_Rep1, _Period1>			__dur1;
	typedef duration<_Rep2, _Period2>			__dur2;
	typedef typename common_type<__dur1,__dur2>::type	__cd;
	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
    2535:	48 89 c1             	mov    %rax,%rcx
    2538:	48 2b 0c 24          	sub    (%rsp),%rcx
	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
    253c:	48 89 c8             	mov    %rcx,%rax
    253f:	48 c1 f9 3f          	sar    $0x3f,%rcx
    2543:	48 f7 ea             	imul   %rdx
    2546:	48 c1 fa 12          	sar    $0x12,%rdx
    254a:	48 29 ca             	sub    %rcx,%rdx
    254d:	48 89 d5             	mov    %rdx,%rbp
    2550:	ba 0e 00 00 00       	mov    $0xe,%edx
    2555:	e8 46 fd ff ff       	callq  22a0 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>
      { return _M_insert(__n); }
    255a:	48 89 ee             	mov    %rbp,%rsi
    255d:	48 8d 3d dc 2a 00 00 	lea    0x2adc(%rip),%rdi        # 5040 <std::cout@@GLIBCXX_3.4>
    2564:	e8 f7 fc ff ff       	callq  2260 <std::ostream& std::ostream::_M_insert<long>(long)@plt>
	__ostream_insert(__out, __s,
    2569:	ba 03 00 00 00       	mov    $0x3,%edx
    256e:	48 8d 35 b1 0a 00 00 	lea    0xab1(%rip),%rsi        # 3026 <_IO_stdin_used+0x26>
    2575:	48 89 c7             	mov    %rax,%rdi
      { return _M_insert(__n); }
    2578:	48 89 c5             	mov    %rax,%rbp
	__ostream_insert(__out, __s,
    257b:	e8 20 fd ff ff       	callq  22a0 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>
	return __pf(*this);
    2580:	48 89 ef             	mov    %rbp,%rdi
    2583:	e8 98 fc ff ff       	callq  2220 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@plt>
	if (__rtime <= __rtime.zero())
	  return;
	auto __s = chrono::duration_cast<chrono::seconds>(__rtime);
	auto __ns = chrono::duration_cast<chrono::nanoseconds>(__rtime - __s);
#ifdef _GLIBCXX_USE_NANOSLEEP
	__gthread_time_t __ts =
    2588:	66 0f 6f 05 30 0b 00 	movdqa 0xb30(%rip),%xmm0        # 30c0 <typeinfo name for std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >+0x40>
    258f:	00 
    2590:	0f 29 44 24 50       	movaps %xmm0,0x50(%rsp)
    2595:	eb 13                	jmp    25aa <main+0x21a>
    2597:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    259e:	00 00 
	  {
	    static_cast<std::time_t>(__s.count()),
	    static_cast<long>(__ns.count())
	  };
	while (::nanosleep(&__ts, &__ts) == -1 && errno == EINTR)
    25a0:	e8 3b fc ff ff       	callq  21e0 <__errno_location@plt>
    25a5:	83 38 04             	cmpl   $0x4,(%rax)
    25a8:	75 10                	jne    25ba <main+0x22a>
    25aa:	48 89 de             	mov    %rbx,%rsi
    25ad:	48 89 df             	mov    %rbx,%rdi
    25b0:	e8 4b fc ff ff       	callq  2200 <nanosleep@plt>
    25b5:	83 f8 ff             	cmp    $0xffffffff,%eax
    25b8:	74 e6                	je     25a0 <main+0x210>
      if (joinable())
    25ba:	48 83 7c 24 48 00    	cmpq   $0x0,0x48(%rsp)
    25c0:	75 49                	jne    260b <main+0x27b>
    25c2:	48 83 7c 24 40 00    	cmpq   $0x0,0x40(%rsp)
    25c8:	75 41                	jne    260b <main+0x27b>
    25ca:	48 83 7c 24 38 00    	cmpq   $0x0,0x38(%rsp)
    25d0:	75 39                	jne    260b <main+0x27b>
    25d2:	48 83 7c 24 30 00    	cmpq   $0x0,0x30(%rsp)
    25d8:	75 31                	jne    260b <main+0x27b>
    25da:	48 83 7c 24 28 00    	cmpq   $0x0,0x28(%rsp)
    25e0:	75 29                	jne    260b <main+0x27b>
    25e2:	48 83 7c 24 20 00    	cmpq   $0x0,0x20(%rsp)
    25e8:	75 21                	jne    260b <main+0x27b>
	std::cout << "Time elapsed: " << d.count() << " ms" << std::endl;

	std::this_thread::sleep_for(std::chrono::milliseconds(1));

	return 0;
}
    25ea:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    25ef:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    25f6:	00 00 
    25f8:	75 16                	jne    2610 <main+0x280>
    25fa:	48 83 c4 78          	add    $0x78,%rsp
    25fe:	31 c0                	xor    %eax,%eax
    2600:	5b                   	pop    %rbx
    2601:	5d                   	pop    %rbp
    2602:	41 5c                	pop    %r12
    2604:	41 5d                	pop    %r13
    2606:	41 5e                	pop    %r14
    2608:	41 5f                	pop    %r15
    260a:	c3                   	retq   
	std::terminate();
    260b:	e8 e0 fb ff ff       	callq  21f0 <std::terminate()@plt>
    2610:	e8 7b fc ff ff       	callq  2290 <__stack_chk_fail@plt>
    2615:	f3 0f 1e fa          	endbr64 
    2619:	48 89 c7             	mov    %rax,%rdi
    261c:	e9 1f fd ff ff       	jmpq   2340 <main.cold>
    2621:	f3 0f 1e fa          	endbr64 
    2625:	48 89 c7             	mov    %rax,%rdi
    2628:	e9 1f fd ff ff       	jmpq   234c <main.cold+0xc>
    262d:	f3 0f 1e fa          	endbr64 
    2631:	48 89 c7             	mov    %rax,%rdi
    2634:	e9 1f fd ff ff       	jmpq   2358 <main.cold+0x18>
    2639:	f3 0f 1e fa          	endbr64 
    263d:	48 89 c7             	mov    %rax,%rdi
    2640:	e9 2b fd ff ff       	jmpq   2370 <main.cold+0x30>
    2645:	f3 0f 1e fa          	endbr64 
    2649:	48 89 c7             	mov    %rax,%rdi
    264c:	e9 2b fd ff ff       	jmpq   237c <main.cold+0x3c>
    2651:	f3 0f 1e fa          	endbr64 
    2655:	48 89 c7             	mov    %rax,%rdi
    2658:	e9 07 fd ff ff       	jmpq   2364 <main.cold+0x24>
    265d:	0f 1f 00             	nopl   (%rax)

0000000000002660 <_GLOBAL__sub_I_arrI>:
    2660:	f3 0f 1e fa          	endbr64 
    2664:	48 83 ec 08          	sub    $0x8,%rsp
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  //@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
    2668:	48 8d 3d 09 2b 00 00 	lea    0x2b09(%rip),%rdi        # 5178 <std::__ioinit>
    266f:	e8 6c fc ff ff       	callq  22e0 <std::ios_base::Init::Init()@plt>
    2674:	48 8b 3d 7d 29 00 00 	mov    0x297d(%rip),%rdi        # 4ff8 <std::ios_base::Init::~Init()@GLIBCXX_3.4>
    267b:	48 83 c4 08          	add    $0x8,%rsp
    267f:	48 8d 15 82 29 00 00 	lea    0x2982(%rip),%rdx        # 5008 <__dso_handle>
    2686:	48 8d 35 eb 2a 00 00 	lea    0x2aeb(%rip),%rsi        # 5178 <std::__ioinit>
    268d:	e9 ae fb ff ff       	jmpq   2240 <__cxa_atexit@plt>
    2692:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2699:	00 00 00 
    269c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000026a0 <_start>:
    26a0:	f3 0f 1e fa          	endbr64 
    26a4:	31 ed                	xor    %ebp,%ebp
    26a6:	49 89 d1             	mov    %rdx,%r9
    26a9:	5e                   	pop    %rsi
    26aa:	48 89 e2             	mov    %rsp,%rdx
    26ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    26b1:	50                   	push   %rax
    26b2:	54                   	push   %rsp
    26b3:	4c 8d 05 46 07 00 00 	lea    0x746(%rip),%r8        # 2e00 <__libc_csu_fini>
    26ba:	48 8d 0d cf 06 00 00 	lea    0x6cf(%rip),%rcx        # 2d90 <__libc_csu_init>
    26c1:	48 8d 3d c8 fc ff ff 	lea    -0x338(%rip),%rdi        # 2390 <main>
    26c8:	ff 15 12 29 00 00    	callq  *0x2912(%rip)        # 4fe0 <__libc_start_main@GLIBC_2.2.5>
    26ce:	f4                   	hlt    
    26cf:	90                   	nop

00000000000026d0 <deregister_tm_clones>:
    26d0:	48 8d 3d 41 29 00 00 	lea    0x2941(%rip),%rdi        # 5018 <__TMC_END__>
    26d7:	48 8d 05 3a 29 00 00 	lea    0x293a(%rip),%rax        # 5018 <__TMC_END__>
    26de:	48 39 f8             	cmp    %rdi,%rax
    26e1:	74 15                	je     26f8 <deregister_tm_clones+0x28>
    26e3:	48 8b 05 ee 28 00 00 	mov    0x28ee(%rip),%rax        # 4fd8 <_ITM_deregisterTMCloneTable>
    26ea:	48 85 c0             	test   %rax,%rax
    26ed:	74 09                	je     26f8 <deregister_tm_clones+0x28>
    26ef:	ff e0                	jmpq   *%rax
    26f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    26f8:	c3                   	retq   
    26f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002700 <register_tm_clones>:
    2700:	48 8d 3d 11 29 00 00 	lea    0x2911(%rip),%rdi        # 5018 <__TMC_END__>
    2707:	48 8d 35 0a 29 00 00 	lea    0x290a(%rip),%rsi        # 5018 <__TMC_END__>
    270e:	48 29 fe             	sub    %rdi,%rsi
    2711:	48 89 f0             	mov    %rsi,%rax
    2714:	48 c1 ee 3f          	shr    $0x3f,%rsi
    2718:	48 c1 f8 03          	sar    $0x3,%rax
    271c:	48 01 c6             	add    %rax,%rsi
    271f:	48 d1 fe             	sar    %rsi
    2722:	74 14                	je     2738 <register_tm_clones+0x38>
    2724:	48 8b 05 c5 28 00 00 	mov    0x28c5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable>
    272b:	48 85 c0             	test   %rax,%rax
    272e:	74 08                	je     2738 <register_tm_clones+0x38>
    2730:	ff e0                	jmpq   *%rax
    2732:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2738:	c3                   	retq   
    2739:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002740 <__do_global_dtors_aux>:
    2740:	f3 0f 1e fa          	endbr64 
    2744:	80 3d 05 2a 00 00 00 	cmpb   $0x0,0x2a05(%rip)        # 5150 <completed.8060>
    274b:	75 2b                	jne    2778 <__do_global_dtors_aux+0x38>
    274d:	55                   	push   %rbp
    274e:	48 83 3d 72 28 00 00 	cmpq   $0x0,0x2872(%rip)        # 4fc8 <__cxa_finalize@GLIBC_2.2.5>
    2755:	00 
    2756:	48 89 e5             	mov    %rsp,%rbp
    2759:	74 0c                	je     2767 <__do_global_dtors_aux+0x27>
    275b:	48 8b 3d a6 28 00 00 	mov    0x28a6(%rip),%rdi        # 5008 <__dso_handle>
    2762:	e8 49 fa ff ff       	callq  21b0 <__cxa_finalize@plt>
    2767:	e8 64 ff ff ff       	callq  26d0 <deregister_tm_clones>
    276c:	c6 05 dd 29 00 00 01 	movb   $0x1,0x29dd(%rip)        # 5150 <completed.8060>
    2773:	5d                   	pop    %rbp
    2774:	c3                   	retq   
    2775:	0f 1f 00             	nopl   (%rax)
    2778:	c3                   	retq   
    2779:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002780 <frame_dummy>:
    2780:	f3 0f 1e fa          	endbr64 
    2784:	e9 77 ff ff ff       	jmpq   2700 <register_tm_clones>
    2789:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002790 <troubleGr(int)>:
void troubleGr(int offset) {
    2790:	f3 0f 1e fa          	endbr64 
    2794:	41 89 f9             	mov    %edi,%r9d
			arrI[2 * p + 1] = i;
    2797:	4c 8b 05 d2 29 00 00 	mov    0x29d2(%rip),%r8        # 5170 <arrI>
			arrJ[2 * p + 1] = i;
    279e:	48 8b 3d c3 29 00 00 	mov    0x29c3(%rip),%rdi        # 5168 <arrJ>
			arrK[2 * p + 1] = i;
    27a5:	48 8b 35 b4 29 00 00 	mov    0x29b4(%rip),%rsi        # 5160 <arrK>
    27ac:	0f 1f 40 00          	nopl   0x0(%rax)
		for (int i = 0; i < N; i++) {
    27b0:	44 89 ca             	mov    %r9d,%edx
    27b3:	31 c0                	xor    %eax,%eax
    27b5:	eb 2e                	jmp    27e5 <troubleGr(int)+0x55>
    27b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    27be:	00 00 
			arrI[2 * p + 1] = i;
    27c0:	8d 8c 12 00 3e 14 f4 	lea    -0xbebc200(%rdx,%rdx,1),%ecx
    27c7:	48 63 c9             	movslq %ecx,%rcx
    27ca:	83 c2 01             	add    $0x1,%edx
    27cd:	48 83 c1 01          	add    $0x1,%rcx
    27d1:	41 89 04 88          	mov    %eax,(%r8,%rcx,4)
			arrJ[2 * p + 1] = i;
    27d5:	89 04 8f             	mov    %eax,(%rdi,%rcx,4)
			arrK[2 * p + 1] = i;
    27d8:	89 04 8e             	mov    %eax,(%rsi,%rcx,4)
		for (int i = 0; i < N; i++) {
    27db:	83 c0 01             	add    $0x1,%eax
    27de:	3d 00 e1 f5 05       	cmp    $0x5f5e100,%eax
    27e3:	74 cb                	je     27b0 <troubleGr(int)+0x20>
			if (p >= N) {
    27e5:	81 fa ff e0 f5 05    	cmp    $0x5f5e0ff,%edx
    27eb:	7f d3                	jg     27c0 <troubleGr(int)+0x30>
			arrI[2 * p + 1] = i;
    27ed:	8d 0c 12             	lea    (%rdx,%rdx,1),%ecx
    27f0:	eb d5                	jmp    27c7 <troubleGr(int)+0x37>
    27f2:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    27f9:	00 00 00 00 
    27fd:	0f 1f 00             	nopl   (%rax)

0000000000002800 <writeGr(int)>:
void writeGr(int index) {
    2800:	f3 0f 1e fa          	endbr64 
    2804:	41 54                	push   %r12
    2806:	41 89 f9             	mov    %edi,%r9d
    2809:	55                   	push   %rbp
    280a:	48 83 ec 28          	sub    $0x28,%rsp
		arrI[2 * i] = 1;
    280e:	4c 8b 05 5b 29 00 00 	mov    0x295b(%rip),%r8        # 5170 <arrI>
		arrJ[2 * i] = 2;
    2815:	48 8b 35 4c 29 00 00 	mov    0x294c(%rip),%rsi        # 5168 <arrJ>
void writeGr(int index) {
    281c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2823:	00 00 
    2825:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    282a:	31 c0                	xor    %eax,%eax
		arrK[2 * i] = 3;
    282c:	48 8b 0d 2d 29 00 00 	mov    0x292d(%rip),%rcx        # 5160 <arrK>
		flags[i] = true;
    2833:	48 8b 15 1e 29 00 00 	mov    0x291e(%rip),%rdx        # 5158 <flags>
    283a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
		arrI[2 * i] = 1;
    2840:	41 c7 04 c0 01 00 00 	movl   $0x1,(%r8,%rax,8)
    2847:	00 
		arrJ[2 * i] = 2;
    2848:	c7 04 c6 02 00 00 00 	movl   $0x2,(%rsi,%rax,8)
		arrK[2 * i] = 3;
    284f:	c7 04 c1 03 00 00 00 	movl   $0x3,(%rcx,%rax,8)
		flags[i] = true;
    2856:	c6 04 02 01          	movb   $0x1,(%rdx,%rax,1)
	for (int i = 0; i < N; i++) {
    285a:	48 83 c0 01          	add    $0x1,%rax
    285e:	48 3d 00 e1 f5 05    	cmp    $0x5f5e100,%rax
    2864:	75 da                	jne    2840 <writeGr(int)+0x40>
	std::cout << index << " done, now=" << Timer::NowMicroSec() << std::endl;
    2866:	44 89 ce             	mov    %r9d,%esi
    2869:	48 8d 3d d0 27 00 00 	lea    0x27d0(%rip),%rdi        # 5040 <std::cout@@GLIBCXX_3.4>
    2870:	e8 9b fa ff ff       	callq  2310 <std::ostream::operator<<(int)@plt>
	__ostream_insert(__out, __s,
    2875:	ba 0b 00 00 00       	mov    $0xb,%edx
    287a:	48 8d 35 83 07 00 00 	lea    0x783(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    2881:	48 89 c7             	mov    %rax,%rdi
    2884:	48 89 c5             	mov    %rax,%rbp
    2887:	e8 14 fa ff ff       	callq  22a0 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>
		printf("Timer(%s), elapsed=%ld MICRO SECONDS\n", _desc.c_str(), l);
        }

	static int64_t NowMicroSec() {
		timeval t;
                gettimeofday(&t, 0); 
    288c:	48 89 e7             	mov    %rsp,%rdi
    288f:	31 f6                	xor    %esi,%esi
    2891:	e8 5a fa ff ff       	callq  22f0 <gettimeofday@plt>
		return t.tv_sec*1000000+t.tv_usec;
    2896:	48 69 34 24 40 42 0f 	imul   $0xf4240,(%rsp),%rsi
    289d:	00 
      { return _M_insert(__n); }
    289e:	48 89 ef             	mov    %rbp,%rdi
    28a1:	48 03 74 24 08       	add    0x8(%rsp),%rsi
    28a6:	e8 b5 f9 ff ff       	callq  2260 <std::ostream& std::ostream::_M_insert<long>(long)@plt>
    28ab:	48 89 c5             	mov    %rax,%rbp
   *  for more on this subject.
  */
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    endl(basic_ostream<_CharT, _Traits>& __os)
    { return flush(__os.put(__os.widen('\n'))); }
    28ae:	48 8b 00             	mov    (%rax),%rax
       *  Additional l10n notes are at
       *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/localization.html
      */
      char_type
      widen(char __c) const
      { return __check_facet(_M_ctype).widen(__c); }
    28b1:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    28b5:	4c 8b a4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%r12
    28bc:	00 
      if (!__f)
    28bd:	4d 85 e4             	test   %r12,%r12
    28c0:	74 66                	je     2928 <writeGr(int)+0x128>
       *  @return  The converted character.
      */
      char_type
      widen(char __c) const
      {
	if (_M_widen_ok)
    28c2:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
    28c8:	74 2e                	je     28f8 <writeGr(int)+0xf8>
	  return _M_widen[static_cast<unsigned char>(__c)];
    28ca:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
    28d0:	48 89 ef             	mov    %rbp,%rdi
    28d3:	e8 f8 f8 ff ff       	callq  21d0 <std::ostream::put(char)@plt>
    28d8:	48 89 c7             	mov    %rax,%rdi
   *  This manipulator simply calls the stream's @c flush() member function.
  */
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    flush(basic_ostream<_CharT, _Traits>& __os)
    { return __os.flush(); }
    28db:	e8 50 f9 ff ff       	callq  2230 <std::ostream::flush()@plt>
}
    28e0:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    28e5:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    28ec:	00 00 
    28ee:	75 33                	jne    2923 <writeGr(int)+0x123>
    28f0:	48 83 c4 28          	add    $0x28,%rsp
    28f4:	5d                   	pop    %rbp
    28f5:	41 5c                	pop    %r12
    28f7:	c3                   	retq   
	this->_M_widen_init();
    28f8:	4c 89 e7             	mov    %r12,%rdi
    28fb:	e8 b0 f9 ff ff       	callq  22b0 <std::ctype<char>::_M_widen_init() const@plt>
	return this->do_widen(__c);
    2900:	49 8b 04 24          	mov    (%r12),%rax
    2904:	be 0a 00 00 00       	mov    $0xa,%esi
    2909:	48 8d 15 20 02 00 00 	lea    0x220(%rip),%rdx        # 2b30 <std::ctype<char>::do_widen(char) const>
    2910:	48 8b 40 30          	mov    0x30(%rax),%rax
    2914:	48 39 d0             	cmp    %rdx,%rax
    2917:	74 b7                	je     28d0 <writeGr(int)+0xd0>
    2919:	4c 89 e7             	mov    %r12,%rdi
    291c:	ff d0                	callq  *%rax
    291e:	0f be f0             	movsbl %al,%esi
    2921:	eb ad                	jmp    28d0 <writeGr(int)+0xd0>
    2923:	e8 68 f9 ff ff       	callq  2290 <__stack_chk_fail@plt>
	__throw_bad_cast();
    2928:	e8 93 f9 ff ff       	callq  22c0 <std::__throw_bad_cast()@plt>
    292d:	0f 1f 00             	nopl   (%rax)

0000000000002930 <readGr(int, int)>:
void readGr(int index, int offset) {
    2930:	f3 0f 1e fa          	endbr64 
    2934:	41 57                	push   %r15
    2936:	41 56                	push   %r14
    2938:	41 55                	push   %r13
    293a:	41 54                	push   %r12
    293c:	41 89 fc             	mov    %edi,%r12d
    293f:	55                   	push   %rbp
    2940:	53                   	push   %rbx
    2941:	48 83 ec 28          	sub    $0x28,%rsp
    2945:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    294c:	00 00 
    294e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2953:	31 c0                	xor    %eax,%eax
	for (int i = offset; i < N; i++) {
    2955:	81 fe ff e0 f5 05    	cmp    $0x5f5e0ff,%esi
    295b:	0f 8f bd 00 00 00    	jg     2a1e <readGr(int, int)+0xee>
    2961:	b8 ff e0 f5 05       	mov    $0x5f5e0ff,%eax
    2966:	48 63 de             	movslq %esi,%rbx
    2969:	4c 8d 2d c0 01 00 00 	lea    0x1c0(%rip),%r13        # 2b30 <std::ctype<char>::do_widen(char) const>
    2970:	29 f0                	sub    %esi,%eax
    2972:	48 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%rbp
    2977:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    297e:	00 00 
			if (flags[i]) {
    2980:	48 8b 05 d1 27 00 00 	mov    0x27d1(%rip),%rax        # 5158 <flags>
    2987:	80 3c 18 00          	cmpb   $0x0,(%rax,%rbx,1)
    298b:	75 03                	jne    2990 <readGr(int, int)+0x60>
    298d:	eb fe                	jmp    298d <readGr(int, int)+0x5d>
    298f:	90                   	nop
				if (arrI[2 * i] + arrJ[2 * i] + arrK[2 * i] != 6) {
    2990:	48 8b 15 d9 27 00 00 	mov    0x27d9(%rip),%rdx        # 5170 <arrI>
    2997:	48 8b 05 ca 27 00 00 	mov    0x27ca(%rip),%rax        # 5168 <arrJ>
    299e:	8b 04 d8             	mov    (%rax,%rbx,8),%eax
    29a1:	03 04 da             	add    (%rdx,%rbx,8),%eax
    29a4:	48 8b 15 b5 27 00 00 	mov    0x27b5(%rip),%rdx        # 5160 <arrK>
    29ab:	03 04 da             	add    (%rdx,%rbx,8),%eax
    29ae:	83 f8 06             	cmp    $0x6,%eax
    29b1:	74 5e                	je     2a11 <readGr(int, int)+0xe1>
					std::cout << index << " error" << std::endl;
    29b3:	44 89 e6             	mov    %r12d,%esi
    29b6:	48 8d 3d 83 26 00 00 	lea    0x2683(%rip),%rdi        # 5040 <std::cout@@GLIBCXX_3.4>
    29bd:	e8 4e f9 ff ff       	callq  2310 <std::ostream::operator<<(int)@plt>
	__ostream_insert(__out, __s,
    29c2:	ba 06 00 00 00       	mov    $0x6,%edx
    29c7:	48 8d 35 42 06 00 00 	lea    0x642(%rip),%rsi        # 3010 <_IO_stdin_used+0x10>
    29ce:	49 89 c6             	mov    %rax,%r14
    29d1:	48 89 c7             	mov    %rax,%rdi
    29d4:	e8 c7 f8 ff ff       	callq  22a0 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>
    { return flush(__os.put(__os.widen('\n'))); }
    29d9:	49 8b 06             	mov    (%r14),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    29dc:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    29e0:	4d 8b bc 06 f0 00 00 	mov    0xf0(%r14,%rax,1),%r15
    29e7:	00 
      if (!__f)
    29e8:	4d 85 ff             	test   %r15,%r15
    29eb:	0f 84 27 01 00 00    	je     2b18 <readGr(int, int)+0x1e8>
	if (_M_widen_ok)
    29f1:	41 80 7f 38 00       	cmpb   $0x0,0x38(%r15)
    29f6:	0f 84 c4 00 00 00    	je     2ac0 <readGr(int, int)+0x190>
	  return _M_widen[static_cast<unsigned char>(__c)];
    29fc:	41 0f be 77 43       	movsbl 0x43(%r15),%esi
    2a01:	4c 89 f7             	mov    %r14,%rdi
    2a04:	e8 c7 f7 ff ff       	callq  21d0 <std::ostream::put(char)@plt>
    2a09:	48 89 c7             	mov    %rax,%rdi
    { return __os.flush(); }
    2a0c:	e8 1f f8 ff ff       	callq  2230 <std::ostream::flush()@plt>
	for (int i = offset; i < N; i++) {
    2a11:	48 83 c3 01          	add    $0x1,%rbx
    2a15:	48 39 eb             	cmp    %rbp,%rbx
    2a18:	0f 85 62 ff ff ff    	jne    2980 <readGr(int, int)+0x50>
	std::cout << index << " done, now=" << Timer::NowMicroSec() << std::endl;
    2a1e:	44 89 e6             	mov    %r12d,%esi
    2a21:	48 8d 3d 18 26 00 00 	lea    0x2618(%rip),%rdi        # 5040 <std::cout@@GLIBCXX_3.4>
    2a28:	e8 e3 f8 ff ff       	callq  2310 <std::ostream::operator<<(int)@plt>
	__ostream_insert(__out, __s,
    2a2d:	ba 0b 00 00 00       	mov    $0xb,%edx
    2a32:	48 8d 35 cb 05 00 00 	lea    0x5cb(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    2a39:	48 89 c7             	mov    %rax,%rdi
    2a3c:	48 89 c5             	mov    %rax,%rbp
    2a3f:	e8 5c f8 ff ff       	callq  22a0 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>
                gettimeofday(&t, 0); 
    2a44:	48 89 e7             	mov    %rsp,%rdi
    2a47:	31 f6                	xor    %esi,%esi
    2a49:	e8 a2 f8 ff ff       	callq  22f0 <gettimeofday@plt>
		return t.tv_sec*1000000+t.tv_usec;
    2a4e:	48 69 34 24 40 42 0f 	imul   $0xf4240,(%rsp),%rsi
    2a55:	00 
      { return _M_insert(__n); }
    2a56:	48 89 ef             	mov    %rbp,%rdi
    2a59:	48 03 74 24 08       	add    0x8(%rsp),%rsi
    2a5e:	e8 fd f7 ff ff       	callq  2260 <std::ostream& std::ostream::_M_insert<long>(long)@plt>
    2a63:	48 89 c5             	mov    %rax,%rbp
    { return flush(__os.put(__os.widen('\n'))); }
    2a66:	48 8b 00             	mov    (%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    2a69:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    2a6d:	4c 8b a4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%r12
    2a74:	00 
      if (!__f)
    2a75:	4d 85 e4             	test   %r12,%r12
    2a78:	0f 84 9a 00 00 00    	je     2b18 <readGr(int, int)+0x1e8>
	if (_M_widen_ok)
    2a7e:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
    2a84:	74 64                	je     2aea <readGr(int, int)+0x1ba>
	  return _M_widen[static_cast<unsigned char>(__c)];
    2a86:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
    2a8c:	48 89 ef             	mov    %rbp,%rdi
    2a8f:	e8 3c f7 ff ff       	callq  21d0 <std::ostream::put(char)@plt>
    2a94:	48 89 c7             	mov    %rax,%rdi
    { return __os.flush(); }
    2a97:	e8 94 f7 ff ff       	callq  2230 <std::ostream::flush()@plt>
}
    2a9c:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    2aa1:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2aa8:	00 00 
    2aaa:	75 71                	jne    2b1d <readGr(int, int)+0x1ed>
    2aac:	48 83 c4 28          	add    $0x28,%rsp
    2ab0:	5b                   	pop    %rbx
    2ab1:	5d                   	pop    %rbp
    2ab2:	41 5c                	pop    %r12
    2ab4:	41 5d                	pop    %r13
    2ab6:	41 5e                	pop    %r14
    2ab8:	41 5f                	pop    %r15
    2aba:	c3                   	retq   
    2abb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	this->_M_widen_init();
    2ac0:	4c 89 ff             	mov    %r15,%rdi
    2ac3:	e8 e8 f7 ff ff       	callq  22b0 <std::ctype<char>::_M_widen_init() const@plt>
	return this->do_widen(__c);
    2ac8:	49 8b 07             	mov    (%r15),%rax
    2acb:	be 0a 00 00 00       	mov    $0xa,%esi
    2ad0:	48 8b 40 30          	mov    0x30(%rax),%rax
    2ad4:	4c 39 e8             	cmp    %r13,%rax
    2ad7:	0f 84 24 ff ff ff    	je     2a01 <readGr(int, int)+0xd1>
    2add:	4c 89 ff             	mov    %r15,%rdi
    2ae0:	ff d0                	callq  *%rax
    2ae2:	0f be f0             	movsbl %al,%esi
    2ae5:	e9 17 ff ff ff       	jmpq   2a01 <readGr(int, int)+0xd1>
	this->_M_widen_init();
    2aea:	4c 89 e7             	mov    %r12,%rdi
    2aed:	e8 be f7 ff ff       	callq  22b0 <std::ctype<char>::_M_widen_init() const@plt>
	return this->do_widen(__c);
    2af2:	49 8b 04 24          	mov    (%r12),%rax
    2af6:	be 0a 00 00 00       	mov    $0xa,%esi
    2afb:	48 8d 15 2e 00 00 00 	lea    0x2e(%rip),%rdx        # 2b30 <std::ctype<char>::do_widen(char) const>
    2b02:	48 8b 40 30          	mov    0x30(%rax),%rax
    2b06:	48 39 d0             	cmp    %rdx,%rax
    2b09:	74 81                	je     2a8c <readGr(int, int)+0x15c>
    2b0b:	4c 89 e7             	mov    %r12,%rdi
    2b0e:	ff d0                	callq  *%rax
    2b10:	0f be f0             	movsbl %al,%esi
    2b13:	e9 74 ff ff ff       	jmpq   2a8c <readGr(int, int)+0x15c>
	__throw_bad_cast();
    2b18:	e8 a3 f7 ff ff       	callq  22c0 <std::__throw_bad_cast()@plt>
    2b1d:	e8 6e f7 ff ff       	callq  2290 <__stack_chk_fail@plt>
    2b22:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2b29:	00 00 00 
    2b2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002b30 <std::ctype<char>::do_widen(char) const>:
       *
       *  @param __c  The char to convert.
       *  @return  The converted character.
      */
      virtual char_type
      do_widen(char __c) const
    2b30:	f3 0f 1e fa          	endbr64 
    2b34:	89 f0                	mov    %esi,%eax
      { return __c; }
    2b36:	c3                   	retq   
    2b37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    2b3e:	00 00 

0000000000002b40 <std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >::_M_run()>:
	_M_run() { _M_func(); }
    2b40:	f3 0f 1e fa          	endbr64 
    { return static_cast<_Up&&>(__t); }

  template<typename _Res, typename _Fn, typename... _Args>
    constexpr _Res
    __invoke_impl(__invoke_other, _Fn&& __f, _Args&&... __args)
    { return std::forward<_Fn>(__f)(std::forward<_Args>(__args)...); }
    2b44:	44 8b 47 0c          	mov    0xc(%rdi),%r8d
    2b48:	8b 77 08             	mov    0x8(%rdi),%esi
    2b4b:	48 8b 47 10          	mov    0x10(%rdi),%rax
    2b4f:	44 89 c7             	mov    %r8d,%edi
    2b52:	ff e0                	jmpq   *%rax
    2b54:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2b5b:	00 00 00 
    2b5e:	66 90                	xchg   %ax,%ax

0000000000002b60 <std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int), int> > >::_M_run()>:
    2b60:	f3 0f 1e fa          	endbr64 
    2b64:	44 8b 47 08          	mov    0x8(%rdi),%r8d
    2b68:	48 8b 47 10          	mov    0x10(%rdi),%rax
    2b6c:	44 89 c7             	mov    %r8d,%edi
    2b6f:	ff e0                	jmpq   *%rax
    2b71:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2b78:	00 00 00 
    2b7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002b80 <std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int), int> > >::~_State_impl()>:
      struct _State_impl : public _State
    2b80:	f3 0f 1e fa          	endbr64 
    2b84:	48 8d 05 d5 20 00 00 	lea    0x20d5(%rip),%rax        # 4c60 <vtable for std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int), int> > >+0x10>
    2b8b:	48 89 07             	mov    %rax,(%rdi)
    2b8e:	e9 7d f6 ff ff       	jmpq   2210 <std::thread::_State::~_State()@plt>
    2b93:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2b9a:	00 00 00 
    2b9d:	0f 1f 00             	nopl   (%rax)

0000000000002ba0 <std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int), int> > >::~_State_impl()>:
    2ba0:	f3 0f 1e fa          	endbr64 
    2ba4:	48 8d 05 b5 20 00 00 	lea    0x20b5(%rip),%rax        # 4c60 <vtable for std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int), int> > >+0x10>
    2bab:	55                   	push   %rbp
    2bac:	48 89 fd             	mov    %rdi,%rbp
    2baf:	48 89 07             	mov    %rax,(%rdi)
    2bb2:	e8 59 f6 ff ff       	callq  2210 <std::thread::_State::~_State()@plt>
    2bb7:	48 89 ef             	mov    %rbp,%rdi
    2bba:	be 18 00 00 00       	mov    $0x18,%esi
    2bbf:	5d                   	pop    %rbp
    2bc0:	e9 bb f6 ff ff       	jmpq   2280 <operator delete(void*, unsigned long)@plt>
    2bc5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2bcc:	00 00 00 
    2bcf:	90                   	nop

0000000000002bd0 <std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >::~_State_impl()>:
    2bd0:	f3 0f 1e fa          	endbr64 
    2bd4:	48 8d 05 ad 20 00 00 	lea    0x20ad(%rip),%rax        # 4c88 <vtable for std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >+0x10>
    2bdb:	48 89 07             	mov    %rax,(%rdi)
    2bde:	e9 2d f6 ff ff       	jmpq   2210 <std::thread::_State::~_State()@plt>
    2be3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2bea:	00 00 00 
    2bed:	0f 1f 00             	nopl   (%rax)

0000000000002bf0 <std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >::~_State_impl()>:
    2bf0:	f3 0f 1e fa          	endbr64 
    2bf4:	48 8d 05 8d 20 00 00 	lea    0x208d(%rip),%rax        # 4c88 <vtable for std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >+0x10>
    2bfb:	55                   	push   %rbp
    2bfc:	48 89 fd             	mov    %rdi,%rbp
    2bff:	48 89 07             	mov    %rax,(%rdi)
    2c02:	e8 09 f6 ff ff       	callq  2210 <std::thread::_State::~_State()@plt>
    2c07:	48 89 ef             	mov    %rbp,%rdi
    2c0a:	be 18 00 00 00       	mov    $0x18,%esi
    2c0f:	5d                   	pop    %rbp
    2c10:	e9 6b f6 ff ff       	jmpq   2280 <operator delete(void*, unsigned long)@plt>
    2c15:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2c1c:	00 00 00 
    2c1f:	90                   	nop

0000000000002c20 <std::thread::thread<void (&)(int), int, void>(void (&)(int), int&&)>:
      thread(_Callable&& __f, _Args&&... __args)
    2c20:	f3 0f 1e fa          	endbr64 
    2c24:	41 54                	push   %r12
    2c26:	55                   	push   %rbp
    2c27:	48 89 fd             	mov    %rdi,%rbp
    2c2a:	53                   	push   %rbx
    2c2b:	48 89 f3             	mov    %rsi,%rbx
    2c2e:	48 83 ec 10          	sub    $0x10,%rsp
      constexpr _Head_base(const _Head_base&) = default;
      constexpr _Head_base(_Head_base&&) = default;

      template<typename _UHead>
        constexpr _Head_base(_UHead&& __h)
	: _M_head_impl(std::forward<_UHead>(__h)) { }
    2c32:	44 8b 22             	mov    (%rdx),%r12d
    2c35:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2c3c:	00 00 
    2c3e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2c43:	31 c0                	xor    %eax,%eax
      id() noexcept : _M_thread() { }
    2c45:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
	return _State_ptr{new _Impl{std::forward<_Callable>(__f)}};
    2c4c:	bf 18 00 00 00       	mov    $0x18,%edi
    2c51:	e8 1a f6 ff ff       	callq  2270 <operator new(unsigned long)@plt>
	_State_impl(_Callable&& __f) : _M_func(std::forward<_Callable>(__f))
    2c56:	48 8d 0d 03 20 00 00 	lea    0x2003(%rip),%rcx        # 4c60 <vtable for std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int), int> > >+0x10>
        _M_start_thread(_S_make_state(
    2c5d:	48 89 e6             	mov    %rsp,%rsi
    2c60:	48 89 ef             	mov    %rbp,%rdi
	_State_impl(_Callable&& __f) : _M_func(std::forward<_Callable>(__f))
    2c63:	48 89 08             	mov    %rcx,(%rax)
        _M_start_thread(_S_make_state(
    2c66:	48 8b 15 63 23 00 00 	mov    0x2363(%rip),%rdx        # 4fd0 <pthread_create@GLIBC_2.2.5>
    2c6d:	44 89 60 08          	mov    %r12d,0x8(%rax)
    2c71:	48 89 58 10          	mov    %rbx,0x10(%rax)
      static_assert( !is_rvalue_reference<_Dp>::value,
		     "unique_ptr's deleter type must be a function object type"
		     " or an lvalue reference type" );

      __uniq_ptr_impl() = default;
      __uniq_ptr_impl(pointer __p) : _M_t() { _M_ptr() = __p; }
    2c75:	48 89 04 24          	mov    %rax,(%rsp)
    2c79:	e8 d2 f5 ff ff       	callq  2250 <std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())@plt>
      ~unique_ptr() noexcept
      {
	static_assert(__is_invocable<deleter_type&, pointer>::value,
		      "unique_ptr's deleter must be invocable with a pointer");
	auto& __ptr = _M_t._M_ptr();
	if (__ptr != nullptr)
    2c7e:	48 8b 3c 24          	mov    (%rsp),%rdi
    2c82:	48 85 ff             	test   %rdi,%rdi
    2c85:	74 06                	je     2c8d <std::thread::thread<void (&)(int), int, void>(void (&)(int), int&&)+0x6d>
	delete __ptr;
    2c87:	48 8b 07             	mov    (%rdi),%rax
    2c8a:	ff 50 08             	callq  *0x8(%rax)
      }
    2c8d:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2c92:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2c99:	00 00 
    2c9b:	75 09                	jne    2ca6 <std::thread::thread<void (&)(int), int, void>(void (&)(int), int&&)+0x86>
    2c9d:	48 83 c4 10          	add    $0x10,%rsp
    2ca1:	5b                   	pop    %rbx
    2ca2:	5d                   	pop    %rbp
    2ca3:	41 5c                	pop    %r12
    2ca5:	c3                   	retq   
    2ca6:	e8 e5 f5 ff ff       	callq  2290 <__stack_chk_fail@plt>
    2cab:	f3 0f 1e fa          	endbr64 
    2caf:	48 89 c5             	mov    %rax,%rbp
	if (__ptr != nullptr)
    2cb2:	48 8b 3c 24          	mov    (%rsp),%rdi
    2cb6:	48 85 ff             	test   %rdi,%rdi
    2cb9:	74 06                	je     2cc1 <std::thread::thread<void (&)(int), int, void>(void (&)(int), int&&)+0xa1>
	delete __ptr;
    2cbb:	48 8b 07             	mov    (%rdi),%rax
    2cbe:	ff 50 08             	callq  *0x8(%rax)
    2cc1:	48 89 ef             	mov    %rbp,%rdi
    2cc4:	e8 67 f6 ff ff       	callq  2330 <_Unwind_Resume@plt>
    2cc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002cd0 <std::thread::thread<void (&)(int, int), int, int, void>(void (&)(int, int), int&&, int&&)>:
      thread(_Callable&& __f, _Args&&... __args)
    2cd0:	f3 0f 1e fa          	endbr64 
    2cd4:	41 55                	push   %r13
    2cd6:	41 54                	push   %r12
    2cd8:	55                   	push   %rbp
    2cd9:	48 89 fd             	mov    %rdi,%rbp
    2cdc:	53                   	push   %rbx
    2cdd:	48 89 f3             	mov    %rsi,%rbx
    2ce0:	48 83 ec 18          	sub    $0x18,%rsp
    2ce4:	44 8b 29             	mov    (%rcx),%r13d
    2ce7:	44 8b 22             	mov    (%rdx),%r12d
    2cea:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2cf1:	00 00 
    2cf3:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2cf8:	31 c0                	xor    %eax,%eax
      id() noexcept : _M_thread() { }
    2cfa:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
	return _State_ptr{new _Impl{std::forward<_Callable>(__f)}};
    2d01:	bf 18 00 00 00       	mov    $0x18,%edi
    2d06:	e8 65 f5 ff ff       	callq  2270 <operator new(unsigned long)@plt>
	_State_impl(_Callable&& __f) : _M_func(std::forward<_Callable>(__f))
    2d0b:	48 8d 0d 76 1f 00 00 	lea    0x1f76(%rip),%rcx        # 4c88 <vtable for std::thread::_State_impl<std::thread::_Invoker<std::tuple<void (*)(int, int), int, int> > >+0x10>
        _M_start_thread(_S_make_state(
    2d12:	48 89 e6             	mov    %rsp,%rsi
    2d15:	48 89 ef             	mov    %rbp,%rdi
	_State_impl(_Callable&& __f) : _M_func(std::forward<_Callable>(__f))
    2d18:	48 89 08             	mov    %rcx,(%rax)
        _M_start_thread(_S_make_state(
    2d1b:	48 8b 15 ae 22 00 00 	mov    0x22ae(%rip),%rdx        # 4fd0 <pthread_create@GLIBC_2.2.5>
    2d22:	44 89 68 08          	mov    %r13d,0x8(%rax)
    2d26:	44 89 60 0c          	mov    %r12d,0xc(%rax)
    2d2a:	48 89 58 10          	mov    %rbx,0x10(%rax)
      __uniq_ptr_impl(pointer __p) : _M_t() { _M_ptr() = __p; }
    2d2e:	48 89 04 24          	mov    %rax,(%rsp)
    2d32:	e8 19 f5 ff ff       	callq  2250 <std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())@plt>
	if (__ptr != nullptr)
    2d37:	48 8b 3c 24          	mov    (%rsp),%rdi
    2d3b:	48 85 ff             	test   %rdi,%rdi
    2d3e:	74 06                	je     2d46 <std::thread::thread<void (&)(int, int), int, int, void>(void (&)(int, int), int&&, int&&)+0x76>
	delete __ptr;
    2d40:	48 8b 07             	mov    (%rdi),%rax
    2d43:	ff 50 08             	callq  *0x8(%rax)
      }
    2d46:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2d4b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2d52:	00 00 
    2d54:	75 0b                	jne    2d61 <std::thread::thread<void (&)(int, int), int, int, void>(void (&)(int, int), int&&, int&&)+0x91>
    2d56:	48 83 c4 18          	add    $0x18,%rsp
    2d5a:	5b                   	pop    %rbx
    2d5b:	5d                   	pop    %rbp
    2d5c:	41 5c                	pop    %r12
    2d5e:	41 5d                	pop    %r13
    2d60:	c3                   	retq   
    2d61:	e8 2a f5 ff ff       	callq  2290 <__stack_chk_fail@plt>
    2d66:	f3 0f 1e fa          	endbr64 
    2d6a:	48 89 c5             	mov    %rax,%rbp
	if (__ptr != nullptr)
    2d6d:	48 8b 3c 24          	mov    (%rsp),%rdi
    2d71:	48 85 ff             	test   %rdi,%rdi
    2d74:	74 06                	je     2d7c <std::thread::thread<void (&)(int, int), int, int, void>(void (&)(int, int), int&&, int&&)+0xac>
	delete __ptr;
    2d76:	48 8b 07             	mov    (%rdi),%rax
    2d79:	ff 50 08             	callq  *0x8(%rax)
    2d7c:	48 89 ef             	mov    %rbp,%rdi
    2d7f:	e8 ac f5 ff ff       	callq  2330 <_Unwind_Resume@plt>
    2d84:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2d8b:	00 00 00 
    2d8e:	66 90                	xchg   %ax,%ax

0000000000002d90 <__libc_csu_init>:
    2d90:	f3 0f 1e fa          	endbr64 
    2d94:	41 57                	push   %r15
    2d96:	4c 8d 3d 9b 1e 00 00 	lea    0x1e9b(%rip),%r15        # 4c38 <__frame_dummy_init_array_entry>
    2d9d:	41 56                	push   %r14
    2d9f:	49 89 d6             	mov    %rdx,%r14
    2da2:	41 55                	push   %r13
    2da4:	49 89 f5             	mov    %rsi,%r13
    2da7:	41 54                	push   %r12
    2da9:	41 89 fc             	mov    %edi,%r12d
    2dac:	55                   	push   %rbp
    2dad:	48 8d 2d 94 1e 00 00 	lea    0x1e94(%rip),%rbp        # 4c48 <__do_global_dtors_aux_fini_array_entry>
    2db4:	53                   	push   %rbx
    2db5:	4c 29 fd             	sub    %r15,%rbp
    2db8:	48 83 ec 08          	sub    $0x8,%rsp
    2dbc:	e8 3f f2 ff ff       	callq  2000 <_init>
    2dc1:	48 c1 fd 03          	sar    $0x3,%rbp
    2dc5:	74 1f                	je     2de6 <__libc_csu_init+0x56>
    2dc7:	31 db                	xor    %ebx,%ebx
    2dc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2dd0:	4c 89 f2             	mov    %r14,%rdx
    2dd3:	4c 89 ee             	mov    %r13,%rsi
    2dd6:	44 89 e7             	mov    %r12d,%edi
    2dd9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    2ddd:	48 83 c3 01          	add    $0x1,%rbx
    2de1:	48 39 dd             	cmp    %rbx,%rbp
    2de4:	75 ea                	jne    2dd0 <__libc_csu_init+0x40>
    2de6:	48 83 c4 08          	add    $0x8,%rsp
    2dea:	5b                   	pop    %rbx
    2deb:	5d                   	pop    %rbp
    2dec:	41 5c                	pop    %r12
    2dee:	41 5d                	pop    %r13
    2df0:	41 5e                	pop    %r14
    2df2:	41 5f                	pop    %r15
    2df4:	c3                   	retq   
    2df5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    2dfc:	00 00 00 00 

0000000000002e00 <__libc_csu_fini>:
    2e00:	f3 0f 1e fa          	endbr64 
    2e04:	c3                   	retq   

Disassembly of section .fini:

0000000000002e08 <_fini>:
    2e08:	f3 0f 1e fa          	endbr64 
    2e0c:	48 83 ec 08          	sub    $0x8,%rsp
    2e10:	48 83 c4 08          	add    $0x8,%rsp
    2e14:	c3                   	retq   
