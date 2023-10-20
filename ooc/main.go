package main

import (
	"crypto/md5"
	"fmt"
	"runtime"
	"sync"
	"time"
)

func normal() {
	for i := 0; i < 1000; i++ {
		time.Sleep(10 * time.Millisecond)
		//for j := 0; j < 1*1000*1000; j++ {
		//}
	}
}

func infLoop_() {
	defer fmt.Println("infLoop_ end") //fixme: call不到？并不是，因为下面的死循环太明显，所以被编译器优化掉了

	for {
	}
}

func infLoop() {
	//defer fmt.Println("infLoop end")

	infLoop_()
}

func compute() {
	data := []byte("Hello, World!")
	//goal := "9d6b00250efc6dfd4efe667d2e0970ad"	//100
	goal := "9d7e15f00b41b486ceedd68fca6f1142" //10

	hash := md5.Sum(data)
	for i := 0; i < 10*1000*1000; i++ {
		hash = md5.Sum(hash[:])
	}

	if fmt.Sprintf("%x", hash) != goal {
		panic(hash)
	} else {
		//fmt.Println("compute ok")
	}
}

func oocTickGr() {
	//todo: cpu忙时可能不准，不见得是坏事?
	for range time.Tick(10 * time.Millisecond) {
		runtime.UpdateOOCTick(10)
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
	runtime.EnableOOC(3 * 1000)
	defer runtime.DisableOOC()

	//fmt.Printf("task(%s) start\n", fName)
	f()
	//fmt.Printf("task(%s) completed\n", fName)
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

	//wg.Add(1)
	//go workerGr(wg, normal, "normal")

	wg.Add(1)
	go workerGr(wg, infLoop, "infLoop")

	for i := 0; i < 25; i++ {
		wg.Add(1)
		go workerGr(wg, compute, "compute")
	}

	wg.Wait()
}
