package main

import (
	"log"
	"time"
)

func tick(start, prev, now time.Time) {
	//log.Printf("tick, now=%f, t=%f\n", float64(time.Now().UnixMilli())/1000, float64(t.UnixMilli())/1000)
	e0 := now.Sub(start)
	e1 := now.Sub(prev)
	log.Printf("tick, e0=%v, e1=%v\n", e0, e1)
}

func main() {
	ch := time.Tick(10 * time.Millisecond)
	start := time.Now()
	prev := start
	for {
		select {
		case <-ch:
			now := time.Now()
			tick(start, prev, now)
			prev = now
		}
	}
}
