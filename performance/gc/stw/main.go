package main

import (
	"log"
	"math/rand"
	"strconv"
	"time"
)

func doAlloc(n int) map[int]string {
	m := make(map[int]string)
	for i := 0; i < 1000000*n; i++ {
		m[i] = strconv.FormatInt(rand.Int63(), 10)
		if i%1000000 == 0 {
			log.Printf("doAlloc, i=%v\n", i)
		}
	}
	return m
}

func tick(start, prev, now time.Time, m map[int]string) {
	e0 := now.Sub(start)
	e1 := now.Sub(prev)
	log.Printf("tick, e0=%v, e1=%v\n", e0, e1)

	for i := 0; i < 1000; i++ {
		j := rand.Int() % len(m)
		m[j] = strconv.FormatInt(rand.Int63(), 10)
	}
}

func main() {
	m := doAlloc(200)
	log.Printf("begin, len(m)=%v\n", len(m))

	tickCh := time.Tick(10 * time.Millisecond)
	endCh := time.After(3600 * time.Second)
	start := time.Now()
	prev := start
	for {
		select {
		case <-tickCh:
			now := time.Now()
			tick(start, prev, now, m)
			prev = now
		case <-endCh:
			log.Printf("end, len(m)=%v\n", len(m))
			return
		}
	}
}
