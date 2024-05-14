
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


- test：
    - dlsym4：
        - 非dlopen方式，也就是正常方式使用so，此时default/next完全符合预期
        - 其他几个例子都是基于dlopen的
    - dlsym3：
        - 没有handle时，想找到so中同名函数的办法：再次dlopen
        - 算是最终的解决方案了
        - 同时也测试了dlclose在这里的用途：有没有都可以，几乎没影响
	    - 特别是对于本身就不dlclose的情况，无任何影响
    - dlsym2：
        - 测试了default/next等各种可能得情况
        - 不管从哪调用(exe or any so)，linux下面default只对应exe中函数
        - next按说应该找到下一个so中的同名函数，但除了在exe中调用正常外，其他so中调用都不生效
        - 正确handle的话，总是能找到handle对应的so的函数
    - dlsym：
        - 没啥用

