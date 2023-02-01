
# hotfix:
- 用plugin/gomonkey实现golang热更新
  - 导出和未导出的函数，都可以hotfix
  - method hotfix
  - 闭包hotfix比较麻烦，主要是环境变量存在问题
  - global/local variable
    - 有点奇怪的是，var似乎不存在app/so两个地址？一改就全部改掉了
      - 确实如此，在app/so中分别打印看，地址是一致的
- todo:
  - linux平台
  - global var hotfix
  - patch过程安全