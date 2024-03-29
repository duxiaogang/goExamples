
# language:
## ast:
### first:
- ast的一个最简单例子，有个感性认识吧，具体用到再说



## atomic:
- atomic是lock操作，对应有lock总线指令
- 而全局变量则不然
- i := a64.Load() 
  - 这里只有mov并没有lock, 和读取全局变量是一样的，感觉不太对啊，没有内存屏障如何刷新缓存的invalidate queue？还是说amd64没有invalidate queue？
    - golang的问题？
      - c++看起来也是如此，不懂


## cc:
### goversion:
- 展示go:build goversion的用法
- 就是限定不让过低的go编译



## channel:
### nilChannel:
- nil channel会导致无限等待
- 读closed channel会直接返回0
- ...

### nilChannel2:
- 确认了nil channel卡死goroutine时，会导致goroutine中引用的内存无法释放，确实存在内存泄漏的风险


## const:
- iota的用法


## cycleImport:
- 循环引用的解决办法



## defer:
### return:
- defer和return的关系，理性分析就行了

### sequence:
- defer只对func有效，或者说func才有作用域
  - 或者说defer是挂在stack frame上的
- defer是stack结构，越晚的defer越早调用，符合直觉
- 这是一个其他细节，不在闭包参数中的变量，总是使用闭包被执行时的当时值



## function:
### call:
- 看看golang function call的细节
- call指令到底做了哪些工作？
  - 1，把call之后要执行的指定的地址压栈
  - 2，然后jump到被call函数的初始位置
  - bp/sp都不会特意去做任何调整
  > 当我们准备好函数的入参之后，会调用汇编指令 CALL "".myFunction(SB)，这个指令首先会将 main 的返回地址存入栈中，然后改变当前的栈指针 SP 并执行 myFunction 的汇编指令：
- ret呢，做了哪些工作？
  - 和call正好相反
  - 返回结果放在了被call函数的stack上？
    - 看编译器吧，没啥隐藏工作，都能通过生成的汇编看出来
- golang和c的主要差别，stack要给返回值留够空间
  - 其实返回值相当于引用，没啥差别，而且go新版本都不使用stack传参传结果了
    - 在这个文章的golang版本中，传参还是用的stack
      - 但go1.19实测，显然是使用寄存器传参的，返回值也是的
        - 当然，参数/返回值多了估计也只能使用stack
- 进入函数和离开函数前，需要保证bp/sp不变
  - bp/sp的调整全靠compiler生成的代码
- LEAQ？
  - 纯粹的计算指令，和取址完全无关
- PCDATA/FUNCDATA？
  - 不用管，go tool objdump -S避免之？
    - 少用go tool compile -S吧
- 没看懂为什么要多分一点栈出来，因为call了别的函数？给retaddr留位置？
  - 实验看，确实如此
- 如果发生了stack迁移，才会把register中的参数挪到stack上，之后再恢复
- 如果没有临时变量等，就可能没有stack操作，这种最轻松了



## goroutine:
### cpu100:

### preempt:
- 测试防止死循环的例子，未完成，迁移到别处

### stack:
- 测试防止死循环的例子，未完成，迁移到别处


## interface:
### convI2I:
- 一个interface转换为另一个interface
- 次转换并非后面的动态类型转为目标interface，而是真的i2i
  - 所以是单向的

### ieface:
#### TestIntType():
- go tool compile -S ./main.go
- eface结构
- int也是有类型的

### misc:
#### TestNilInterface():
- nil interface指的是动态类型和数据都是空，而和interface自身类型无关

### receiver:
#### TestChangeObject():
- receiver为对象，方法中也可以修改对象，只是因为golang的传值，导致修改产生在临时对象上

#### TestSugar():
- 展示语法糖的生效位置
  - 方法的对象处生效
  - 函数参数处无效

#### TestSugar2():
- 使用interface展示对象和其对应的对象指针是否实现了某个receiver为指针的方法




## json:
#### built-in:
- 内置json的使用

#### jsonSchema:
- go struct自动获取对应json schema



## memory:
### escape:
- 逃逸分析
- 即使简单如int，也会发生逃逸
- 对于很大的结构，逃逸分析和反编译的结果是不一致的，这为什么？
- fmt.Println(x), x为何会逃逸？ 有文章说和Println内部实现有关系，其实有点奇怪，可能还和interface{}有关系吧？不明白
- slice/map也不一定必然逃逸，和size有关
  - 但为什么slice引用的其他单元就会逃逸呢？


### model:
#### 1:
- channel的happens-before关系

#### 2:
- 试试乱序，发现几乎不可能出现
  - 原因很简单，store store并不会乱序
    - 也算是一种验证了

#### outOfOrder:
- 乱序实例
  - 很容易出现，原因是amd64平台恰好仅支持store before load的乱序，即改写成先load后store

#### cacheline:
- 两个thread都在写同一个cacheline中的不同位置，怎么会结果对呢？
  - 不懂
  - 并且，通过perf stat看，cache miss也很低，太奇怪了，就像cacheline size是8byte一样
