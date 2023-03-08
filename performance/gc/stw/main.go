package main

import (
	"context"
	"log"
	"math/rand"
	_ "net/http/pprof"
	"strconv"
	"time"
)

func prepare(n int) map[int]string {
	m := make(map[int]string)
	for i := 0; i < 1000000*n; i++ {
		m[i] = strconv.FormatInt(rand.Int63(), 10)
		if i%1000000 == 0 {
			log.Printf("prepare, i=%v\n", i)
		}
	}
	return m
}

func alloc(len int) any {
	if len > 0 {
		m := make([]byte, len)
		return m
	}
	return nil
}

func cpu(d time.Duration) (r uint64) {
	ctx, _ := context.WithTimeout(context.Background(), d)
	done := ctx.Done()
	r = 0
	for i := uint64(0); i < 1000000; i++ {
		for j := uint64(0); j < 1000000; j++ {
			select {
			case <-done:
				return
			default:
			}
			for k := uint64(0); k < 1000000; k++ {
				r++
			}
		}
	}
	return
}

func doWork() {
	//mem
	n := rand.Int() % 100
	for i := 0; i < n; i++ {
		alloc(rand.Int() % 1000)
	}
	//cpu
	//cpu(time.Duration(rand.Int()%10) * time.Millisecond)
}

func worker() {
	time.AfterFunc(time.Duration(rand.Int()%1000)*time.Millisecond, func() {
		tickCh := time.Tick(time.Second)
		for {
			select {
			case <-tickCh:
				doWork()
			}
		}
	})
}

func startWorker(nWorker int) {
	for i := 0; i < nWorker; i++ {
		go worker()
	}
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
	//go func() {
	//	log.Println(http.ListenAndServe("localhost:6060", nil))
	//}()

	m := prepare(200)

	startWorker(6000)

	log.Printf("begin, len(m)=%v\n", len(m))
	tickCh := time.Tick(10 * time.Millisecond)
	endCh := time.After(2 * 3600 * time.Second)
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
