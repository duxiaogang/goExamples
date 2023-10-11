package main

import (
	"fmt"
	"sync/atomic"
	"time"
)

func main() {
	var v int64 = 0
	//mu := sync.Mutex{}

	var i int64
	for i = 0; i < 20; i++ {
		go func(index int64) {
			//mu.Lock()
			//defer mu.Unlock()

			time.Sleep(100 * time.Millisecond)
			//v = index
			atomic.StoreInt64(&v, index)
		}(i)
	}

	time.Sleep(200 * time.Millisecond)

	//mu.Lock()
	//fmt.Println(v)
	fmt.Println(atomic.LoadInt64(&v))
}
