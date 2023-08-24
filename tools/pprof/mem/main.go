package main

import (
	"bytes"
	"fmt"
	"math/rand"
	"os"
	"runtime/pprof"
)

const Letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

func generate(n int) string {
	var buf bytes.Buffer
	for i := 0; i < n; i++ {
		buf.WriteByte(Letters[rand.Intn(len(Letters))])
	}
	return buf.String()
}

func repeat(s string, n int) string {
	var result string
	for i := 0; i < n; i++ {
		result += s
	}
	return result
}

func main() {
	f, _ := os.OpenFile("mem.profile", os.O_CREATE|os.O_TRUNC|os.O_RDWR, 0644)
	defer f.Close()

	s := ""
	for i := 0; i < 100; i++ {
		s += repeat(generate(100), 100)
		s += "\n"
	}
	fmt.Println(s)

	pprof.Lookup("heap").WriteTo(f, 0)
}
