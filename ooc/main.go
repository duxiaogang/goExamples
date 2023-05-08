package main

import (
	"fmt"
	"runtime"
	"sync"
	"sync/atomic"
	"time"
)

func normal() {
	time.Sleep(1 * time.Second)
}

func infLoop() {
	defer fmt.Println("infLoop end")

	for {
	}
}

var oocTick uint64

func oocTickGr() {
	//todo: cpu忙时可能不准，不见得是坏事?
	for range time.Tick(10 * time.Millisecond) {
		atomic.AddUint64(&oocTick, 10)
	}
}

func task(f func(), fName string) {
	bt := time.Now()
	defer func() {
		if e := recover(); e != nil {
			fmt.Printf("task(%s) error, e=%v, elapsed=%v\n", fName, e, time.Now().Sub(bt))
		}
	}()

	//enable ooc
	runtime.EnableOOC(&oocTick, 3*1000)
	defer runtime.DisableOOC()

	fmt.Printf("task(%s) start\n", fName)
	f()
	fmt.Printf("task(%s) completed\n", fName)
}

func workerGr(wg *sync.WaitGroup, f func(), fName string) {
	defer wg.Done()

	for {
		task(f, fName)
	}
}

func main() {
	wg := &sync.WaitGroup{}

	go oocTickGr()

	wg.Add(1)
	go workerGr(wg, normal, "normal")

	wg.Add(1)
	go workerGr(wg, infLoop, "infLoop")

	wg.Wait()
}
