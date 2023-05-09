package main

import (
	"fmt"
	"sync"
)

func f(wg *sync.WaitGroup, pI *int) {
	defer wg.Done()

	for i := 0; i < 4*1000*1000*1000; i++ {
		*pI++
	}
}

func main() {
	arr := make([]int, 1000)

	wg := &sync.WaitGroup{}

	//i1 := &arr[0]
	//i2 := &arr[0]
	//i3 := &arr[0]
	//i4 := &arr[0]

	i1 := &arr[0]
	i2 := &arr[1]
	i3 := &arr[2]
	i4 := &arr[3]

	//i1 := &arr[0]
	//i2 := &arr[100]
	//i3 := &arr[200]
	//i4 := &arr[300]

	wg.Add(1)
	go f(wg, i1)
	//wg.Wait()

	wg.Add(1)
	go f(wg, i2)
	//wg.Wait()

	wg.Add(1)
	go f(wg, i3)
	//wg.Wait()

	wg.Add(1)
	go f(wg, i4)
	wg.Wait()

	fmt.Printf("&i1=%p, &i2=%p, &i3=%p, &i4=%p\n", i1, i2, i3, i4)
	fmt.Printf("i1=%v, i2=%v, i3=%v, i4=%v\n", *i1, *i2, *i3, *i4)
}
