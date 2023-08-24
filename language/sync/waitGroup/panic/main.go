package main

import (
	"fmt"
	"sync"
	"time"
)

func main() {
	//防止deadlock
	go func() {
		for {
			time.Sleep(1 * time.Second)
		}
	}()

	wg := &sync.WaitGroup{}
	div := 0

	wg.Add(1)
	go func() {
		defer func() {
			if e := recover(); e != nil {
				fmt.Printf("recover, e=%v\n", e)
			}
		}()
		defer wg.Done()

		time.Sleep(1 * time.Second)

		//panic("panic!")
		fmt.Printf("I want to panic, %v\n", 100/div)

		//wg.Done()
	}()

	wg.Wait()

	fmt.Println("end")
}
