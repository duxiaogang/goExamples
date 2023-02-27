package main

import (
	"context"
	"fmt"
	"os"
	"runtime/trace"
	"time"
)

func busy(ctx context.Context) {
	doneC := ctx.Done()
	for {
		select {
		case <-doneC:
			fmt.Println("busy end")
			return
		default:
		}
	}
}

func main() {
	f, err := os.Create("trace.out")
	if err != nil {
		panic(err)
	}
	defer f.Close()

	err = trace.Start(f)
	if err != nil {
		panic(err)
	}
	defer trace.Stop()

	fmt.Println("Hello World")

	ctx, _ := context.WithTimeout(context.Background(), 1*time.Second)
	for i := 0; i < 20; i++ {
		go busy(ctx)
	}
	busy(ctx)

	time.Sleep(1 * time.Second)
}
