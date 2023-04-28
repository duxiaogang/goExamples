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

func _nosplit() {
	makeStackBigger(1000 * 1000)
}

//go:nosplit
func nosplit() {
	_nosplit()
}

func normal() {
	time.Sleep(1 * time.Second)
}

func infLoop() {
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

var oocTick int32
var stopZero int
var stopR int

func oocTickGr() {
	for range time.Tick(1 * time.Second) {
		atomic.AddInt32(&oocTick, 1)
	}
}

func task(f func(), fName string) {
	defer func() {
		if e := recover(); e != nil {
			fmt.Printf("task(%s) error, e = %v\n", fName, e)
		}
	}()

	//set ooc checker
	runtime.SetOOCChecker(func() func() {
		util := atomic.LoadInt32(&oocTick) + 3
		return func() {
			now := atomic.LoadInt32(&oocTick)
			if now > util {
				//panic("OOC!")
				stopR = 1 / stopZero
			}
		}
	}())
	defer runtime.SetOOCChecker(nil)

	fmt.Printf("task(%s) start\n", fName)
	f()
	fmt.Printf("task(%s) completed\n", fName)
}

func workerGr(wg *sync.WaitGroup, f func(), fName string) {
	defer wg.Done()

	//makeStackBigger(100)

	for {
		task(f, fName)
	}
}

func main() {
	wg := &sync.WaitGroup{}

	//nosplit()

	wg.Add(1)
	go oocTickGr()

	//wg.Add(1)
	//go workerGr(wg, normal, "normal")

	wg.Add(1)
	go workerGr(wg, infLoop, "infLoop")

	//wg.Add(1)
	//go workerGr(wg, readNilChan, "readNilChan")

	//wg.Add(1)
	//go workerGr(wg, writeNilChan, "writeNilChan")

	//wg.Add(1)
	//go workerGr(wg, longSleep, "longSleep")

	//l1, l2 := func() (func(), func()) {
	//	a := &sync.Mutex{}
	//	b := &sync.Mutex{}
	//	return func() { lock2(a, b) }, func() { lock2(b, a) }
	//}()
	//wg.Add(2)
	//go workerGr(wg, l1, "deadlock1")
	//go workerGr(wg, l2, "deadlock2")

	wg.Wait()
}
