package main

import (
	"fmt"
	"math/rand"
	"runtime"
	"time"
)

func main() {
	sum := 0
	done := make(chan struct{})
	loop := 10 * 1000
	for i := 0; i < loop; i++ {
		go func() {
			len := 10 * 1000
			arr := make([]int, len)
			for i := 0; i < len; i++ {
				arr[i] = rand.Int()
			}
			sum += arr[rand.Intn(len)]
			<-done
			fmt.Println(arr[rand.Intn(len)])
		}()
	}

	//通过关闭chan可以让goroutine卡死或正常退出
	//close(done)

	tick := time.Tick(1 * time.Second)
	for {
		select {
		case <-tick:
			fmt.Println(sum)
			runtime.GC()
		default:
		}
	}
}
