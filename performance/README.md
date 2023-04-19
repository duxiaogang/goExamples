
# performance:
## array:
### d1:
- 访问1维数组的开销


## asm:



## gc:
### stw:
- grep tick out.txt | awk '{ print $5 }' | sed 's/e1=//' | sort -n >1
- 200m1k.txt:
  - 2 hour持续跑，初始分配了200m item的map，10ms一个tick，每tick都会随机修改map 1000次
  - 进程实际占用内存~15g，cpu~15%，偶尔会出现400+%cpu
  - 最终结果看，tick全部在7~12ms之间，且分布接近10ms，也就是没有发现因为gc造成的明显卡顿
    - tick时间分布和mem空载(00.txt)几乎一致
- 单goroutine不符合实际场景，需要新的测试
- 1:
  - 6000 worker goroutine
    - 每个worker每秒tick一次，每次tick会分配一些内存
    - worker没有特意使用cpu
  - 预分配的内存从200m到100m
  - 其他不变，在主线程统计tick时间
  - 进程实际占用内存~13g，cpu~30%，偶尔会出现1500+%cpu，但很短暂
    - 如果分cpu看，会发现有几乎所有cpu都达到了100%
  - 结果最长出现了70ms+的tick，结果见100m6000nocpu.txt.gz
    - 是因为goroutine切换导致的，还是gc导致的，不确定
- 2:
  - worker tick不再alloc，而是做100微秒的cpu计算
    - 用来排除是goroutine切换导致的卡顿
      - goroutine切换依旧，甚至cpu压力更大，但是gc压力减小了
  - 预分配的内存从100m到200m
  - 进程实际占用内存~17g，cpu~120%，偶尔会出现400+%cpu
    - 如果分cpu看，会发现有4个cpu达到了100%
  - 最终结果看，tick几乎全部在6~13ms之间，只有2次例外，18ms/20ms，也就是没有发现因为gc造成的明显卡顿
    - 文件200m6kcpu.txt
- 结论：
  - 如果不特别频繁地alloc，不会出现明显stw
    - 和当前一共alloc了多少关系不大？是的，和不活跃的分配关系不大
  - 多pool，少alloc?
- 如果是个c++进程，会有卡顿吗？
  - 应该不会，因为没有集中处理点，而且cpu余量较大



## map:
#### op_test.go:
- map range性能与cap线性相关



