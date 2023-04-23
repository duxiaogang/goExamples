package main

import (
	"fmt"
	"sync"
	"time"
)

const (
	maxValue    = 100 * 1000
	threadCount = 10 * 1000
)

var curValue int

func tFunc(i int, cv *sync.Cond, wg *sync.WaitGroup) {
	defer wg.Done()

	for {
		cv.L.Lock()
		for curValue < maxValue && curValue%threadCount != i {
			cv.Wait()
		}
		if curValue >= maxValue {
			cv.L.Unlock()
			cv.Broadcast() //cv.Signal()
			break
		}
		curValue++
		if curValue%100 == 0 {
			fmt.Printf("curValue=%d\n", curValue)
		}
		cv.L.Unlock()
		cv.Broadcast() //cv.Signal()
	}
}

func main() {
	cv := sync.NewCond(&sync.Mutex{})
	wg := &sync.WaitGroup{}
	bt := time.Now()

	wg.Add(threadCount)
	for i := 0; i < threadCount; i++ {
		go tFunc(i, cv, wg)
	}
	wg.Wait()

	fmt.Println("elapsed:", time.Since(bt))
}
