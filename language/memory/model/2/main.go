package main

import (
	"fmt"
	"sync"
	"time"
)

const N = 100 * 1000 * 1000

type X struct {
	i, j, k int64
	f       bool
}

func main() {
	var arr [N]X

	wg := sync.WaitGroup{}
	wg.Add(4)

	go func(index int) {
		for i := 0; i < N; i++ {
			x := &arr[i]
			x.i = 1
			x.j = 2
			x.k = 3
			x.f = true
		}
		wg.Done()
		fmt.Printf("%d done\n", index)
	}(1)

	f := func(index int) {
		for i := 0; i < N; {
			for {
				if arr[i].f {
					x := &arr[i]
					if x.i+x.j+x.k != 6 {
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
	go f(2)
	go f(3)
	go f(4)

	wg.Wait()
	time.Sleep(time.Millisecond)
}
