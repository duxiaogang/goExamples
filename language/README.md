
# language:
## cc:
### goversion:
- 展示go:build goversion的用法
- 就是限定不让过低的go编译



## defer:
### sequence:
- defer只对func有效，或者说func才有作用域
  - 或者说defer是挂在stack frame上的
- defer是stack结构，越晚的defer越早调用，符合直觉
- 这是一个其他细节，不在闭包参数中的变量，总是使用闭包被执行时的当时值



## interface:
### ieface:
#### TestIntType():
- go tool compile -S ./main.go
- eface结构
- int也是有类型的

### receiver:
#### TestChangeObject():
- receiver为对象，方法中也可以修改对象，只是因为golang的传值，导致修改产生在临时对象上

#### TestSugar():
- 展示语法糖的生效位置
  - 方法的对象处生效
  - 函数参数处无效

#### TestSugar():
- 使用interface展示对象和其对应的对象指针是否实现了某个receiver为指针的方法

#### interface_test.go:


## linkname:
- 使用linkname引用非导出函数



## panic:
### nest:
- panic的输出总在最后？
  - 或者说让defer先执行完，保证安全
- 多个panic输出会按panic时间排序？
- 参考 [5.4 panic 和 recover](https://draveness.me/golang/docs/part2-foundation/ch05-keyword/golang-panic-recover/)

### recover:
- recover的使用，符合预期
- 相比其他语言的trycatch，recover只能以函数为单位生效