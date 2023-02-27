
# hotfix:
- 用plugin/gomonkey实现golang热更新
  - 导出和未导出的函数，都可以hotfix
  - method hotfix
  - 闭包hotfix比较麻烦，主要是环境变量存在问题
  - global/local variable
    - 有点奇怪的是，var似乎并不存在app/so两份？一改就全部改掉了
      - 确实如此，在app/so中分别打印看，地址是一致的
      - 虽然nm静态去看存在两个实例
      - 但是在load plugin的时候，so中的会没地方用到？
  - mac+linux平台
- todo:
  - patch过程安全
  - text cache一致性