package main

import (
	"fmt"
	"sync"
	"time"
)

const N = 100 * 1000 * 1000

func main() {
	var arrI [N]int64
	var arrJ [N]int64
	var arrK [N]int64
	var flags [N]bool

	wg := sync.WaitGroup{}

	bt := time.Now()

	wg.Add(1)
	go func(index int) {
		for i := 0; i < N; i++ {
			arrI[i] = 1
			arrJ[i] = 2
			arrK[i] = 3
			flags[i] = true
		}
		wg.Done()
		fmt.Printf("%d done\n", index)
	}(1)

	f := func(index int) {
		for i := 0; i < N; {
			for {
				if flags[i] {
					if arrI[i]+arrJ[i]+arrK[i] != 6 {
						fmt.Printf("%d error\n", index)
					}
					break
				}
			}
			i++
		}
		wg.Done()
		fmt.Printf("%d done\n", index)
	}
	wg.Add(3)
	go f(2)
	go f(3)
	go f(4)

	wg.Wait()

	d := time.Since(bt)
	fmt.Println(d)

	time.Sleep(time.Millisecond)
}
