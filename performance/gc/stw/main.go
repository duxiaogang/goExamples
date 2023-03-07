package main

import (
	"log"
	"time"
)

func tick(now, prev time.Time) {
	//log.Printf("tick, now=%f, t=%f\n", float64(time.Now().UnixMilli())/1000, float64(t.UnixMilli())/1000)
	elapsed := now.Sub(prev)
	log.Printf("tick, elapsed=%v\n", elapsed)
}

func main() {
	ch := time.Tick(10 * time.Millisecond)
	prev := time.Now()
	for {
		select {
		case <-ch:
			now := time.Now()
			tick(now, prev)
			prev = now
		}
	}
}
