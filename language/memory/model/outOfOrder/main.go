package main

import (
	"fmt"
	"sync"
)

const N = 8

var a, b, x, y int

func f1(wg *sync.WaitGroup) {
	defer wg.Done()

	//var arr1 [N]int

	a = 1

	//var i int64
	//atomic.AddInt64(&i, 1)
	//for i := 0; i < N; i++ {
	//	arr1[i] += arr1[(i+N-1)%N] + a + x
	//}

	x = b
}

func f2(wg *sync.WaitGroup) {
	defer wg.Done()

	//var arr2 [N]int

	b = 1

	//var i int64
	//atomic.AddInt64(&i, 1)
	//for i := 0; i < N; i++ {
	//	arr2[i] += arr2[(i+N-1)%N] + b + y
	//}

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
		if i%1000000 == 0 {
			fmt.Printf("i=%v\n", i)
		}
	}
}
