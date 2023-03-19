package main

import (
	"fmt"
	"sync"
)

func main() {
	raceValue := 0

	wg := sync.WaitGroup{}

	//先读后写
	wg.Add(2)

	go func() {
		u := 0
		for i := 0; i < 1000000; i++ {
			u += i
		}
		raceValue = 1
		fmt.Printf("writer 1, raceValue=%v, u=%v\n", raceValue, u)
		wg.Done()
	}()

	go func() {
		fmt.Printf("reader 1, raceValue=%v\n", raceValue)
		wg.Done()
	}()

	wg.Wait()

	//先写后读
	wg.Add(2)

	go func() {
		raceValue = 1
		fmt.Printf("writer 2, raceValue=%v\n", raceValue)
		wg.Done()
	}()

	go func() {
		u := 0
		for i := 0; i < 1000000; i++ {
			u += i
		}
		fmt.Printf("reader 2, raceValue=%v, u=%v\n", raceValue, u)
		wg.Done()
	}()

	wg.Wait()
}
