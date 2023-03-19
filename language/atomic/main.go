package main

import (
	"fmt"
	"sync/atomic"
)

var i64 int64 = 0

func main() {
	//var i64 int64 = 0
	atomic.AddInt64(&i64, 1) //lock

	a64 := atomic.Int64{}
	a64.Add(1) //lock

	i64 += 1 //no lock

	fmt.Printf("i64=%v, a64=%v\n", i64, a64)
}