- 增加了c++版本，优化太离谱了，只好关掉优化
  - 有个奇怪点，相比不在一个cacheline中的情况，虽然cache miss很低，但是cache references极高？
  - 另外，cpu stall也有点过高了，>90%
- 我分析是store buffer的作用
```azure
(base) duxg@BJNLPC0609:~/goExamples/language/memory/model/cacheline$ time ./cacheline
&i1=0xc000134000, &i2=0xc000134000, &i3=0xc000134000, &i4=0xc000134000
i1=6654419475, i2=6654419475, i3=6654419475, i4=6654419475

real    0m11.101s
user    0m38.668s
sys     0m0.000s
(base) duxg@BJNLPC0609:~/goExamples/language/memory/model/cacheline$ vim main.go
(base) duxg@BJNLPC0609:~/goExamples/language/memory/model/cacheline$ go build
(base) duxg@BJNLPC0609:~/goExamples/language/memory/model/cacheline$ time ./cacheline
&i1=0xc000194000, &i2=0xc000194000, &i3=0xc000194000, &i4=0xc000194000
i1=16000000000, i2=16000000000, i3=16000000000, i4=16000000000

real    0m18.344s
user    0m18.331s
sys     0m0.000s
```
  - 同一个变量，多线程并发写，和多线程顺序写，并发明显总消耗时间更多，但整体时间有优势
    - 不过并发方式计算结果是错的，实际没有意义
```azure
(base) duxg@BJNLPC0609:~/goExamples/language/memory/model/cacheline$ time ./cacheline
&i1=0xc000134000, &i2=0xc000134008, &i3=0xc000134010, &i4=0xc000134018
i1=4000000000, i2=4000000000, i3=4000000000, i4=4000000000

real    0m14.265s
user    0m55.282s
sys     0m0.000s
(base) duxg@BJNLPC0609:~/goExamples/language/memory/model/cacheline$ vim main.go
(base) duxg@BJNLPC0609:~/goExamples/language/memory/model/cacheline$ go build
(base) duxg@BJNLPC0609:~/goExamples/language/memory/model/cacheline$ time ./cacheline
&i1=0xc000194000, &i2=0xc000194008, &i3=0xc000194010, &i4=0xc000194018
i1=4000000000, i2=4000000000, i3=4000000000, i4=4000000000

real    0m18.369s
user    0m18.342s
sys     0m0.020s
```
  - 多个变量，位于同一个cacheline中，多线程并发写，和多线程顺序写，并发明显总消耗时间更多，但整体时间仍有优势
```azure
(base) duxg@BJNLPC0609:~/goExamples/language/memory/model/cacheline$ time ./cacheline
&i1=0xc0000b6000, &i2=0xc0000b6320, &i3=0xc0000b6640, &i4=0xc0000b6960
i1=4000000000, i2=4000000000, i3=4000000000, i4=4000000000

real    0m4.671s
user    0m18.557s
sys     0m0.000s
(base) duxg@BJNLPC0609:~/goExamples/language/memory/model/cacheline$ vim main.go
(base) duxg@BJNLPC0609:~/goExamples/language/memory/model/cacheline$ go build
(base) duxg@BJNLPC0609:~/goExamples/language/memory/model/cacheline$ time ./cacheline
&i1=0xc000134000, &i2=0xc000134320, &i3=0xc000134640, &i4=0xc000134960
i1=4000000000, i2=4000000000, i3=4000000000, i4=4000000000

real    0m18.376s
user    0m18.368s
sys     0m0.000s
```
  - 多个变量，不在同一个cacheline中，多线程并发写，和多线程顺序写，并发和顺序消耗总时间几乎一样多，但并发有多核优势
  - 前一个是单线程，后一个是4线程，多线程反而更快...



## linkname:
- 使用linkname引用非导出函数



## map:
### keyType:
- 测试下什么类型可以作为map的key，什么类型不可以

### race:
- map是怎么发现race的？

### rmInRange:
- 在range遍历时delete map成员安全吗？
  - 尚未有结论



## oo:
#### methodNum:
- 有名继承和无名集成的区别，真的不一样



## panic:
### nest:
- panic的输出总在最后？
  - 或者说让defer先执行完，保证安全
- 多个panic输出会按panic时间排序？
- 参考 [5.4 panic 和 recover](https://draveness.me/golang/docs/part2-foundation/ch05-keyword/golang-panic-recover/)


## print:
### TestPrintfP():
- "%p"的用法
- 并不是所有变量都可以%p，只是针对指针，函数，map等特定类型
  - 这个很蛋疼，谁知道map %p打印的是什么呢
  - 具体看例子中的注释:
    - 大致可以分两类，如果带&，则输出变量本身的地址
    - 如果不带&，则输出变量指向的对象地址


### recover:
- recover的使用，符合预期
- 相比其他语言的trycatch，recover只能以函数为单位生效


## relfect:
### type:
- 关于类型判定系统
- 实现了什么接口，自己是什么类型，都会(.type)出来



## time:
### tick:
- tick的工作机制：
  - 创建一个cap为1的channel，然后每tick尝试写入当前时间
    - non-blocking方式写入，chan满则跳过，下个tick再尝试
  - 也就是说，tick丢了就丢了，不存在累积