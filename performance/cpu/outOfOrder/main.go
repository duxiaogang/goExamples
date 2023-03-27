package main

import (
	"fmt"
	"sync"
)

var a, b, x, y int

func f1(wg *sync.WaitGroup) {
	defer wg.Done()

	a = 1
	//var i int64
	//atomic.AddInt64(&i, 1)
	x = b
}

func f2(wg *sync.WaitGroup) {
	defer wg.Done()

	b = 1
	//var i int64
	//atomic.AddInt64(&i, 1)
	y = a
}

func main() {
	for i := 0; ; i++ {
		a = 0
		b = 0
		x = 0
		y = 0

		wg := sync.WaitGroup{}

		wg.Add(1)
		go f1(&wg)

		wg.Add(1)
		go f2(&wg)

		wg.Wait()
		if x == 0 && y == 0 {
			fmt.Printf("x==y==0! i=%v, a=%v, b=%v\n", i, a, b)
		}
	}
}
