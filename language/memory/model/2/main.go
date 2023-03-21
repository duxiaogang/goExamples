package main

import (
	"fmt"
	"sync"
	"time"
)

const N = 1000000000

type X struct {
	i, j, k int64
	f       bool
}

func main() {
	var arr [N]X

	wg := sync.WaitGroup{}
	wg.Add(5)

	go func() {
		for i := 0; i < N; i++ {
			x := &arr[i]
			x.i = 1
			x.j = 2
			x.k = 3
			x.f = true
		}
		wg.Done()
		fmt.Println("1 done")
	}()

	f := func() {
		for i := 0; i < N; {
			for {
				if arr[i].f {
					x := &arr[i]
					if x.i+x.j+x.k != 6 {
						fmt.Println("error")
					}
					break
				}
			}
			i++
		}
		wg.Done()
		fmt.Println("2 done")
	}
	go f()
	go f()
	go f()

	wg.Wait()
	fmt.Println("3 done")
	time.Sleep(time.Millisecond)
}
