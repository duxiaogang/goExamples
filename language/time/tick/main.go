package main

import (
	"log"
	"time"
)

func tick(t time.Time) {
	log.Printf("tick, now=%f, t=%f\n", float64(time.Now().UnixMilli())/1000, float64(t.UnixMilli())/1000)
	time.Sleep(3111 * time.Millisecond)
}

func main() {
	ch := time.Tick(1000 * time.Millisecond)
	for {
		select {
		case t := <-ch:
			tick(t)
		}
	}
}
