
# performance:
## asm:



## gc:
### stw:
- grep tick out.txt | awk '{ print $5 }' | sed 's/e1=//' | sed 's/ms//' | sort | uniq -c > 1
- 200m1k.txt:
  - 2 hour持续跑，初始分配了200m item的map，10ms一个tick，每tick都会随机修改map 1000次
  - 进程实际占用内存~15g，cpu~15%，偶尔会出现400+%cpu
  - 最终结果看，tick全部在7~12ms之间，且分布接近10ms，也就是没有发现因为gc造成的明显卡顿
    - tick时间分布和mem空载(00.txt)几乎一致
  - 单goroutine不符合实际场景