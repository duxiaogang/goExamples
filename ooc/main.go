package main

import (
	"fmt"
	"runtime"
	"sync"
	"sync/atomic"
	"time"
)

func makeStackBigger(count int) {
	if count == 0 {
		return
	}
	makeStackBigger(count - 1)
}

func normal() {
	time.Sleep(1 * time.Second)
}

func infLoop() {
	defer fmt.Println("infLoop end")

	for {
	}
}

func longSleep() {
	time.Sleep(5 * time.Second)
}

func readNilChan() {
	var ch chan int
	<-ch
}

func writeNilChan() {
	var ch chan int
	ch <- 1
}

func lock2(a, b *sync.Mutex) {
	a.Lock()
	defer a.Unlock()

	time.Sleep(10 * time.Millisecond)

	b.Lock()
	//fixme: 如果在这里被打断怎么办？虽然几乎没有可能
	defer b.Unlock()
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
			//makeStackBigger(1000 * 1000)
			fmt.Printf("task(%s) error, e=%v, elapsed=%v\n", fName, e, time.Now().Sub(bt))
		}
	}()

	//enable ooc
	runtime.EnableOOC(&oocTick, 10*1000)
	defer runtime.DisableOOC()

	fmt.Printf("task(%s) start\n", fName)
	f()
	fmt.Printf("task(%s) completed\n", fName)
}

// _task的作用是先预占一部分stack空间
func _task(reserveStack int, f func(), fName string) {
	if reserveStack == 0 {
		for {
			task(f, fName)
		}
		return
	}
	_task(reserveStack-1, f, fName)
}

func workerGr(wg *sync.WaitGroup, reserveStack int, f func(), fName string) {
	wg.Add(1)
	defer wg.Done()

	_task(reserveStack, f, fName)
}

func main() {
	wg := &sync.WaitGroup{}

	go oocTickGr()

	//go workerGr(wg, normal, "normal")

	N := 10 * 1000
	for i := 0; i < N; i++ {
		go workerGr(wg, i, infLoop, fmt.Sprintf("infLoop(%d)", i))
	}

	//go workerGr(wg, readNilChan, "readNilChan")

	//go workerGr(wg, writeNilChan, "writeNilChan")

	//go workerGr(wg, longSleep, "longSleep")

	//l1, l2 := func() (func(), func()) {
	//	a := &sync.Mutex{}
	//	b := &sync.Mutex{}
	//	return func() { lock2(a, b) }, func() { lock2(b, a) }
	//}()
	//go workerGr(wg, l1, "deadlock1")
	//go workerGr(wg, l2, "deadlock2")

	wg.Wait()
}
