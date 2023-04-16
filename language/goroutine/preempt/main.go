package main

import (
	"fmt"
	"runtime"
	"time"
)

var data [101]int64

func makeStackBigger(size int) {
	if size == 0 {
		return
	}
	makeStackBigger(size-1)
}

func worker(index int) {
	makeStackBigger(1000)
	for {
		runtime.ResetInfloopChecker(100)
		if index < 97 {
			normal(index)
		} else {
			infLoop(index)
		}
	}
}

func normal(index int) {
	defer func() {
		if e := recover(); e != nil {
			fmt.Printf("normal(%d), e=%v\n", index, e)
		}
	}()

	data[0]++
	for i := 0; i < 1000*1000*1000; i++ {
		data[index]++
	}
}

func infLoop(index int) {
	defer func() {
		if e := recover(); e != nil {
			fmt.Printf("infLoop(%d), e=%v\n", index, e)
		}
	}()

	data[0]++
	for {
		data[index]++
	}
}

func main() {
	for i := 0; i < 100; i++ {
		go worker(i)
	}

	ch := time.Tick(1 * time.Second)
	for {
		select {
		case <-ch:
			fmt.Println(data)
		}
	}
}
