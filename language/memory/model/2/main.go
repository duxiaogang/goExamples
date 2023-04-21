package main

import (
	"fmt"
	"runtime"
	"sync"
	"time"
)

const N = 100 * 1000 * 1000

var arrI [2 * N]int32
var arrJ [2 * N]int32
var arrK [2 * N]int32
var flags [N]bool

func writeGr(wg *sync.WaitGroup, index int) {
	runtime.LockOSThread()
	for i := 0; i < N; i++ {
		arrI[2*i] = 1
		arrJ[2*i] = 2
		arrK[2*i] = 3
		flags[i] = true
	}
	wg.Done()
	fmt.Printf("%d done\n", index)
}

func troubleGr(offset int) {
	for {
		for i := 0; i < N; i++ {
			p := offset + i
			if p >= N {
				p -= N
			}
			arrI[2*p+1] = int32(i)
			arrJ[2*p+1] = int32(i)
			arrK[2*p+1] = int32(i)
		}
	}
}

func readGr(wg *sync.WaitGroup, index, offset int) {
	for i := offset; i < N; {
		for {
			if flags[i] {
				if arrI[2*i]+arrJ[2*i]+arrK[2*i] != 6 {
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

func main() {
	wg := sync.WaitGroup{}

	bt := time.Now()

	wg.Add(1)
	go writeGr(&wg, 1)

	go troubleGr(0 * (N / 4))
	//go troubleGr(1 * (N / 4))
	go troubleGr(2 * (N / 4))
	//go troubleGr(3 * (N / 4))

	wg.Add(1)
	go readGr(&wg, 2, 1*1000*1000)
	wg.Add(1)
	go readGr(&wg, 3, 2*1000*1000)
	wg.Add(1)
	go readGr(&wg, 4, 3*1000*1000)

	wg.Wait()

	d := time.Since(bt)
	fmt.Println(d)

	time.Sleep(time.Millisecond)
}
