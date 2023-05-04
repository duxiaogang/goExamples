package main

import (
	"fmt"
	"sync/atomic"
)

var i64 int64 = 0

func main() {
	//var i64 int64 = 0
	atomic.AddInt64(&i64, 1) //lock

	a64 := atomic.Int64{}
	a64.Add(1) //lock

	i64 += 1 //no lock

	fmt.Printf("i64=%v, a64=%v\n", i64, a64)

	atomic.StoreInt64(&i64, 100) //lock(xchg), 保证写入内存，而不是storebuffer

	a64.Store(101) //lock， 同上

	i := a64.Load() //这里只有mov并没有lock, 和读取全局变量是一样的，但感觉不太对啊，没有内存屏障，如何刷新缓存的invalidate queue？amd64没有invalidate queue？

	fmt.Printf("i64=%v, a64=%v, i=%v\n", i64, a64, i)
}
