
# language:
## defer:
### sequence:
- defer只对func有效，或者说func才有作用域
  - 或者说defer是挂在stack frame上的
- defer是stack结构，越晚的defer越早调用，符合直觉
- 这是一个其他细节，不在闭包参数中的变量，总是使用闭包被执行时的当时值



## panic:
### nest:
- panic的输出总在最后？
  - 或者说让defer先执行完，保证安全
- 多个panic输出会按panic时间排序？

