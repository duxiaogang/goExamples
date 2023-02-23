
# tools:
## gomock:
### tutorial:
- 简单使用一下gomock，有个感性认识先
- [GoMock快速上手教程](https://zhuanlan.zhihu.com/p/410445621)

## gomonkey:
### first:
- 使用gomonkey的例子
- 注意需使用-l选项：
  > go test -gcflags=all=-l

### function_value:
```
func a() int { return 1 }
b := a
var c = func() int { return 1 }
```
- a和b/c并不一样
- a不是变量(可以认为是个编译器符号，或者说常量/字面量)，所以没有地址，而b/c是变量
- b/c并不直接指向函数，而是指向一个function_value，对应的是一个closure，closure第一个字段一般来说才会指向实际函数
  - 也可以说b/c是一个指向函数的指针的指针

## msgpack:
### first:
- msgpack简单用法

## trace:
### first:
- 使用trace的例子，用来观察goroutine在GMP中执行情况

## wire:
### first:
- 简单试用一下wire
- [Go 每日一库之 wire](https://zhuanlan.zhihu.com/p/110453784)