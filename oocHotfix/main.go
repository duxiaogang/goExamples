package main

import (
	"context"
	"crypto/md5"
	"fmt"
	"github.com/duxiaogang/goExamples/oocHotfix/app/ooc"
	"github.com/duxiaogang/goExamples/oocHotfix/patch"
	"github.com/petermattis/goid"
	"os"
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

func task(f func(), fName string) {
	bt := time.Now()
	defer func() {
		if e := recover(); e != nil {
			fmt.Printf("task(%s) error, e=%v, elapsed=%v\n", fName, e, time.Now().Sub(bt))
		}
	}()

	//set ooc timeout
	goId := goid.Get()
	ooc.SetTimeout(goId, 3000*time.Millisecond)
	defer ooc.ClearTimeout(goId)

	//fmt.Printf("task(%s) start, goid=%v\n", fName, goId)
	f()
	//fmt.Printf("task(%s) completed\n", fName)
}

func workerGr(wg *sync.WaitGroup, f func(), fName string) {
	defer wg.Done()

	for {
		task(f, fName)
	}
}

func enableOOC() error {
	pt := &patch.PatchTool{}
	if err := pt.DoPatch("./patch1/patch.so"); err != nil {
		return err
	}
	//pt.Reset()

	go func() {
		ooc.Run(context.Background())
	}()

	return nil
}

func main() {
	if err := enableOOC(); err != nil {
		fmt.Printf("main(), enableOOC() error, err = %s\n", err)
		os.Exit(1)
	}

	wg := &sync.WaitGroup{}

	//wg.Add(1)
	//go workerGr(wg, normal, "normal")

	wg.Add(1)
	go workerGr(wg, infLoop, "infLoop")

	for i := 0; i < 5; i++ {
		wg.Add(1)
		go workerGr(wg, compute, "compute")
	}

	wg.Wait()
}
