package main

import (
	"fmt"
	"os"
	"runtime"
	"time"
)

func writeNoClose() {
	f, err := os.OpenFile("./tmp.txt", os.O_CREATE|os.O_TRUNC|os.O_WRONLY, 0600)
	if err != nil {
		panic(fmt.Errorf("OpenFile error, err=%v", err))
	}
	for i := 0; i < 999*1000; i++ {
		f.Write([]byte(fmt.Sprintf("================================================================= %d\n", i)))
	}
	//f.Close()
}

func main() {
	writeNoClose()
	runtime.GC()

	for {
		time.Sleep(time.Second)
	}
}
