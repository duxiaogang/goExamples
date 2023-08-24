package main

import (
	"fmt"
	"log"
	"net/http"
	_ "net/http/pprof"
	"time"
)

func main() {
	go func() {
		log.Fatalln(http.ListenAndServe("127.0.0.1:8989", nil))
	}()

	to := time.After(1000 * time.Second)
	for {
		select {
		case <-time.Tick(time.Second):
			fmt.Println("tick!")
			break
		case <-to:
			fmt.Println("timeout!")
			return
		}
	}
}
